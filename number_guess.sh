#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

COUNT=0
NUMBER=$(( $RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

NAME=$($PSQL "select username from users where username='$USERNAME';")
echo $NAME

if [[ -z $NAME ]]
then
    SET_NEW_USERNAME=$($PSQL "insert into users(username) values('$USERNAME');")
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
else
    GUESSES_RESULTS=$($PSQL "select MIN(best_game), COUNT(best_game) from users inner join games using(user_id) where username='$NAME';")

    echo "$GUESSES_RESULTS" | while IFS="|" read BEST_GAME GAME_PLAYED
    do
        echo Welcome back, $NAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses.
    done
fi

echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

while (( $GUESS != $NUMBER ))
do
    (( COUNT++ ))

    if [[ ! $GUESS =~ ^[1-9]+ ]]
    then
        echo -e "\nThat is not an integer, guess again:"
        read GUESS
    elif (( $GUESS > $NUMBER ))
    then
        echo -e "\nIt's lower than that, guess again:"
        read GUESS
    elif (( $GUESS < $NUMBER ))
    then
        echo -e "\nIt's higher than that, guess again:"
        read GUESS
    fi
done

USERNAME_ID=$($PSQL "select user_id from users where username='$USERNAME';")
INSERT_GAME_RESULT=$($PSQL "insert into games(best_game, user_id) values($COUNT, $USERNAME_ID);")

echo -e "\nYou guessed it in $COUNT tries. The secret number was $NUMBER. Nice job!"
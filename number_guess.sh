#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

COUNT=0
NUMBER=$(( $RANDOM % 1000 + 1 ))
echo $NUMBER

echo "Enter your username:"
read USERNAME

USERNAME_ID=$($PSQL "select user_id from users where username='$USERNAME';")

if [[ -z $USERNAME_ID ]]
then
    SET_NEW_USERNAME=$($PSQL "insert into users(username) values('$USERNAME');")
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
    # get username, games_played(count) and best_game
    NAME=$($PSQL "select username from users where user_id=$USERNAME_ID;")
    GUESSES_RESULTS=$($PSQL "select MIN(best_game), COUNT(best_game) from users as u inner join games as g using(user_id) where u.user_id=$USERNAME_ID;")
    echo "$GUESSES_RESULTS" | while IFS="|" read BEST_GAME GAME_PLAYED
    do
        echo -e "\nWelcome back, $NAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
    done
fi

echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

until [[ $GUESS == $NUMBER ]]
do
    (( COUNT++ ))
    echo $COUNT

    if [[ ! $GUESS =~ ^[1-9]+$ ]]
    then
        echo -e "\nThat is not an integer, guess again:"
        read GUESS
    elif [[ $GUESS > $NUMBER ]]
    then
        echo -e "\nIt's lower than that, guess again:"
        read GUESS
    elif [[ $GUESS < $NUMBER ]]
    then
        echo -e "\nIt's higher than that, guess again:"
        read GUESS
    fi
done

echo -e "\nYou guessed it in $COUNT tries. The secret number was $NUMBER. Nice job!"

USERNAME_ID=$($PSQL "select user_id from users where username='$USERNAME';")
INSERT_GAME_RESULT=$($PSQL "insert into games(best_game, user_id) values($COUNT, $USERNAME_ID);")
#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

NUMBER=$(( $RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

USERNAME_ID=$($PSQL "select user_id from users where username='$USERNAME';")
echo $USERNAME_ID

# if [[ -z $USERNAME_ID ]]
# then
#     echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
# else
#     # get username, games_played(count) and best_game
#     GUESSES_RESULTS=$($PSQL "select u.username, MIN(g.best_game), COUNT(g.best_game) from users as u inner join games as g using(user_id) where u.user_id=$USERNAME_ID;")
#     echo "$GUESSES_RESULTS"
# fi
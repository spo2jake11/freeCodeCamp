#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate random number 1-1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Get username
echo "Enter your username:"
read USERNAME

# Look up user in DB
USER_DATA=$($PSQL "SELECT user_id, games_played, best_game FROM users WHERE username='$USERNAME'")

if [[ -z $USER_DATA ]]; then
  # New user
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  $PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', 0, 0)" > /dev/null
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  GAMES_PLAYED=0
  BEST_GAME=0
else
  # Returning user
  USER_ID=$(echo $USER_DATA | cut -d '|' -f 1)
  GAMES_PLAYED=$(echo $USER_DATA | cut -d '|' -f 2)
  BEST_GAME=$(echo $USER_DATA | cut -d '|' -f 3)
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Guessing loop
GUESSES=0
echo "Guess the secret number between 1 and 1000:"


while true; do
  read GUESS

  # Validate integer
  if ! [[ $GUESS =~ ^-?[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  (( GUESSES++ ))

  if [[ $GUESS -eq $SECRET_NUMBER ]]; then
    # Update DB
    NEW_GAMES=$(( GAMES_PLAYED + 1 ))
    if [[ $BEST_GAME -eq 0 || $GUESSES -lt $BEST_GAME ]]; then
      NEW_BEST=$GUESSES
    else
      NEW_BEST=$BEST_GAME
    fi
    $PSQL "UPDATE users SET games_played=$NEW_GAMES, best_game=$NEW_BEST WHERE user_id=$USER_ID" > /dev/null
    echo "You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    break
  elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done
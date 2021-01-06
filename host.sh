#!/bin/bash

if [ -z "$1" ]; then
  echo "Missed the auth token argument."
  exit 1
fi

./ngrok authtoken $1
./ngrok tcp -region sa 25565

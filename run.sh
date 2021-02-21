#!/bin/bash
shopt -s nocasematch
npm i
dotenv="VUE_APP_PORT=9000\n
VUE_APP_PROTOCOL=http://\n
VUE_APP_HOST=localhost"
if [ ! -f .env ]; then
    echo ".env not found, building default"
	printf "$dotenv" > .env
	sleep 1
fi
read -p "Development/Production mode (D,P):" mode
if [[ "$mode" = "D" ]]
then
	echo "Starting in development mode"
	npm run serve
elif [[ "$mode" = "P" ]]
then
	echo "Starting in production mode"
	npm run build
	npm install -g serve
	serve -s dist
else
	echo "Invalid input"
	sleep 2
fi

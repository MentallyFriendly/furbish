#!/bin/sh

GREEN='\033[0;32m'
BLUE='\033[1;34m'
ERR="\033[1;31m"
NC='\033[0m'

echo 
echo "${GREEN}Furbishing a Vue 2 project${NC}"
echo

if ! type "node" > /dev/null; then
    echo "${ERR}Node not found!" 1>&2
    echo "Please follow the install instructions at https://nodejs.org/en/ then try again${NC}" 1>&2
    exit
fi

if ! type yarn > /dev/null; then
    echo
    echo "${ERR}Yarn not found!" 1>&2
    echo "Please follow the install instructions at https://yarnpkg.com/en/docs/install then try again${NC}" 1>&2
    exit
fi

if ! type "vue" > /dev/null; then
    echo "${BLUE}Furbish:${NC} Installing Vue CLI"
    npm install -g vue-cli
fi

# TODO: Add customisation for template name
read -p "What would you like your app to be called? " appname

echo
echo "${BLUE}Furbish:${NC} Initialising Vue project using MF template"
echo

vue init MentallyFriendly/vue2-boilerplate $appname
cd ./$appname

echo
echo "${BLUE}Furbish:${NC} Installing initial dependencies with yarn"
echo
yarn install

echo 
echo "${GREEN}SUCCESS! Your project directory is fully furbished! ${NC}"
echo 
echo "${GREEN}Booting up dev server now...${NC}" 
echo 

# Start dev server
yarn start

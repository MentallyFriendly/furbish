#!/bin/sh

URL='https://raw.githubusercontent.com/MentallyFriendly/furbish/master/scripts'
DEFAULT_OPTION="1"
GREEN='\033[0;32m'
BLUE='\033[1;34m'
NC='\033[0m'

echo "${GREEN}"
echo "┌─┐┬ ┬┬─┐┌┐ ┬┌─┐┬ ┬"
echo "├┤ │ │├┬┘├┴┐│└─┐├─┤"
echo "└  └─┘┴└─└─┘┴└─┘┴ ┴"
echo "🚧 RENOVATE YOUR PROJECT DIRECTORY"
echo 
echo "${BLUE}1.${NC} Set up a Polymer 3 project"
echo "${BLUE}2.${NC} Set up a Vue 2 project"
echo "${BLUE}3.${NC} Credits & special thanks"
echo 
echo "What would you like to do? ($DEFAULT_OPTION): \c"
read ACTION
[ -z "$ACTION" ] && ACTION=$DEFAULT_OPTION

if [ "$ACTION" == "1" ]; then
    /bin/sh -c "$(curl -fsSL ${URL}/polymer3.sh)"
elif [ "$ACTION" == "2" ]; then
    /bin/sh -c "$(curl -fsSL ${URL}/vue2.sh)"
elif [ "$ACTION" == "3" ]; then
    echo 
    echo "${GREEN}Thanks to the people and organisations who made this possible"
    echo 
    echo "${BLUE}Project Lead${NC}"
    echo "Liam Fiddler @liamfiddler"
    echo 
    echo "${BLUE}Contributors & Colleagues${NC}"
    echo "Mentally Friendly @mf_says"
    echo "Thom Vincent @thomvincent"
    echo "Bill Searle @searleb"
    echo "Ronnie Pyne @perverse"
fi

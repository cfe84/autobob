#!/bin/bash

cd `dirname $0`

echo -ne "Which book?\n1- Clean Code\n2- The Clean Coder\nOther- Type\n> "
read BOOK

if [ "$BOOK" == "1" ]; then
  BOOK="Clean Code"
fi

if [ "$BOOK" == "2" ]; then
  BOOK="The Clean Coder"
fi

echo -ne "What is the title\n> "
read TITLE

echo -ne "Which page?\n> "
read PAGE

./bobify.sh "$BOOK" "$TITLE" "Page $PAGE" > /dev/null

MESSAGE=`pbpaste`
printf "%s" "$MESSAGE"

echo -ne "\n\nSend to channel:\n1- #dev\n2- #dev-guild\n3- @charles\nOther: type\n> "
read CHANNEL

if [ "$CHANNEL" == "1" ]; then
  CHANNEL="dev"
fi

if [ "$CHANNEL" == "2" ]; then
  CHANNEL="dev-guild"
fi

if [ "$CHANNEL" == "3" ]; then
  CHANNEL="@charles"
fi

echo "Sending to $CHANNEL..."
URL="https://$SLACK_HOSTNAME/services/hooks/slackbot?token=$SLACK_SLACKBOTTOKEN&channel=$CHANNEL"
curl --data "$MESSAGE" "$URL"

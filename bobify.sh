#!/bin/bash

commentify () {
  while read line
  do
    echo -n "> $line\n"
  done
}

COMMENTED=`pbpaste | commentify`

BOOK=$1
TITLE=$2
PAGE=$3

FORMATED="Behold, the word of Bob\n\n*$TITLE*\n\n$COMMENTED\n\n_Martin, Uncle Bob - $BOOK, $PAGE _\n\n*Glory to you, O Bob!*"

echo -e $FORMATED | pbcopy
echo "Done"

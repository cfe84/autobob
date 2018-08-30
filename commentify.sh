#!/bin/bash


commentify () {
  while read line
  do
    echo "> $line"
  done
}

pbpaste | commentify | pbcopy
echo "Done"

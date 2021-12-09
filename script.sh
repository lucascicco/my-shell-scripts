#!bin/bash

DIR=$1
FILE=$2

if [ -d "$DIR" ] && [ -f "$FILE"]; then
  # Take action if $DIR exists. #
  echo "Installing config files in ${DIR}..."
else
  echo "The given folder or file: ${DIR} or ${FILE}, does not exist."
fi


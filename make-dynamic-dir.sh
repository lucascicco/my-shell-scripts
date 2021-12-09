#!bin/bash

ROOT_DIR=$1
FILENAME=$2

if [ -d "${ROOT_DIR}" ]; then
  echo "Initializing the script..."
  sleep 3
  while IFS=: read -r line; do
    echo "line: ${line}"
    # TODO: Improve the two lines below (lowercase and replaces ' ' with '-')
    LWC=$(echo "$line" | sed -e 's/\(.*\)/\L\1/')
    DIRNAME=$(echo "${LWC}" | tr -s ' ' | tr ' ' '-')
    DIR="${ROOT_DIR}/${DIRNAME}"
    mkdir $DIR
    echo "# ${line}" >> "${DIR}/README.md"
  done < $FILENAME
  sleep 2
  echo "...done" 
else
  echo "The given folder or file: ${DIR} or ${FILE} does not exist."
fi


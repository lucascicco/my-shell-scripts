#!/bin/bash

for x in *; do
  if [ -d "$x" ]; then
    lc=${x,,}            # convert all letters to lowercase
    y=${lc// /-}         # replace spaces by hyphens
    echo "$x $y"
    if [ "$x" != "$y" ]; then
      mv "$x" "$y"
    fi
  fi
done

exit 1

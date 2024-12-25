#!/bin/bash

# Elegxw an dinetai input ekswterika
if [ -z "$1" ]; then
  echo "Usage: $0 <4-digit-integer>"
  exit 1
fi

# PAirnw ton 4-psifio san orisma eswterika
input=$1

# Hash the input using SHA-256
hash=$(echo -n "$input" | sha256sum | awk '{print $1}')

# Output the hash
echo "The SHA-256 hash of $input is: $hash"

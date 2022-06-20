#!/bin/bash
# Usage: ./sed_solution.sh "latest" "commitId" ./example.txt
# Define vars
STR_TO_REPLACE_INPUT=$1
STR_TO_REPLACE="${STR_TO_REPLACE_INPUT:-latest}"

STR_NEW_INPUT=$2
STR_NEW="${STR_NEW_INPUT:-latest}"

FILE_INPUT=$3
FILE="${FILE_INPUT:-./test.txt}"

# Verify that the file exists
if [ ! -f "$FILE" ]; then
    echo "The file specified doesn't exists..."
else
    echo " - - - - - - - - - - - - "
    echo "Initial file: [${FILE}]"
    echo "OLD string: [${STR_TO_REPLACE}]"
    echo "NEW string: [${STR_NEW}]"
    echo " - - - - - - - - - - - - "
    cat ${FILE}
    echo " - - - - - - - - - - - - "

   if [[ ${STR_TO_REPLACE} != "" && ${STR_NEW} != "" ]]; then
       sed -i "s/${STR_TO_REPLACE}/${STR_NEW}/g" "$FILE"
   fi
    echo "Result file: [${FILE}]"
    echo " - - - - - - - - - - - - "
    cat ${FILE}
fi

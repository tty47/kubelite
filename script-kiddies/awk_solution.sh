#!/bin/bash
# Usage: ./awk_solution.sh "latest" "commitId" ./example.txt
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
    # Source: https://www.codegrepper.com/code-examples/whatever/awk+replace+string+in+file+with+variable
       awk -v cuv1="$STR_TO_REPLACE" -v cuv2="$STR_NEW" '{gsub(cuv1,cuv2); print;}' "$FILE" > "$FILE".replaced
   fi
    echo "Result file: [${FILE}.replaced]"
    echo " - - - - - - - - - - - - "
    cat ${FILE}.replaced
fi

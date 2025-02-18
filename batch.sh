#@format
#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset


###################################################
# extract ocr from all pdfs in /pdf/ and put /ocr/ 
###################################################

cd pdf
for file in *.pdf
    do pdftotext "$file" "../ocr/$file.txt"
done 

echo "ocr exported as text to ./ocr/"

##############################################
# search ocr output for keywords from wordlist
##############################################

cd ..
grep -o -i -r -f wordlist.txt ocr/ > searchresults.txt

#sort this file according to keywords
# this sets ":" as field delimiter and chooses the second field(the keywords) to sort by 
# the results are piped through uniq which strips redundant lines
# this leaves unique filenames grouped by Keywords

sort -t: +1 searchresults.txt | uniq > searchresults_processed.txt

#remove the dirname prefix leaving filenames grouped by keyword

sed -e "s/ocr\/\///g" -i .backup searchresults_processed.txt

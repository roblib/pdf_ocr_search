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

echo -e "ocr exported as text to ./ocr/"

##############################################
# search ocr output for keywords from wordlist
##############################################

grep -o -c -i -r -f wordlist.txt ocr/ >> searchresults.txt

#sort this file according to keywords and remove duplicates?
sort -t: +1 searchresults.txt >> searchresults_processed.txt


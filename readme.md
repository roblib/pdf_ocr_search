notes:

(from https://diging.atlassian.net/wiki/spaces/DCH/pages/5275668/Tutorial+Text+Extraction+and+OCR+with+Tesseract+and+ImageMagick)
"
To extract embedded text from a PDF, we can use an application called pdftotext (part of the Xpdf package). From the terminal, execute the following command:

Extract Embedded Text using pdftotext
$ pdftotext /path/to/my/document.pdf myoutputfile.txt
This will create a new file called "myoutputfile.txt" in your current working directory. If you open it, you should see the text that pdftotext was able to extract from your PDF document. Remember, this is not OCR: we're just extracting text that is already embedded in the PDF file.
"

-installed xpdf via homebrew
(
 This formula is keg-only, which means it was not symlinked into /usr/local,
 because Qt 5 has CMake issues when linked.

 If you need to have this software first in your PATH run:
 echo 'export PATH="/usr/local/opt/qt/bin:$PATH"' >> ~/.zshrc

 For compilers to find this software you may need to set:
 LDFLAGS:  -L/usr/local/opt/qt/lib
 CPPFLAGS: -I/usr/local/opt/qt/include
 For pkg-config to find this software you may need to set:
 PKG_CONFIG_PATH: /usr/local/opt/qt/lib/pkgconfig
 )

==================
 Pdf extraction
==================
-bash script that runs 'pdftotext' on all files
- some thing like this : 
for file in /dir/*
do
  cmd [option] "$file" >> results.out
done

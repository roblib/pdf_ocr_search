notes:



To extract embedded text from a PDF, we can use an application called pdftotext (part of the Xpdf package). From the terminal, execute the following command:

Extract Embedded Text using pdftotext
$ pdftotext /path/to/my/document.pdf myoutputfile.txt
This will create a new file called "myoutputfile.txt" in your current working directory. If you open it, you should see the text that pdftotext was able to extract from your PDF document. Remember, this is not OCR: we're just extracting text that is already embedded in the PDF file.


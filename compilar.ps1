$NOMBRE_PDF = Get-Content .\nombre_archivo.txt
typst compile main.typ "$NOMBRE_PDF.pdf"
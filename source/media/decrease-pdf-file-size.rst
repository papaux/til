Decrease PDF file size
-----------------------

This command reduces the file size of a PDF document, using the ghostscript ``gs`` command.

The base command is the following:

::

    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

The parameter ``-dPDFSETTINGS`` can be changed to other values, depending on the desired output quality:

* ``-dPDFSETTINGS=/screen`` lower quality, smaller size.
* ``-dPDFSETTINGS=/ebook`` for better quality, but slightly larger pdfs.
* ``-dPDFSETTINGS=/prepress`` output similar to Acrobat Distiller "Prepress Optimized" setting
* ``-dPDFSETTINGS=/printer`` selects output similar to the Acrobat Distiller "Print Optimized" setting
* ``-dPDFSETTINGS=/default`` selects output intended to be useful across a wide variety of uses, possibly at the expense of a larger output file


Image conversion
-----------------

This page contains all kind of image conversion commands.

The first tool we cover is ``convert``, member of the *ImageMagick* tool suite.

    *convert - convert between image formats as well as resize an image, blur, crop, despeckle, dither, draw on, flip, join, re-sample, and much more.*

Multiple JPG into a single PDF

::

    convert `ls -v *.JPG` foobar.pdf

If you get an error message complaining about security, edit the file ``/etc/ImageMagick-7/policy.xml`` and add this line before ``</policymap>``

::

    <policy domain="coder" rights="read | write" pattern="PDF" />

To Greyscale

::

    convert source.jpg -colorspace Gray grayscale.jpg

To monochrome

::

    convert source.jpg -monochrome monochrome.jpg

Seperate into channels

::

    convert source.jpg -separate channels.jpg

Resize to max width

::

    convert source.jpg -resize 1300 resize1300.jpg

Resize, change to grayscale and convert to pdf

::

    convert source.jpg -monochrome -resize 1300 converted.pdf

Create PDF from multiple images

::

   convert *.jpg output.pdf

Reduce size of pdf file

::

    convert -density 200x200 -quality 60 -compress jpeg input.pdf output.pdf

Reduce the size of all images in all subfolders to max 1024x1024, handling spaces

::

    find . -name "*.jpg" -print0 | xargs -0  -n 1 sh -c 'convert -resize 1024x1024 "$0" "$0"'
   
PDF
~~~

Reduce size of pdf file

::

    convert -density 200x200 -quality 60 -compress jpeg input.pdf output.pdf

Merge multiple pdf into one file

::

    pdfunite *.pdf invitation_famille.pdf

Splite one multi-pages file into multiple single pages file

::

    pdfseparate scan0012.pdf scan0012_%d.pdf

Multiple pages per sheet (here 2 pages per sheet, output in input-nup.pdf

::

    pdfnup --nup 2x1 input.pdf

Rotate PDF file

::

    # clockwise
    pdftk input.pdf cat 1-endeast output output.pdf
    
    # anti-clockwise
    pdftk input.pdf cat 1-endwest output output.pdf

    # 180°
    pdftk input.pdf cat 1-endsouth output output.pdf


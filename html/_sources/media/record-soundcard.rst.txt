Record from Soundcard
======================

Find the audio source using the name and description, using the Source #ID - 1::

    pactl list sources

Then record using the ID, for example if our source is ``Source #7``::

     parec -d4 --file-format=wav output.wav

Then convert to mp3::

    ffmpeg -i output.wav -vn -ar 44100 -ac 2 -b:a 192k "output.mp3"

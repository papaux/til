ffmpeg
------

`ffmpeg` command usage example.

Rotate
~~~~~~

**Rotate video 90° clockwise**::

  ffmpeg -i input.mp4 -vf "transpose=1" output.mp4

**Rotate video 270° clockwise**::

  ffmpeg -i input.mp4 -vf "transpose=3" output.mp4

Convert
~~~~~~~

**Convert to 24fps**::

  ffmpeg -i input.mp4  -filter:v fps=fps=24 output.mp4

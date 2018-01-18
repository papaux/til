Yaourt: noconfirm
------------------

When updating packages, ``yaourt`` always ask many "are you sure ?" questions by default, which makes the update process requriing a lot of interactions.

The solution to let ``yaourt`` download, compile and install the packages without any prompt is the ``--noconfirm`` option.

::
  
  yaourt -Syua --noconfirm

  

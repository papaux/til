Recursive md5
--------------

This simple command can be used to dump the MD5 hashes of a whole directory structure.

::

    find . -type f -print0 | xargs -0 md5sum > /tmp/checkusm.md5 
      

This results in a file with this structure:

::

    3a59c3d4bcfcc53e054106f561e1d4d3  ./check-abi-arch.sh 
    9a967b2dda9ae01c9bd9a0c6b9620f8f  ./debug_bluetooth/working_nmcli_dev.txt                                                                                        
    ad776494897d7eaf80957a83502af678  ./debug_bluetooth/working_journalctl.txt                                                                                                          
    dd25bdd21d278e80fcb3d68e71313404  ./debug_bluetooth/working_rfkill_list.txt        

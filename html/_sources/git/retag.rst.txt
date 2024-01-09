Re-tag
-------

This is something that we should never be doing. But life isn't perfect, isn't it ?

::
    
    # Delete locally
    $ git tag -d v1.0.0

    # Push tag deletion to remote
    $ git push origin :refs/tags/v1.0.0

    # Create new tag
    $ git tag v1.0.0

    # Push new tag to remote
    $ git push origin v1.0.0

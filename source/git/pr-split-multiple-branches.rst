PR Splitting Flow
------------------

Split a big PR / branch in multiple smaller chunks.

1. Get the common ancestor

    ```sh
    BASE=$(git merge-base origin/develop HEAD)
    ```

2. Get a patch with all changes

    ```sh
    git format-patch --stdout $BASE..HEAD > my-feature.patch
    ```

3. Create a new empty branch based off the BASE

    ```sh
    gco -b my-feature-a $BASE
    ```

4. Apply the patch, leaving working tree uncommitted

    ```sh
    git apply --index my-feature.patch
    git reset
    ```

5. Stage whatever you want with your IDE or interactively add

    ```sh
    git add -p
    ```

6. Commit

    ```sh
    git commit -m "Topic A: ..."
    ````
# Git grep in logs

If you want to look for a specific pattern in the files in your repository, you can use the git grep command, with several options depending on your needs.

1. The standard grep command ignoring case, listing all files:

  ```
  git grep -i http
  ```

2. Just get the file names list:

  ```
  git grep -l http
  ```

3. Get the same output as 1. but with line numbers

  ```
  $ git grep -in http
  ```
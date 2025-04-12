Multi-line in Bash
------------------

This TIL shows how to handle multi line strings in bash scripts.

To file
~~~~~~~

Write multiple lines into a file::

  cat <<EOF > file.txt 
  echo \$PWD
  echo $PWD
  EOF

The file then contains::

  echo $PWD
  echo /home/user

Without variable substitution::

  cat <<'EOF' > file.txt 
  echo $PWD
  'EOF'

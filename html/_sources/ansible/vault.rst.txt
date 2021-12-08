Ansible Vault
-------------

String encrypt
~~~~~~~~~~~~~~

Encrypt string values to be embedded directly in the plain text var file.

Encrypt with a password specific for a vault id, asking for the value in stdin::

  ansible-vault encrypt_string --stdin-name 'new_user_password'

.. warning::

   Do not press Enter after supplying the string. That will add a newline to the encrypted value.

Read the value back from a file vars.yml::

  ansible localhost -m debug -a var="new_user_password" -e "@vars.yml" --ask-vault-pass

Encrypt the content of a file as variable::

  cat file | ansible-vault encrypt_string

Alternative solution to encrypt the content of a file, encoded as base64 (useful for binary content)::

  ansible-vault encrypt_string '$(base64 somesecret.bin)' --name  secret
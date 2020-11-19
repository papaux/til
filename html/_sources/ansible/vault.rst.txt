Ansible Vault
-------------

String encrypt
~~~~~~~~~~~~~~

Encrypt string values to be embedded directly in the plain text var file.

Encrypt with a password specific for a vault id, asking for the value in stdin::

  ansible-vault encrypt_string --vault-id dev@a_password_file --stdin-name 'new_user_password'

.. warning::

   Do not press Enter after supplying the string. That will add a newline to the encrypted value.

Read the value back::

  ansible localhost -m debug -a var="new_user_password" -e "@vars.yml" --ask-vault-pass

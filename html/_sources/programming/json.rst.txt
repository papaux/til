json
-----

Everything that might be interesting about JSON.

**Validation**

Python::

  python -m json.tool somefile.json
  # or
  echo '{ "field": "value" }' | python -m json.tool

**Formatting**

Python::

  python -m json.tool --sort-keys --json-lines < data.jsonl

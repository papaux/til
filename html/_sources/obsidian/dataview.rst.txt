Dataview
---------

Usage Examples
~~~~~~~~~~~~~~

Show a table with files containing certain tags::

  TABLE L.text AS "My lists"
  FROM #mytag
  FLATTEN file.lists AS L
  WHERE contains(L.tags, "#mytag")

Show a list with files containing certain tags::

  LIST L.text
  FROM #mytag
  FLATTEN file.lists AS L
  WHERE contains(L.tags, "#mytag")

Show a list with files containing certain tags, grouped by name::

  LIST rows.bullets.text
  FROM #mytag
  FLATTEN file.lists as bullets
  WHERE contains(bullets.text, "a" )
  AND contains(bullets.tags, "#mytag")
  SORT file.name desc
  GROUP BY file.name

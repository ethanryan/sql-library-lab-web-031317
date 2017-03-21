--updates the species of the last character in the characters table to "Martian"

UPDATE characters
SET species = 'Martian'
WHERE id = (SELECT MAX(id) FROM characters);

--WHERE id = LAST(column_name) FROM table_name; ----couldn't get this to work.

SELECT CCSA.character_set_name FROM information_schema.`TABLES` T,
       information_schema.`COLLATION_CHARACTER_SET_APPLICABILITY` CCSA
WHERE CCSA.collation_name = T.table_collation
AND T.table_schema = "database"
AND T.table_name = "table";

SELECT character_set_name FROM information_schema.`COLUMNS` C
WHERE table_schema = "database"
AND table_name = "table"
AND column_name = "column";

SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, character_set_name, COLLATION_NAME
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE table_name = "table"

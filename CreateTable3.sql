BEGIN
  EXECUTE IMMEDIATE 'CREATE TABLE TABLE3 (COLUMN1 VARCHAR2(20 BYTE), COLUMN2 VARCHAR2(20 BYTE), COLUMN3 VARCHAR2(20 BYTE))';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -955 THEN
      RAISE;
    END IF;
END;

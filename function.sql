--changeset subhajitsaha:1588069289387-8

CREATE OR REPLACE FUNCTION get_tab1_count RETURN NUMBER AS
  l_count  NUMBER;
BEGIN
  SELECT COUNT(*)
  INTO   l_count
  FROM   tab2;

  RETURN l_count;
END;
/

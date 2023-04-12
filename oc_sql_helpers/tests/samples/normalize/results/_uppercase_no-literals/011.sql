CREATE OR REPLACE PACKAGE BODY TEST_SCHEME.TEST_PACKAGE_BODY IS
BEGIN
    FUNCTION TEST_FUNCTION(
        TEST_CHAR IN VARCHAR2(400 CHAR),
        TEST_NUM IN INTEGER(10))
    RETURN INTEGER(10) IS
        TEST_ADD VARCHAR2(400) := q'""';
    BEGIN
        RETURN LENGTH(TEST_ADD || q'()' || TEST_CHAR || '' || TO_CHAR(TEST_NUM) || '');
    END;
END;


/
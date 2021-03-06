CREATE TABLE TS18_01.SUPPLIERS
(
SUPPLIER_ID NUMBER(10),
SUPPLIER_NAME VARCHAR2(20),
SUPPLIER_ADDRESS VARCHAR2(20)
);

CREATE TABLE TS18_01.SUPPLIERS1
(
SUPPLIER_ID1 NUMBER(10),
SUPPLIER_NAME1 VARCHAR2(20),
SUPPLIER_ADDRESS1 VARCHAR2(20));

CREATE OR REPLACE PROCEDURE TS18_01.INSERT_SUPP1 (
    S_ID     SUPPLIERS1.SUPPLIER_ID1%TYPE,
    S_NAME   SUPPLIERS1.SUPPLIER_NAME1%TYPE,
    S_ADD    SUPPLIERS1.SUPPLIER_ADDRESS1%TYPE
)
    IS
BEGIN
    INSERT INTO TS18_01.SUPPLIERS (
        SUPPLIER_ID,
        SUPPLIER_NAME,
        SUPPLIER_ADDRESS
    )
        SELECT
            S_ID,
            S_NAME,
            S_ADD
        FROM
            TS18_01.SUPPLIERS1;

END;
/
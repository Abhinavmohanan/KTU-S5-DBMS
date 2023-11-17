CREATE OR REPLACE TRIGGER updates
BEFORE
INSERT OR UPDATE OF salary OR DELETE 
ON employee
FOR EACH ROW
BEGIN
	CASE
	WHEN INSERTING THEN 
		DBMS_OUTPUT.PUT_LINE('Added new employee : '|| :NEW.name);
    WHEN UPDATING('salary') THEN
        DBMS_OUTPUT.PUT_LINE('Updating salary of '|| :OLD.name || ' from ' || :OLD.salary || ' to ' || :NEW.salary);
	WHEN DELETING THEN
		DBMS_OUTPUT.PUT_LINE('Deleting employee');
	END CASE;
END;
/

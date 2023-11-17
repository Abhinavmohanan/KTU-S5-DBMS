BEGIN
	UPDATE employee SET salary=50000 WHERE id=10;
	IF SQL%FOUND THEN
        dbms_output.put_line('Salary Updated');
	ELSIF SQL%NOTFOUND THEN
        dbms_output.put_line('Employee not found');
	END IF;
END;
/
	

DECLARE
    id employee.id%type;
	name employee.name%type;
	salary employee.salary%type;
	CURSOR curr_employee IS
	SELECT id,name,salary FROM
	employee;
BEGIN
	OPEN curr_employee;
	dbms_output.put_line('Employee Salary Details :');
	LOOP
		FETCH curr_employee INTO id,name,salary;
		EXIT WHEN curr_employee%notfound;

		dbms_output.put_line(id || '.' || ' ' || name || ' has a salary of '|| salary);
	END LOOP;
END;
/
	

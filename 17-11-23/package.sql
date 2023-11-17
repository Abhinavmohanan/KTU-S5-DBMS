CREATE PACKAGE emp_pckg AS 
   PROCEDURE find_sal(e_id employee.id%type); 
   PROCEDURE insert_emp(e_id employee.id%type,e_name employee.name%type,e_salary employee.salary%type);
END emp_pckg; 
/

CREATE OR REPLACE PACKAGE BODY emp_pckg AS  
   
   PROCEDURE find_sal(e_id employee.id%TYPE) IS 
   e_sal employee.salary%TYPE;
   e_name employee.name%type;
   BEGIN 
      SELECT salary,name INTO e_sal,e_name
      FROM employee 
      WHERE id = e_id;  
      dbms_output.put_line('Salary of '||  e_name || ' is ' || e_sal); 
   END find_sal; 

   PROCEDURE insert_emp(e_id employee.id%type,e_name employee.name%type,e_salary employee.salary%type) IS 
   BEGIN 
      INSERT INTO employee VALUES(e_id,e_name,e_salary);
   END insert_emp; 

END emp_pckg; 
/


BEGIN
	emp_pckg.insert_emp(3,'Adithyan',50000);
	emp_pckg.find_sal(1);
END;
/

declare
x integer := 1;
begin
	 dbms_output.put_line('First 10 natural numbers');
	 loop
	 	dbms_output.put_line(x);
	 	x := x+1;
	 	exit when x >= 10;
	 end loop;
end;
/

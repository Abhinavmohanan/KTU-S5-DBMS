declare
x number(2) := 0;
begin
	 dbms_output.put_line('Even numbers between 0 and 50');
	 while x < 50 loop
	 	dbms_output.put_line('x	is ' || x);
	 	x := x + 2;
	 end loop;
end;
/

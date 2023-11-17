declare
x number(2);
begin
	 for x in 10 .. 30 loop
	 	dbms_output.put_line('x	is ' || x);
	 end loop;
end;
/

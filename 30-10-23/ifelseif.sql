declare
	sales integer := 80;
begin
	if sales > 100 then
		dbms_output.put_line('Sales greater than 100');
	else if sales > 50 then
		dbms_output.put_line('Sales greater than 50 but less than 100');
	else
		dbms_output.put_line('Low sales');
	end if;
end;
/

accept sales integer prompt "Enter sales : "; 
declare
	sales integer := 200;
begin
	if sales > 100 then
		dbms_output.put_line('Sales greater than 100');
	else
		dbms_output.put_line('Low Sales');
	end if;
end;
/

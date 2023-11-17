declare
sales integer := 50;
begin
	case sales
		when 200 then dbms_output.put_line('200 Sales');
		when 100 then dbms_output.put_line('100 Sales');
		when 100 then dbms_output.put_line('50 Sales');
		else dbms_output.put_line('No Sales');
	end case;
end;
/

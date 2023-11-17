    DECLARE
        a number;
		b number;
		c number;
    FUNCTION findmin (x IN number,y IN number) RETURN number
    IS 
        z number;
    BEGIN
    	IF x > y THEN
    		z := y;
		ELSE
            z := x;
		END IF;
		RETURN z;
    END findmin;
	BEGIN
        a := 20;
		b := 10;
		c := findmin(a,b);
		dbms_output.put_line('Smallest number is : ' || c);
    END;
/

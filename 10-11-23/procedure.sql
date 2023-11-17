    DECLARE
        a number;
		b number;
		c number;
    PROCEDURE findmin (x IN number,y IN number,z OUT number)
    IS 
    BEGIN
    	IF x > y THEN
    		z := y;
		ELSE
            z := x;
		END IF;
    END findmin;
	BEGIN
        a := 20;
		b := 10;
		findmin(a,b,c);
		dbms_output.put_line('Smallest number is : ' || c);
    END;
/

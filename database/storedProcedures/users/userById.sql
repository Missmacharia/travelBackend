create or replace procedure userById (
	userid varchar(100)
)

language plpgsql

as 

$$

begin 

select * from users where userid = userid;

end;

$$


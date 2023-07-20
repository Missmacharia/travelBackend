create or replace procedure searchUser (
	email varchar(100)
)

language plpgsql

as 

$$

begin 

select * from users where email like  '%email';

end;

$$


create or replace procedure updateUser (
	userid varchar(100),
	username varchar(100),
	password varchar(100)
)

language plpgsql

as 

$$

begin 

update users set userid = userid where username = username or password = password;

end;

$$


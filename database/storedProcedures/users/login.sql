create or replace procedure login (
	userid varchar(100),
	email varchar (100),
	password varchar (100)
)

language plpgsql

as 

$$

begin 

insert into users (userid, email,password)
values (userid, email,password);

end;

$$


create or replace procedure signup (
	userid varchar(100),
	username varchar (100),
	email varchar (100),
	gender varchar (100),
	age int,
	password varchar (100)
)

language plpgsql

as 

$$

begin 

insert into users (userid, username, email, gender, age ,password)
values (userid, username, email, gender, age, password);

end;

$$


create or replace procedure deleteUser (
	userid varchar(100)
)

language plpgsql

as 

$$

begin 

delete * from users where userid = userid;

end;

$$

create or replace procedure deleteUser (
	userid varchar(100)
)

language plpgsql

as 

$$

begin 

delete from users where userid = userid;

end;

$$


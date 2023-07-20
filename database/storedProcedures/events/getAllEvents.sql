create or replace procedure getAllEvents (
	eventid varchar (100),
	userid varchar(100),
	ticketid varchar(100),
	eventname varchar(100),
	eventtype varchar (100),
	location varchar (100)
)

language plpgsql

as 

$$

begin

select * from events;

end;

$$


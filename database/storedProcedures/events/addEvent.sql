create or replace procedure addEvents (
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

insert into tickets (eventid, userid, ticketid, eventname, eventtype, location)
values (eventid, userid, ticketid, eventname, eventtype, location);

end;

$$


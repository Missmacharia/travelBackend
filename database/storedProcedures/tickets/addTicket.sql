create or replace procedure addTicket (
	userid varchar (100),
	ticketid varchar(100),
	placename varchar(100),
	hostels varchar(100),
	resturants varchar (100),
	markets varchar (100)
)

language plpgsql

as 

$$

begin

insert into tickets (userid, ticketid,placename,hostels, resturants, markets)
values (userid, ticketid,placename,hostels, resturants, markets);

end;

$$
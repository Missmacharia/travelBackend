create or replace procedure updateTicket (
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

update tickets set ticketid = ticketid where placename = placename or 
hostels = hostels or resturants = resturants or markets= markets;

end;

$$


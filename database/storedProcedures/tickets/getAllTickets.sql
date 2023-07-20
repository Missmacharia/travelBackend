create or replace procedure getAllTickets (
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

select * from tickets;

end;

$$
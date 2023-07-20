create or replace procedure searchPayment (
	userid varchar (100),
	ticketid varchar(100),
	paymentid varchar(100),
	amount int,
	method varchar (100)
)

language plpgsql

as 

$$

begin

select * from payments where paymentid like '%paymentid%';

end;

$$


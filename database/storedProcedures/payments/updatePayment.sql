create or replace procedure updatePayment (
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

update payments set paymentid = paymentid where amount = amount or 
method = method ;

end;

$$


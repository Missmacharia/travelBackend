create or replace procedure deletePayment (
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

delete from payments where paymentid = paymentid;

end;

$$

drop procedure searchPayment;


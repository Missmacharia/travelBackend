create table payments (
	paymentid varchar (100) primary key not null,
	userid varchar(100) not null,
	ticketid varchar (100) not null,
	amount int,
	method varchar(100),	
	foreign key (ticketid)
	references tickets(ticketid),
	foreign key (userid)
	references users(userid)
);



select * from payments;



insert into payments (paymentid, userid, ticketid, amount, method)
 values('payment001', 'user0001','ticket001', 10000, 'test method');
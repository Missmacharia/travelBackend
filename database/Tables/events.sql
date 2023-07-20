create table events (
	eventid varchar (100) primary key not null,
	userid varchar(100) not null,
	ticketid varchar (100) not null,
	eventname varchar(100) not null,
	eventtype varchar (100) not null,
	location varchar (100) not null,
	foreign key (ticketid)
	references tickets(ticketid),
	foreign key (userid)
	references users(userid)
);

select * from events;



insert into events (eventid, userid, ticketid, eventname, eventtype, location)
 values('event001', 'user0001','ticket001','test event', 'test type', 'test location');
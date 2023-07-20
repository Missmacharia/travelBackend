create table tickets (
	userid varchar(100) not null,
	ticketid varchar (100) primary key not null,
	placename varchar (100) not null,
	hostels varchar (100) not null,
	resturants varchar (100) not null,
	markets varchar(100) not null,
	foreign key(userid)
	references users(userid)
);

insert into tickets (userid, ticketid, placename, hostels, resturants, markets)
values('user0001','ticket001', 'test', 'test hostel', 'test resturant', 'test market');
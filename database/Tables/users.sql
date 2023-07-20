create table users (
	userid varchar (100) primary key not null,
	username varchar (100) not null,
	email varchar (100) unique not null,
	gender varchar (100) not null,
	age int not null
);





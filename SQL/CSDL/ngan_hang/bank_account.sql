create database bank_account;

create table customer(
	id int primary key auto_increment,
    name varchar(255)
);

create table account(
	id int primary key auto_increment,
    balance double,
    id_customer int,
    foreign key (id_customer) references customer(id)
);
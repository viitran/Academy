create database school;

create table teacher(
	id int primary key auto_increment,
    name varchar(255)
);

create table students(
	id int primary key auto_increment,
    name varchar(255),
    id_teacher int,
    foreign key(id_teacher) references teacher(id)
);
create database if not exists RealEstate;

use RealEstate;

create table Owner(Owner_ID int AUTO_INCREMENT, Owner_name varchar(30), Owner_add varchar(100), Owner_phone varchar(10), Owner_email varchar(100),PRIMARY KEY(Owner_ID));

create table Client(Client_ID int AUTO_INCREMENT, Client_name varchar(30), Client_add varchar(100), Client_phone varchar(100), Client_email varchar(100), PRIMARY KEY(Client_ID));

create table Feedback(name varchar(80),contact varchar(10), email varchar(100), comment varchar(300));
 
create table login(uname varchar(15), pwd varchar(20));
 
create table property(Property_ID int AUTO_INCREMENT, Property_Name varchar(100), Property_add varchar(100), TYPE enum('Industrial','Commercial','Land','flat'),Property_Price int,SQUARE_FEET varchar(100), DETAILS varchar(250), image varchar(80), PRIMARY KEY(Property_ID));

alter table login add role enum('client','owner','agent') default 'client';

alter table property drop column image;

alter table property add column image mediumblob;
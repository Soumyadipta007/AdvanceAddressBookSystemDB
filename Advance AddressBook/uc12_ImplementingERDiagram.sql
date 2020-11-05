create table AddressTable
(
addressID int  not null primary key,
address varchar(200) not null,
city varchar(25) not null,
state varchar(25) not null,
zip int not null
)
insert into AddressTable values
(101,'Kolkata123','Kolkata','West Bengal',729),
(102,'Kolkata123','Kolkata','West Bengal',727),
(103,'Berhampore123','Berhampore','West Bengal',123),
(104,'Mumbai123','Mumbai','Maharashtra',687),
(105,'Kolkata123','Kolkata','West Bengal',345),
(106,'Delhi123','Delhi','Haryana',789)
select * from AddressTable
create table ContactType
(
typeID int  not null primary key,
typeName varchar(20) not null
)
insert into ContactType values
(201,'Family'),
(202,'Friend'),
(203,'Self')
select * from ContactType
create table contact
(
contactID int  not null primary key,
addressID int  not null,
firstName varchar(25) not null,
lastName varchar(25) not null,
phoneNumber bigint not null,
email varchar(100) not null,
contact_name varchar(20) not null,
FOREIGN KEY(addressID) REFERENCES AddressTable(addressID),
)
insert into contact values
(1,101,'Pranoy','Pal',76788,'pranoy@gmail.com','PranoyBhp'),
(2,102,'Abhro','G',76688,'abh@gmail.com','AbhBhp'),
(3,103,'Tandra','Banerjee',77777,'tandra@gmail.com','Mom'),
(4,103,'Pradipta','Banerjee',78888,'pradip@gmail.com','Father'),
(5,103,'Soumya','Banerjee',99999,'abc@gmail.com','SelfContact')
select * from contact
create table Contact_ContactType_Mapping
(
MapID int  not null primary key,
contactID int  not null,
typeID int  not null,
FOREIGN KEY(contactID) REFERENCES Contact(contactID),
FOREIGN KEY(typeID) REFERENCES ContactType(typeID)
)
insert into Contact_ContactType_Mapping values
(301,1,201),
(302,1,202),
(303,2,201),
(304,2,202),
(305,3,201),
(306,4,201),
(307,5,203)
select * from Contact_ContactType_Mapping
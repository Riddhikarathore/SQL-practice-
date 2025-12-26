--> the problem is to join table 
--> we create two tables name person and address 
--> in person we make auto incremented primary key for personid
--> in address we make the address id as primary key 
--> we did't use Foreign key
--> we join thetable using left join because we want all the values from the left and matching values from right 



DROP TABLE IF EXISTS Address;
DROP TABLE IF EXISTS person;

create table person(
    personID INT AUTO_INCREMENT PRIMARY KEY,
    lastName varchar(255),
    firstName varchar(255)
);

insert into person (lastName,firstName)
VALUES('Wang','Allen'),('Alice','Bob');
Select * from person;

create table Address(addressId int PRIMARY KEY,
personID int,
city varchar(255),
state varchar(255)
);

insert into Address (addressID , personID , city , state)
VALUES('1','2','New York City','New York'),('2','3','leetcode','California');
select * from Address;

select p.firstName,p.lastName,a.city,a.state from person p
left join Address a
on p.personID = a.personID;


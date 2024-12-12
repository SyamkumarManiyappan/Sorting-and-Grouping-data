Create database Country_And_Polulation;
use  Country_And_Polulation;
--  Create a table named Country with fields: Id Country_name Population Area 


create table Country (ID int primary Key , Country_name varchar (20) not null , Population int , Area int );

-- Create another table named Persons with fields: Id Fname Lname Population Rating Country_Id Country_name 


Create Table Persons ( ID int , F_name varchar (20) not null ,  Lname varchar (20) , Population int , Rating int,  Country_Id int ,Country_name varchar (20), foreign key (Country_Id) references Country(ID));

-- Insert 10 rows into both tables


insert into Country(ID, Country_name,Population,Area) values 

(1,'India',1420000000,3287000),
(2,'USA',331000000,9834000),
(3,'UAE',83200000,357022),
(4,'Oman',25600000,3287000),
(5,'Lanka',1428700000,3287000),
(6,'China',1444216107,9597000),
(7,'Canada',38000000,9985000),
(8,'Japan',213000000,377975),
(9,'Brazil',67000000,8516000),
(10,'UK',67000000,243610);


insert into Persons ( ID , F_name ,  Lname, Population, Rating,  Country_Id ,Country_name) values
(1,'Sharon','Pindi',331000000, 4,2,'India'),
(2,'Karthika','Nelath',38765890, 5,3,'USA'),
(3,'Giri','Krishna',331000000, 5,5,'UAE'),
(4,'Surya','Kumar',35640000, 3,7,'Oman'),
(5,'Sam','John',331087000, 9,6,'Lanka'),
(6,'Hari','Murali',201000000, 4,2,'China'),
(7,'Prathap','Chandra',101000000, 3,7,'Canada'),
(8,'Manu','Manohar',671000000, 4,8,'Japan'),
(9,'Sree','Kala',381000000, 3,10,'Brazil'),
(10,'Krish','Lol',121000000, 5,1,'UK');

select * From Country;
Select * from Persons;
## 1. Write an SQL query to print the first three characters of Country_name from the Country table.

--
select left(Country_name,3) as Frtst_Three_Chars from Country;

-- Write an SQL query to concatenate first name and last name from Persons table. 

Select concat( F_name,' ',Lname) as Full_Name from persons;

-- Write an SQL query to count the number of unique country names from Persons table.

select count(distinct country_name) as Unique_Countries from Persons;

-- Write a query to print the maximum population from the Country table.

select max(Population) as maximum_population from Country;
-- Write a query to print the minimum population from Persons table. 
Select min(Population) as minimum_population from Persons;
--  Insert 2 new rows to the Persons table making the Lname NULL.Then write another query to count Lname from Persons table

alter table Persons;

insert into Persons (ID ,F_name ,Lname, Population ,Rating,Country_Id,Country_name) values
(11,'Sunil',Null ,35648765,5,7,'Canada'),
(12,'Shibu',Null ,87623562,2,9,'Brazil');
select count(Lname) as Lname Count from persons;

-- Write a query to find the number of rows in the Persons table
select count(*) as totalRows from Persons;
##  Write an SQL query to show the population of the Country table for the first 3 rows. (Hint: Use LIMIT)

 select * from Country where Population limit 3 ;
 --  Write a query to print 3 random rows of countries. (Hint: Use rand() function and LIMIT)
 select * from Country order by rand() limit 3 ;
 -- List all persons ordered by their rating in descending order.
 select * from  persons order by  rating desc;
 -- Find the total population for each country in the Persons table.
 
 select Country_name, sum(population) as Total_population from persons group by Country_name;
 
 -- Find countries in the Persons table with a total population greater than 50,000 
 select Country_name, sum(population) as Total_population from persons group by Country_name having Tolat_population > 50000;
 -- List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order.

 select Country_name, sum(population) as Total_population , avg(Rating) as AVGRating , count(*) as TotalPersons from persons group by Country_name having Count(*) >2 order by AVGRating asc ;


 




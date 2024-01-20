create database twentyttwnety_fall;
use twentyttwnety_fall;

/*create a table named Automotor*/

create table Automotor(
chasis_number int primary key,
veh_brand varchar(50),
veh_name varchar(50),
veh_model varchar(50),
veh_year int,
veh_cost int,
veh_color varchar(50),
veh_weight int);

select * from Automotor
order by veh_brand desc, veh_model asc;


/*Enter full detail info of the table*/

insert into Automotor(chasis_number,veh_brand,veh_name,veh_model,veh_year,veh_cost,veh_color,veh_weight)
            VALUES(1, 'bmw', 'suv', 'x7', 2002, 2344, 'blue', 345),
			      (2, 'mercedes', 'sedan', '27i', 1973, 247, 'red', 223),
				  (3, 'audi', 'suv', 'q3', 1800, 3343, 'black', 123),
				  (4, 'toyota', 'sedan','xzi', 1942, 544, 'blue', 345),
				  (5, 'mercedes', 'suv', 'a3', 1999, 4523, 'red', 445),
				  (6, 'bmw', 'sedan', 'suv700', 1863, 4534, 'grey', 987),
				  (7, 'audi', 'sedan', 'cw', 1944, 3434, 'crimson red', 444);


/*change any automotor years to 2019*/
update Automotor set veh_year = 2019 where veh_model= 'q3';

/*display the total cost of all vehicle from the table*/
select SUM(veh_cost) as 'total cost'  from Automotor;

/*create a view  from above table having vehicle only red color*/

create view color_one as 
select chasis_number,veh_brand,veh_name,veh_model,veh_year,veh_cost,veh_color,veh_weight from Automotor
where veh_color= 'red';

select * from color_one;
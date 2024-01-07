create database twentyninteen_spring;

use twentyninteen_spring;

/*1) create database, table and relations*/

create table hotel_detail(
hotel_id int primary key,
hotel_name varchar(50),
estb_year int not null,
hotel_star varchar(50),
hotel_worth varchar(50));

select * from hotel_detail;

insert into hotel_detail(hotel_id, hotel_name, estb_year, hotel_star, hotel_worth)
                  VALUES(1, 'Hyatt', 2047, 'Five', '15M'),
				        (2, 'Hotel Ktm', 2043, 'Three', '5M'),
						(3, 'Fulbari', 2058, 'Five', '20M'),
						(4, 'Yak & Yeti', 2052, 'Four', '11M'),
						(5, 'Hotel Chitwan', 2055, 'Three', '7M');


/* 2) creating a view table as Price*/
	create view Price as 
	select hotel_name, hotel_worth from hotel_detail;

	select * from Price;


	/* 3) updating data */

	update hotel_detail set hotel_star = 'Four' where hotel_name='Hotel Chitwan';

	/* 4) Deleting records*/

	delete from hotel_detail
    where hotel_worth >'9M';
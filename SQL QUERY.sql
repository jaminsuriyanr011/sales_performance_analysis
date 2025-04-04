create database sales_performance_analysis;
use sales_performance_analysis;


create table shop_branches( id int primary key auto_increment,
manager_name varchar(45) not null,
contact_number varchar(45) not null,
address varchar (45) not null,
location varchar(45) not null
);

create table sales_persons
(id int primary key auto_increment,
first_name varchar(45) not null,
last_name  varchar(45) not null,
mobile_number varchar(45) not null,
address varchar(45) not null ,
location varchar(45) not null,
working_branch int not null,
foreign key (working_branch) references shop_branches (id) on delete cascade);

create table products( id int primary key not null,
product_name varchar (45) not null,
category varchar(45) not null,
price decimal(10,2) not null);

create table customers( id int primary key auto_increment,
first_name varchar(45)not null,
last_name varchar(45)not null,
mobile_number varchar(45) not null ,
address varchar(45) not null ,
location varchar(45)not null,
shopping_branch int not null,
foreign key (shopping_branch) references shop_branches (id) on delete cascade);

create table sales(customer_id int not null,
product_id int not null,
salesperson_id int not null,
branch_ids int not null,
purchase_date date not null,
quantity int check (quantity > 0),
amount int not null,
foreign key (customer_id) references customers (id) on delete cascade,
foreign key (product_id) references products (id) on delete cascade,
foreign key (salesperson_id) references sales_persons (id) on delete cascade,
foreign key (branch_ids) references shop_branches (id) on delete cascade);




insert into shop_branches(
id ,manager_name , contact_number ,address ,location)
value ( 1,"Harish.K",9977553331,"T.Nagar Chennai","Tamil Nadu"),
( 2,"Manoj.M",9977553332,"Madurai","Tamil Nadu"),
( 3,"Akash.R",9977553333,"Tirunelveli","Tamil Nadu"),
( 4,"RamKumar.T",9977553334,"Coimbatore","Tamil Nadu"),
( 5,"Akash.R",9977553335,"Avadi Chennai","Tamil Nadu");


insert into sales_persons(id,first_name ,last_name ,mobile_number,address,location,
working_branch )value (1,"Manoj","Kumar.T",9073747456,"Thoothukudi","Tamil Nadu",1),
 (2,"Sanjay","Yadav.K",9023838356,"Trichy","Tamil Nadu",1),
 (3,"Ram","Kumar.R",9023838856,"Erode","Tamil Nadu",2), 
 (4,"Anand","Raj.T",9034347823,"T.Nagar Chennai","Tamil Nadu",2),
 (5,"Anand","Raj.T",9034347823,"T.Nagar Chennai","Tamil Nadu",2),
 (6,"Mohammed","Riyas.T",9978675683,"Avadi Chennai","Tamil Nadu",1),
 (7,"Stephen","John.H",9937453623,"Tenkasi","Tamil Nadu",2),
 (8,"Mukesh","Kumar.S",9907673623,"Madurai","Tamil Nadu",2),
 (9,"Shanmuga","Priya.S",9907673623,"Madurai","Tamil Nadu",3),
 (10,"Harini","Devi.R",9876675633,"Theni","Tamil Nadu",3),
(11,"Rahul","Raj.P",9980736654,"Tirunelveli ","Tamil Nadu ",3),
(12,"Gokul","Kumar.S",9877366544,"T.Nagar Chennai ","Tamil Nadu ",4),
(13,"Sundara","Vel.K",9879654344,"Navalur Chennai ","Tamil Nadu ",4),
(14,"Rahul","Perumal.M",9800636554,"Erode ","Tamil Nadu ",4),
(15,"Gautham","Kartick.S",9978653445,"Theni","Tamil Nadu ",4),
(16,"Domnic","Steve.S",9877653765,"Trichy","Tamil Nadu ",5),
(17,"Murali","Kartick.S",9778556465,"Dindigal","Tamil Nadu ",5),
(18,"Siva","Sankar.R",9956855445,"Thoothukudi","Tamil Nadu ",5),
(19,"Raj","Kumar.S",9028768856,"Erode","Tamil Nadu",1),
(20,"Mohan","Raj.R",9904388856,"Trichy","Tamil Nadu",1),
(21,"Siva","Kumar.D",9842845449,"Thoothukudi","Tamil Nadu ",5),
(22,"Ajith","Kumar.T",9956855445,"Tiruppur","Tamil Nadu ",5),
(23,"Siva","Karthick.R",9807543445,"Theni","Tamil Nadu ",4),
(24,"Soundra","Rajan.R",9346878445,"Tenkasi","Tamil Nadu ",1),
(25,"Siva","Subramani.R",9895955445,"Thoothukudi","Tamil Nadu ",1);



insert into products(id ,product_name , category ,price)
value (1,"Mixer Grinders","Electronics",1650),
(2,"Juicers","Electronics",980),
(3,"Hand Blenders","Electronics",1200),
(4,"TVs","Electronics",40000),
(5,"Oven Toaster Grills","Electronics",5500),
(6,"Speakers","Electronics",22000),
(7,"Rice Pasta Cookers","Electronics",5000),
(8,"Washing Machines","Electronics",35000),
(9,"Mobiles","Electronics",25500),
(10,"Air Conditioners","Electronics",35000),
(11,"Water Purifiers","Electronics",5500),
(12,"Refrigirators","Electronics",40000),
(13,"Vacuum Cleaners","Electronics",6500),
(14,"Inverters","Electronics",20000),
(15,"Fans","Electronics",3000),
(16,"Water Heaters","Electronics",5000),
(17,"Sofa Beds","Electronics",25000),
(18,"L-Shaped Sofas","Electronics",30000),
(19,"Sofa Beds","Furnitures",25000),
(20,"Sofa Sets","Furnitures",24000),
(21,"L-Shaped Sofas","Furnitures",35000),
(22,"Recliners","Furnitures",25000),
(23,"TV Entertainment Units","Furnitures",45000),
(24,"Center Tables","Furnitures",3000),
(25,"Nested Tables","Furnitures",4000),
(26,"Chairs","Furnitures",3500),
(27,"Shoe Racks","Furnitures",3000),
(28,"Wooden Desk","Furnitures",4500),
(29,"Bean Bags","Furnitures",1500),
(30,"Wall Shelves","Furnitures",1300),
(31,"Magazine Racks","Furnitures",2300),
(32,"Beds","Furnitures",5000),
(33,"Mattresses","Furnitures",1000),
(34,"Wardrobes","Furnitures",2000),
(35,"BedsideTables","Furnitures",5900),
(36,"Shirts Tops Tees","Dresses",2500),
(37,"Dresses","Dresses",2500),
(38,"Jeans  Jeggings","Dresses",1500),
(39,"All Ethnic Wear","Dresses",1400),
(40,"Kurtas","Dresses",2300),
(41,"Salwar Suits","Dresses",2400),
(42,"Sarees","Dresses",4500),
(43,"Cotton Sarees","Dresses",3500),
(44,"T-shirts, Polos  Shirts","Dresses",1300),
(45,"Jeans","Dresses",1700),
(46,"Trousers","Dresses",1000),
(47,"Shorts","Dresses",800),
(48,"Suits  Blazers","Dresses",1800),
(49,"Sportswear","Dresses",900),
(50,"Innerwear","Dresses",600),
(51,"Lounge Wear","Dresses",700),
(52,"Accessories","Dresses",1200);


insert into customers(id,first_name ,last_name ,mobile_number,address,location,
shopping_branch )value (1,"Raj","Kumar.P",9090675346,"Tirunelveli","Tamil Nadu",3),
 (2,"Surya","Kumar.K",9009878356,"Coimbatore","Tamil Nadu",4),
 (3,"Arun","Kumar.I",9023656546,"Madurai","Tamil Nadu",2), 
 (4,"Deepak","Raj.S",9090765423,"T.Nagar Chennai","Tamil Nadu",3),
 (5,"Gnana","Raj.S",9024356223,"T.Nagar Chennai","Tamil Nadu",1),
 (6,"Suraj","Kumar.T",9943265683,"Avadi Chennai","Tamil Nadu",5),
 (7,"Mohamed","Abu.H",9893536473,"Tirunelveli","Tamil Nadu",3),                                           
 (8,"Pravin","Kumar.T",9907466623,"Madurai","Tamil Nadu",2),
 (9,"Vignesh","Kumar.S",9090876523,"Coimbatore","Tamil Nadu",2),
 (10,"Hari","Haran.T",9097654633,"T.Nagar Chennnai","Tamil Nadu",1),
(11,"Umesh","Raj.P",9878656454,"Tirunelveli ","Tamil Nadu ",3),
(12,"Guru","kannan.S",9909866544,"T.Nagar Chennai ","Tamil Nadu ",1),
(13,"Sundara","Vel.K",9879654344,"Coimbatore ","Tamil Nadu ",4),
(14,"Rahul","Prasad.M",9889768754,"Avadi Chennai ","Tamil Nadu ",4),
(15,"Gautham","Kartick.S",9978653445,"Coimbatore","Tamil Nadu ",4),
(16,"Ganesh","Karthick.S",9877653765,"Avadi Chennai","Tamil Nadu ",5),
(17,"Anbu","Selvan.S",9778556465,"Velacherry","Tamil Nadu ",5),
(18,"Santhosh","Kumar.T",9980765445,"Tambaram","Tamil Nadu ",5),
(19,"Anand","Raj.S",9028768856,"Erode","Tamil Nadu",4),
(20,"Mohan","Kumar.R",9987654566,"Trichy","Tamil Nadu",1),
(21,"Varun","Kumar.D",9842845449,"Thoothukudi","Tamil Nadu ",3),
(22,"Shanmuga","Vel.T",9956855445,"Tirunelveli","Tamil Nadu ",2),
(23,"Siva","Narayanan.R",9907878645,"Theni","Tamil Nadu ",4),
(24,"Shanmuga","Rajan.R",9346878445,"Tenkasi","Tamil Nadu ",5),
(25,"Siva","Karthikeyan.R",9895955445,"Thoothukudi","Tamil Nadu ",1);


insert into sales(customer_id,product_id,salesperson_id,branch_ids,purchase_date,quantity,amount)
value (1,1,9,3,'2024-01-04',1,1650),
(1,13,10,3,'2024-02-08',1,6500),
(2,26,12,4,'2024-08-06',1,3500),
(2,32,14,4,'2024-09-24',1,5000),
(3,44,4,2,'2024-06-26',1,1300),
(3,48,7,2,'2024-03-22',1,1800),
(3,40,8,2,'2024-10-01',1,2300),
(4,12,10,2,'2024-03-07',1,40000),
(4,5,11,2,'2024-06-28',1,5500),
(4,2,9,2,'2024-01-29',1,980),
(5,33,19,1,'2024-11-29',1,1000),
(5,31,25,1,'2024-12-17',1,2300),
(5,32,24,1,'2024-07-19',1,5000),
(5,27,6,1,'2024-10-06',1,3000),
(6,47,18,5,'2024-07-21',1,800),
(6,46,22,5,'2024-04-05',1,1000),
(7,2,9,3,'2024-01-28',1,980),
(8,8,8,2,'2024-02-27',1,3500),
(9,36,4,2,'2024-05-26',1,2500),
(10,22,6,1,'2024-06-26',1,25000),
(11,14,11,3,'2024-05-06',1,20000),
(12,18,24,1,'2024-09-04',1,30000),
(13,30,22,4,'2024-06-09',1,1300),
(14,42,22,4,'2024-02-16',1,4500),
(15,33,22,4,'2024-01-02',1,1000),
(16,32,21,5,'2024-04-02',1,5000),
(17,13,16,5,'2024-03-07',1,6500),
(18,11,16,5,'2024-09-06',1,5500),
(19,22,12,4,'2024-11-12',1,25000),
(20,7,19,1,'2024-11-26',1,5000),
(20,11,2,1,'2024-12-21',1,5500),
(21,44,9,3,'2024-06-12',1,1300),
(21,38,10,3,'2024-11-23',1,1500),
(22,12,5,2,'2024-12-12',1,40000),
(23,12,13,3,'2024-11-11',1,40000),
(24,50,16,5,'2024-10-10',1,600),
(25,43,19,1,'2024-09-09',1,3500),
(24,49,21,5,'2024-08-08',1,900),
(25,33,6,1,'2024-07-07',1,1000),
(25,11,2,1,'2024-06-06',1,5500);


-- STORED PROCEDURES


-- total_sales_details

delimiter //
CREATE procedure total_sales_details ()
begin 
SELECT 
    COUNT(customer_id) AS total_transactions,
    SUM(amount) AS total_revenue
FROM Sales;
end // 
delimiter ;

call total_sales_details;


-- total revenue by month

delimiter //
create procedure total_revenue_by_month()
begin
SELECT 
    month(purchase_date) AS month_sales,
    SUM(amount) AS revenue
FROM Sales
GROUP BY month_sales
ORDER BY revenue desc;
end //
delimiter ;

call  total_revenue_by_month; 

-- Best selling Product

delimiter //
create procedure Best_selling_Product()
begin
SELECT 
    p.product_name AS product_name,
    SUM(s.quantity) AS total_units_sold,
    SUM(s.amount) AS total_revenue
FROM Sales s
JOIN Products p ON s.product_id = p.id
GROUP BY p.product_name
ORDER BY total_units_sold DESC
limit 5;
end //
delimiter ;

call Best_selling_Product;

-- sales performance by salespersons 

delimiter //
create procedure  sales_performance_by_salesperson(in a int)
begin
SELECT 
    sp.id AS salesperson,
    concat(first_name," ",last_name) AS Name,
    SUM(s.amount) AS total_revenue,
    COUNT(s.customer_id) AS total_sales
FROM Sales s
JOIN Sales_persons sp ON s.salesperson_id = sp.id
where sp.id = a
GROUP BY sp.id
ORDER BY total_revenue DESC;
end //
delimiter ;

call sales_performance_by_salesperson(16);


-- customer shopping details

delimiter //
create procedure Customer_purchase_amount(in a int)
begin 
SELECT
      c.id,
     concat(first_name," ",last_name) AS customer_name,
    SUM(amount) AS total_spent
FROM Sales s
JOIN Customers c ON s.customer_id = c.id
where s.customer_id = a 
group by c.id
ORDER BY total_spent DESC;
end //
delimiter ;

call  Customer_purchase_amount(2);

-- sales performance by branches

delimiter //
create procedure sales_performance_by_branch(in a int)
begin
  SELECT 
    sb.id as branch,
    sb.address AS branch_address,
    SUM(s.amount) AS total_revenue,
    COUNT(s.customer_id) AS total_sales
FROM Sales s
JOIN shop_branches sb ON s.branch_ids = sb.id
where s.branch_ids = a
GROUP BY sb.id
ORDER BY total_revenue DESC;
end //
delimiter  ;

call sales_performance_by_branch(2);

-- sales performance by category

delimiter //
create procedure sales_performance_by_category()
begin
SELECT 
    p.category AS product_category,
    SUM(s.amount) AS total_revenue,
    COUNT(s.customer_id) AS total_sales
FROM products p
JOIN Sales s ON p.id= s.PRODUCT_id
GROUP BY p.category
ORDER BY total_revenue DESC;
end //
delimiter ;

call sales_performance_by_category();

-- sold products 

delimiter //
create procedure sold_products()
begin 
select 
        DISTINCT p.product_name AS product ,
		s.Product_id AS id
		 FROM sales s
         LEFT JOIN products p on s.product_id = p.id ;
         end //
         delimiter ;
         

call sold_products;

-- Gifted  for customers who purchase amount < 10000


 delimiter //
create procedure Gifted_Customers()
begin
select 
      customer_id,
	  concat(first_name," ",last_name) AS customer_name,
      sum(amount) as total
      from sales s join 
      customers c on s.customer_id = c.id
      where amount > 10000
      group by customer_id;
end //
         delimiter ;

call Gifted_Customers;

-- Bonus for salesperson who sales products amount > 20000

 delimiter //
create procedure Salesperson_Bonus()
begin
select 
      salesperson_id,
	  concat(first_name," ",last_name) AS salesperson_name,
      sum(amount) as total
      from sales s join 
      sales_persons sp on s.salesperson_id = sP.id
      where amount > 20000
      group by salesperson_id;
end //
         delimiter ;
         
call Salesperson_Bonus;
         
select * from sales;
select * from products;
select * from customers;
select * from sales_persons;
select * from shop_branches;

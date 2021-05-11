-- populate Store data(5)
insert into Store
	values(01,'319-237-3347', '9AM-9PM','Burlington Store', 3200, 'E Agency St', 'Burlington','IA', '52601');
insert into Store
	values(02,'309-517-2572', '9AM-9PM','Moline Store', 4500, '16th St', 'Moline','IL', '61265');
insert into Store
	values(03,'563-355-7042', '9AM-9PM','Davenport Store', 5511, 'Elmore Avenue', 'Davenport','IA', '52807');
insert into Store
	values(04,'309-683-2400', '9AM-9PM','Peoria Store', 5205, 'W War Memorial Dr', 'Peoria','IL', '61615');
insert into Store
	values(05,'630-317-0200', '9AM-9PM','Lombard Store', 810, 'E Butterfield Rd', 'Lombard','IL', '60148');

-- populate Employee data(5)
insert into Employee
	values(01,'James', 'W', 'Lou', 3200, 'Alrignton Ave', null, 'Westminster','IL', '60611', '01/10/1983', '630-123-4567', '05', '02');
insert into Employee
	values(02,'Karen', 'A', 'Kline', 67, 'W Loop Rd', 6, 'Monmouth','IL', '61462', '11/19/1999', '310-123-4567', '01', '01');
insert into Employee
	values(03,'Lewis', 'M', 'Swirl', 739, 'Beetoven St', null,'Washington','IL', '61571', '06/03/2000', '160-123-4567', '04', '03');
insert into Employee
	values(04,'Megan', 'W', 'Peters', 6018, 'W 16th St', null, 'Moline','IL', '61265', '12/10/1973', '206-123-4567', '02', '04');
insert into Employee
	values(05,'Ricky', 'J', 'Bobby', 210, 'Swine Ave', 1, 'Debuque','IA', '50164', '05/10/1987', '450-123-4567', '03', '02');

-- populate Department data(4)
insert into Department
	values(01,10, 'Karen Kline', 7, 01);
insert into Department
	values(02,5, 'Michael James', 3, 02);
insert into Department
	values(03,8, 'Amari Slowki', 7, 02);
insert into Department
	values(04,14, 'Quinn Slick', 14, 05);
    
-- populate Products data(13/20)
insert into Products
	values(00001, 'Wilson', 'brw', 'LG', "Men's Basketball");
insert into Products
	values(02401, 'Champion', 'wht', 'XS', "Men's Lightweight Hoodie");
insert into Products
	values(00535, 'Nike', 'prp', 'MD', "Women's Running Tank Top");
insert into Products
	values(43706, 'Nike', 'blk', 'SM', "Men's Running Shorts");
insert into Products
	values(73892, 'Nike', 'wht', 'XL', "Kid's Short Sleeve Hoodie");
insert into Products
	values(17900, 'Adidas', 'blu', 'SM', "Men's Running Shorts");
insert into Products
	values(00002, 'Nike', 'blk', 'MD', "Men's basketball");
insert into Products
	values(02502, 'Champion', 'blk', 'MD', "Men's Lightweight Hoodie");
insert into Products
	values(02702, 'Nike', 'wht', 'MD', "Men's Running Shorts");
insert into Products
	values(67392, 'Nike', 'blk', 'MD', "Men's basketball");
insert into Products
	values(10000, 'Pepsi', 'brw', 'LG', "Diet Pepsi 32oz");
insert into Products
	values(10001, 'Pepsi', 'brw', 'SM', "Pepsi 16oz");
insert into Products
	values(20002, 'Coca Cola', 'brw', 'LG', "Diet Coke 32oz");

-- populate Inventory data
insert into Inventory
	values();

-- populate Reorder data
insert into Reorder
	values();

-- populate Supplier data
insert into Supplier
	values(0001, 'Pepsico', null, null, null, 'Purchase', 'NY', 10577, '800-433-2652', 'Jeremy Klausen');
insert into Supplier
	values(0002, 'Nike', 1, 'SW Bowerman Dr', null, 'Beaverton', 'OR', 97005, '503-671-6453', null);
insert into Supplier
	values(0003, 'Adidas', null, null, null, 'Herzogenaurach', 'GM', 10577, '800-433-2652', 'Chuck Groun');
insert into Supplier
	values(0004, 'Champion', null, null, null, 'Cincinnati', 'OH', 45241, '877-569-3095', null);
insert into Supplier
	values(0005, 'Wilson', 130, 'E Randolph St', 600, 'Chicago', 'IL', 60601, '800-401-7967', 'Mikah Queen');
insert into Supplier
	values(0006, 'Coca Cola', 1, 'Coca-Cola Plaza', null, 'Atlanta', 'GA', 30313, '404-676-2121', 'Mike Dew');

-- populate Customer data 
insert into Customer
	values();

-- populate Sales data
insert into Sales
	values();

-- populate Orders data
insert into Orders
	values();

-- populate Freq_shop data(10)
insert into Freq_shop
	values(000001, 780);
insert into Freq_shop
	values(000002, null);
insert into Freq_shop
	values(000003, 10);
insert into Freq_shop
	values(000004, 1050);
insert into Freq_shop
	values(000005, null);
insert into Freq_shop
	values(000006, 87);
insert into Freq_shop
	values(000007, 7186);
insert into Freq_shop
	values(000008, 788);
insert into Freq_shop
	values(000009, 1);
insert into Freq_shop
	values(000010, 26);
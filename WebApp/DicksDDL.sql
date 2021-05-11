  create table if not exists Store(
	store_id int not null,
    phone_num varchar(50) not null,
    hours varchar(45),
    street_number int,
    street_name varchar(50),
    city char(25),
    state char(20),
    zip int,
    primary key(store_id)
    );
    
create table if not exists Department(
	dept_id int not null,
    dept_capacity int not null,
    dept_manager varchar(45) not null,
    used_capacity int,
    store_id int,
    primary key(dept_id),
    foreign key(store_id) references Store(store_id)
    );
    
create table if not exists Employee(
	employee_id int not null,
    first_name char(20) not null,
    middle_inti char(1),
    last_name char(30) not null,
    street_number int not null,
    street_name varchar(50) not null,
    apt_num int,
    city char(25),
    state char(50),
    zip int,
    birthdate date not null,
    phone_num varchar(50),
    store_id int,
    dept_id int,
    primary key(employee_id),
    foreign key(dept_id) references Department(dept_id)
    );

create table if not exists Products(
	UPC int not null,
    brand varchar(45) not null,
    color char(50) not null,
    size int not null,
    item_name varchar(100) not null,
    primary key(UPC)
    );

create table if not exists Supplier(
	supplier_id int not null,
    vendor_name char(45) not null,
	street_number varchar(45),
    street_name varchar(50),
    apt_num int,
    city char(25),
    state char(50),
	zip int,
    phone_num varchar(50) not null,
    contact varchar(30),
    primary key(supplier_id)
    );
    
create table if not exists Inventory(
	UPC int not null,
	price float not null,
    stock int,
    min_order_level int,
    capacity int,
    supplier_id int,
    store_id int,
    UPCp int,
    primary key(UPC, store_id),
    foreign key(UPCp) references Products(UPC),
    foreign key(store_id) references Store(store_id),
    foreign key(supplier_id) references Supplier(supplier_id)
    );
    
create table if not exists Reorder(
	UPC int not null,
    quantity int not null,
    cost int not null,
    store_id int,
    reorder_created date not null,
    reorder_filled date,
    primary key(UPC, store_id, reorder_created), /*added reorder_created as a primary key for the reorder of products*/
    foreign key(store_id) references Store(store_id)
    );

create table if not exists Customers(
    customer_id int not null,
    customer_name varchar(50) not null,
    street_number varchar(45) not null,
    street_name varchar(50) not null,
    apt_num int,
    city char(25),
    state char(50),
	zip int,
    points int,
    phone_num varchar(50) not null,
    primary key(customer_id)
    );
   
create table if not exists Orders(
	order_num int not null,
    street_number int not null,
    street_name varchar(50) not null,
    apt_num int,
    city char(25) not null,
    state char(50) not null,
    zip int not null,
    order_date date not null,
    points_used int,
    points_earned int,
    customer_id int,
    primary key(order_num),
    foreign key(customer_id) references Customers(customer_id)
    );
    
create table if not exists Sales(
	sale_num int not null,
    quantity int not null,
    cost float not null,
    order_num int,
    UPC int,
    primary key(order_num, UPC),
    foreign key(order_num) references Orders(order_num),
    foreign key(UPC) references Products(UPC)
    );
 
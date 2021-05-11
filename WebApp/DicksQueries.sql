/* Queries for Dick's Database*/
/* Top 20 items sold across all stores */
select p.UPC, item_name, sum(quantity) as Total
from sales as s, products as p
where s.UPC = p.UPC /*included where clause to check for matching UPC numbers*/
group by p.UPC
order by Total desc limit 20;

/* Top 50 items sold in the state of Virginia */
select p.UPC, item_name, sum(quantity) as Total, state
from sales as s, products as p, store as st
where state = 'Virginia' and s.UPC = p.UPC /*checked UPC numbers to get items to correlate appropriately*/
group by p.UPC, state
order by Total desc limit 50;

/* Customers with the most points in the state of Texas */
select customer_id, customer_name, points, state
from customers
where state = 'Texas'
order by points desc;

/* Quantity of an item a customer had for a particular order */
select customer_name, sale_num, quantity, item_name
from customers, sales, products
order by quantity desc;

/* Store with the most sales in the country */
select store_id, state, sum(sale_num) as total_sales
from store, sales

/* Top selling product by a company */
select distinct vendor_name, p.UPC, item_name, quantity
from products as p, supplier, sales as s
group by vendor_name
order by quantity limit 10;
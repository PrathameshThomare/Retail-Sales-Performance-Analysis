CREATE TABLE sales (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Category VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    InvoiceDate DATETIME,
    CustomerID VARCHAR(20),
    Age INT,
    Gender VARCHAR(10),
    Country VARCHAR(50),
    SalesRep VARCHAR(100),
    ReturnFlag TINYINT,
    Revenue DECIMAL(12,2)
);

load data local infile 'C:\\Users\\ENVY\\Downloads\\Sales_Performance_Dataset.csv'
into table sales
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n'
ignore 1 rows
(InvoiceNo,StockCode,Description,Category,Quantity,UnitPrice,@InvoiceDate,CustomerID,Age,Gender,Country,SalesRep,ReturnFlag,Revenue)
set InvoiceDate= str_to_date(@InvoiceDate,'%d-%m-%Y %H:%i:%s');


-- Retrieve total sales per region.
select country,
	   sum(Revenue) as total_revenue,
       sum(Quantity) as total_Qty
from sales
group by country
order by total_revenue desc;

select * from sales;

-- Find the top 5 best-selling products.
select StockCode, Category, Description,
	   sum(Revenue) as total_revenue,
       sum(Quantity) as total_Qty
from sales
group by StockCode, Category, Description
order by total_Qty desc
limit 5;

-- Calculate monthly revenue.
select date_format(InvoiceDate, '%Y-%m') as yr_month,
		sum(Revenue) as total_revenue
from sales
group by yr_month
order by yr_month;

-- Identify repeat customers.
select customerID,
	   count(distinct InvoiceNo) as invoice_count,
       sum(Revenue) as total_revenue
from sales
where CustomerID is not null
group by CustomerID
having invoice_count > 1
order by total_revenue desc;

-- Find average order value per region.
with invoice_totals as (
	select InvoiceNo,
		   Country,
           sum(revenue) as total_revenue
	from sales
    group by InvoiceNo, Country
)
select Country,
	   round(avg(InvoiceNo),2) as avg_order_value,
       count(*) as number_of_orders
from invoice_totals
group by country
order by avg_order_value;

-- Determine peak sales hour in a day.
select hour(InvoiceDate) as hours_of_day,
	   sum(Revenue) as total_revenue,
       sum(Quantity) as total_Qty
from sales
group by hours_of_day
order by total_revenue;

-- Rank products by sales within each category.
select StockCode, Category, Description,
	   sum(Revenue) as total_revenue,
       rank() over (partition by category order by sum(Revenue) desc) as category_rank
from sales 
group by StockCode, Category, Description
Order by Category, category_rank;

select * from sales;


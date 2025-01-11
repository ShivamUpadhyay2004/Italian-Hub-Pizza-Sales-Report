create database sql_powerbi ;

USE sql_powerbi;

select * from pizza_sales;




 ----------------------------------------------------------        1    
select sum( total_price ) as Total_Revenue from pizza_sales;







-------------------------------------------------------            2
select round(sum(total_price) / count(distinct order_id),4)  as Avg_order_value from pizza_sales;











----------------------------------------------------------  3
Select sum(quantity) as Total_Pizza_Sold from pizza_sales;











----------------------------------------------------------------------------- 4
select count(distinct order_id)  as Total_orders from pizza_sales;














---------------------------------------------------------------------------  5 
select cast(sum(quantity)as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as Average_Pizza_Per_Order from pizza_sales;
select round(sum(quantity) / count(distinct order_id),2) as Average_Pizza_Per_Order from pizza_sales;


















----------------------------------------------------------------------------------------- 6
select dayname(order_date) as Order_day ,count(distinct order_id) as Total_Orders from pizza_sales group by dayname(order_date) order by count(distinct order_id)desc;

















-----------------------------------------------------------------------------------           7
select monthname(order_date) as Month_Name ,count(distinct order_id) as Total_Orders from pizza_sales
 group by monthname(order_date) order by count(distinct order_id)desc;
 
 
 
 
 
 
 
 
 
 
 
 ---------------------------------------------------------------------------------------------------       8 
 select pizza_category ,cast(sum(total_price)as decimal(10,2)) as Total_Sales, round((sum(total_price) * 100  
 /(select sum( total_price ) as Total_Revenue from pizza_sales)),2) as Per_Of_Sales from pizza_sales group by pizza_category ;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 -------------------------------------------------------------------------------------------  9 
 select pizza_size ,cast(sum(total_price)as decimal(10,2)) as Total_Sales, round((sum(total_price) * 100  
 /(select sum( total_price ) as Total_Revenue from pizza_sales)),2) as Per_Of_Sales from pizza_sales group by pizza_size order by Per_Of_Sales desc ;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ---------------------------------------------------------------------------------------------------    10
 SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;
















------------------------------------------------------------------------------------------  11
select pizza_name, cast(sum(total_price)as decimal(10,2)) as Total_Revenue from pizza_sales group by pizza_name order by Total_Revenue desc limit 5;

















---------------------------------------------------------------------------------------------------  12
select pizza_name, cast(sum(total_price)as decimal(10,2)) as Total_Revenue from pizza_sales group by pizza_name order by Total_Revenue asc limit 5;




















----------------------------------------------------------------------------------------     13
select pizza_name, sum(quantity) as Total_Quantity from pizza_sales group by pizza_name order by Total_Quantity desc limit 5;













------------------------------------------------------------------------------------------   14
select pizza_name, sum(quantity) as Total_Quantity from pizza_sales group by pizza_name order by Total_Quantity asc limit 5;
















------------------------------------------------------------------------------------------------------------ 15
select pizza_name, count(distinct order_id) as Total_Orders from pizza_sales group by pizza_name order by Total_Orders desc limit 5 ;


















-------------------------------------------------------------------------------------------------------------------------- 16
select pizza_name, count(distinct order_id) as Total_Orders from pizza_sales group by pizza_name order by Total_Orders asc limit 5 ;


















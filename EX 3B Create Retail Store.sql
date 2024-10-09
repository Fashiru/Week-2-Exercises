-- This is how to drop table from a datebase (Drop table Rewards_Table;)
-- Creating new database for friends retail store:
-- Create Database (CREATE DATABASE Retail_Store;)
CREATE DATABASE nyc_halal_eats;
USE nyc_halal_eats;

CREATE TABLE rewards_table(
	Rewards_ID INT primary key,
    Reward_Points INT NUll,
    MembershipLevel VARCHAR(20),
    Customer_ID VARCHAR(225));
    

Create Table customers_table (
	Customer_ID VARCHAR(225) primary key,
	FName VARCHAR (30),
	LName VARCHAR (30) NOT NULL,
	Phone VARCHAR (15),
	Email VARCHAR (50),
	Rewards_ID INT,
	CONSTRAINT fk1 FOREIGN KEY (Rewards_ID) REFERENCES rewards_table (Rewards_ID));


Create Table Products (
	Product_ID VARCHAR(225) primary key,
	Product_quantity INT,
	Clothing_Name VARCHAR(225),
	Category_Of_Item VARCHAR(225),
	Availability_Of_Product BOOLEAN,
    Sales_ID VARCHAR(225),
    CONSTRAINT fk_Sales FOREIGN KEY (Sales_ID) REFERENCES Sales(Sales_ID));



Create Table Sales (
	Sales_ID VARCHAR(225) primary key,
	Order_Quantity INT,
	Location VARCHAR(225),
    Total_Sale_Price INT, 
    Rewards_ID INT,
    CONSTRAINT fk_rewards FOREIGN KEY (Rewards_ID) REFERENCES rewards_table (Rewards_ID));



Create Table Orders ( 
	Order_ID INT primary key,
	Total_OrderPrice DECIMAL(5,2),
	Items_Ordered VARCHAR(225),
	Sales_ID VARCHAR (225),
	Rewards_ID INT,
	CONSTRAINT fk_rewards2 FOREIGN KEY (Rewards_ID) REFERENCES rewards_table (Rewards_ID),
	CONSTRAINT fk_sales2 FOREIGN KEY (Sales_ID) REFERENCES sales(Sales_ID));


Create Table Inventory (
	Items_Returned VARCHAR(225),
	Available_Inventory BOOLEAN,
    Product_ID VARCHAR(225),
	Store_ID VARCHAR(225),
	 CONSTRAINT fk_Product FOREIGN KEY (Product_ID) REFERENCES Products (Product_ID),
     CONSTRAINT fk_Store FOREIGN KEY (Store_ID) REFERENCES Store (Store_ID));

Create Table Store (
	Store_ID VARCHAR(225) primary key,
    Location VARCHAR(225),
    Order_ID INT, 
    Inventory_ID VARCHAR(225),
    CONSTRAINT fk_Orders FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID));
    
 --   ALTER TABLE Store
  --  ADD CONSTRAINT fk_Inventory1 FOREIGN KEY (Inventory_ID) References Inventory(Inventory_ID);
    
	ALTER TABLE Inventory
    ADD COLUMN Inventory_ID VARCHAR(225)Primary key;





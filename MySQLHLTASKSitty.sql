create database fashion;
use fashion;
CREATE TABLE fashion_labels(
designer VARCHAR (20) NOT NUll,
year_established YEAR(4),
rating INT NOT NUll,
origin VARCHAR (60),
affordability TEXT NOT NULL, 
PRIMARY KEY (designer)
);
EXPLAIN fashion_labels;

INSERT INTO fashion_labels (Designer, Year_Established, Rating, Origin, Affordability)
Values
("Louis Vuitton",1902, 5, "France", "High End"),
("Michael Kors", 1990 , 3, "SA", "Medium"),
("Burberry", 1901, 5, "UK", "High End"),
("Chloe", 1953 , 4, "France", "High End"),
("Ted Baker", 1988 , 3, "UK", "Low"),
("Balenciaga", 1917, 4, "Spain", "High End"),
("Hermes", 1902 , 5, "France", "High End"),
("Gucci", 1921 , 5, "Italy", "High End"),
("Tory Burch", 2004 , 2, "USA", "Low"),
("Polo Ralph Lauren", 1967, 3, "USA", "Medium")
;

CREATE TABLE Total_Sales(
designer VARCHAR(20) NOT NULL,
SalesToDate INT NOT NULL, 
Average_Age_Demographic INT,
PRIMARY KEY (designer)
);
EXPLAIN Total_Sales;


INSERT INTO Total_Sales (designer, SalesToDate, Average_Age_Demographic)
Values
("Louis Vuitton", "700000000", 45),
("Michael Kors", "6000000", 28),
("Burberry", "300000000", 35),
("Ted Baker", "10000000", 25),
("Balenciaga", "750000000", 30),
("Gucci", "950000000", 35),
("Tory Burch", "4000000", 28),
("Polo Ralph Lauren", "60000000", 25),
("Hermes", "875000000", 40), 
("Chloe", "300000000", 38)
;

Delete FROM Total_Sales
Where designer = "Tory Burch";

SELECT * From Total_Sales;

UPDATE Total_Sales
Set SalesToDate = "800000000"
where designer = "Louis Vuitton";

Select * From Total_Sales;

Select fashion_labels.designer, Total_Sales.designer
From fashion_labels
Inner Join Total_Sales
ON fashion_labels.designer = Total_Sales.designer;

Use fashion;
Select designer, SalesToDate from Total_sales;


use fashion;
select * From fashion_labels, Total_Sales
where fashion_labels. designer = Total_Sales.designer;

Select * From fashion_labels, Total_Sales order by rating;

Select * From Total_Sales
Where Average_Age_Demographic between 20 and 30;



















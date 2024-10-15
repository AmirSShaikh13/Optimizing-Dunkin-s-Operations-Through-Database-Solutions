



CREATE TABLE "Rating" (
	"RatingId"	INTEGER primary KEY, 
	"Rating"	TEXT
)

INSERT INTO "main"."Rating" ("RatingId", "Rating") VALUES ('1', 'Very Poor');
INSERT INTO "main"."Rating" ("RatingId", "Rating") VALUES ('2', 'Poor');
INSERT INTO "main"."Rating" ("RatingId", "Rating") VALUES ('3', 'Average');
INSERT INTO "main"."Rating" ("RatingId", "Rating") VALUES ('4', 'Good');
INSERT INTO "main"."Rating" ("RatingId", "Rating") VALUES ('5', 'Excellent');

SELECT * FROM Rating;

CREATE TABLE "Location" (
	"Location_ID"	INTEGER primary KEY,
	"Location_Name"	TEXT,
	"Location_Address"	TEXT,
	"Location_ZipCode"	INTEGER,
	"Country"	TEXT
)

INSERT INTO "main"."Location" ("Location_ID", "Location_Name", "Location_Address", "Location_ZipCode", "Country") VALUES ('1', 'Maryville', 'Alfred Street', '24184', 'United States');
INSERT INTO "main"."Location" ("Location_ID", "Location_Name", "Location_Address", "Location_ZipCode", "Country") VALUES ('2', 'Edmond', 'Wilson Street', '17003', 'United States');
INSERT INTO "main"."Location" ("Location_ID", "Location_Name", "Location_Address", "Location_ZipCode", "Country") VALUES ('3', 'Odessa', 'Fairway', '91345', 'United States');
INSERT INTO "main"."Location" ("Location_ID", "Location_Name", "Location_Address", "Location_ZipCode", "Country") VALUES ('4', 'Belmont', 'Fox Lane', '20176', 'United States');
INSERT INTO "main"."Location" ("Location_ID", "Location_Name", "Location_Address", "Location_ZipCode", "Country") VALUES ('5', 'Duncan', 'Lincoln Road', '91306', 'United States');
INSERT INTO "main"."Location" ("Location_ID", "Location_Name", "Location_Address", "Location_ZipCode", "Country") VALUES ('6', 'Rochester', 'North Road', '37342', 'United States');
INSERT INTO "main"."Location" ("Location_ID", "Location_Name", "Location_Address", "Location_ZipCode", "Country") VALUES ('7', 'Wayne', 'Church Hill', '43011', 'United States');
INSERT INTO "main"."Location" ("Location_ID", "Location_Name", "Location_Address", "Location_ZipCode", "Country") VALUES ('8', 'Harlingen', 'Cedar Hill', '75104', 'United States');
INSERT INTO "main"."Location" ("Location_ID", "Location_Name", "Location_Address", "Location_ZipCode", "Country") VALUES ('9', 'Malden', 'Commercial Road', '26164', 'United States');
INSERT INTO "main"."Location" ("Location_ID", "Location_Name", "Location_Address", "Location_ZipCode", "Country") VALUES ('10', 'Farmington', 'Hope Street', '35759', 'United States');

SELECT * FROM Location;

CREATE TABLE Category(
  Category_ID INT Primary KEY,
  CategoryName TEXT
)

INSERT INTO "main"."Category" ("Category_ID", "CategoryName") VALUES ('1', 'Donut');
INSERT INTO "main"."Category" ("Category_ID", "CategoryName") VALUES ('2', 'Sandwich');
INSERT INTO "main"."Category" ("Category_ID", "CategoryName") VALUES ('3', 'Coffee');
INSERT INTO "main"."Category" ("Category_ID", "CategoryName") VALUES ('4', 'Tea');
INSERT INTO "main"."Category" ("Category_ID", "CategoryName") VALUES ('5', 'Muffin');

SELECT * FROM Category;

CREATE TABLE Product(
  Product_ID INT primary key,
  FK_Category_ID INT,
  Product_Name TEXT,
  Product_Rating INT,
  Product_Price TEXT,
  FOREIGN KEY (FK_Category_ID) REFERENCES Category(Category_ID)
);

INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('1', '3', 'Latte', '3', '$3.19');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('2', '3', 'Cappuccino', '4', '$2.69');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('3', '3', 'Espresso', '4', '$2.79');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('4', '3', 'Irish', '2', '$2.59');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('5', '3', 'Mocha', '5', '$1.85');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('6', '1', 'Blueberry', '3', '$3.69');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('7', '1', 'Jelly', '3', '$3.69');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('8', '1', 'Chocolate', '5', '$4.59');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('9', '1', 'Strawberry', '4', '$5.89');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('10', '1', 'Cream', '3', '$3.69');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('11', '5', 'Raisin', '2', '$2.59');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('12', '5', 'Chocochip', '3', '$3.99');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('13', '5', 'English', '1', '$1.99');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('14', '2', 'Turkey', '2', '$3.89');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('15', '2', 'Egg and Cheese', '3', '$5.79');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('16', '2', 'Bacon', '4', '$6.19');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('17', '2', 'Veggie Egg', '5', '$1.39');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('18', '4', 'Iced', '4', '$3.19');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('19', '4', 'Green', '4', '$2.09');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('20', '4', 'Peppermint', '2', '$2.99');
INSERT INTO "main"."Product" ("Product_ID", "FK_Category_ID", "Product_Name", "Product_Rating", "Product_Price") VALUES ('21', '4', 'Black', '1', '$3.19');

SELECT * FROM Product;

CREATE TABLE Employee(
  Employee_ID INT primary key,
  Employee_Name TEXT,
  FK_Location_ID INT,
  FOREIGN KEY (FK_Location_ID) REFERENCES Location(Location_ID)
)


INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('1', 'Katrina Cleary', '1');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('2', 'Madden Nicol', '7');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('3', 'Jerimiah Kirsch', '2');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('4', 'Jai Bello', '8');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('5', 'Julisa Koster', '4');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('6', 'Oprah Roig', '2');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('7', 'Ghassan Comstock', '1');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('8', 'Lucid Brown', '7');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('9', 'Yun Haizen', '8');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('10', 'Anup Van', '2');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('11', 'Sharon Reynolds', '10');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('12', 'Sandy Pittman', '3');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('13', 'Priscilla Drake', '4');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('14', 'Travis Butler', '5');
INSERT INTO "main"."Employee" ("Employee_ID", "Employee_Name", "FK_Location_ID") VALUES ('15', 'Monique Mclaughlin', '6');

SELECT * FROM Employee;


CREATE TABLE Customer(
  Customer_ID INT primary key,
  FirstName TEXT,
  LastName TEXT,
  Email TEXT,
  Phone TEXT,
  FK_Location_Id INT,
    FOREIGN KEY (FK_Location_ID) REFERENCES Location(Location_ID)
)

INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('1', 'September', 'Gonzales', 'consequat@icloud.couk', '(663) 516-7409', '1');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('2', 'Melissa', 'Gentry', 'neque.pellentesque.massa@google.net', '1-496-618-4233', '4');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('3', 'Lane', 'Mcdowell', 'mauris.erat@icloud.net', '1-348-354-0000', '7');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('4', 'Hollee', 'Kidd', 'massa.lobortis@aol.edu', '(286) 642-9240', '4');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('5', 'Skyler', 'Holt', 'amet.faucibus.ut@outlook.edu', '(998) 641-6338', '8');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('6', 'Ignatius', 'Leblanc', 'ac.fermentum@protonmail.org', '1-519-625-7558', '3');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('7', 'Kylan', 'Bartlett', 'lectus@outlook.org', '(595) 434-7763', '3');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('8', 'Xavier', 'Hutchinson', 'mauris.erat@hotmail.org', '(666) 383-1432', '3');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('9', 'Addison', 'Navarro', 'malesuada.vel@protonmail.net', '1-421-287-4372', '1');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('10', 'Harrison', 'Robbins', 'aliquet.lobortis.nisi@outlook.ca', '(486) 334-9274', '3');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('11', 'Griffith', 'Mullen', 'id.erat@google.edu', '(819) 636-9553', '5');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('12', 'Wing', 'Gonzalez', 'mauris@protonmail.ca', '1-271-545-2156', '9');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('13', 'Jason', 'Tate', 'risus@google.edu', '1-526-810-6664', '10');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('14', 'Uta', 'Anderson', 'convallis.convallis@google.org', '(703) 539-3108', '4');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('15', 'Paul', 'Harrington', 'cursus.diam@aol.net', '1-754-831-2307', '6');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('16', 'Trevor', 'Medina', 'dictum.phasellus@google.ca', '(322) 308-1977', '2');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('17', 'David', 'Garcia', 'mauris.rhoncus@yahoo.net', '1-745-313-9512', '2');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('18', 'Hope', 'Ross', 'scelerisque@yahoo.com', '(422) 443-9857', '6');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('19', 'Ali', 'Barker', 'quisque.purus.sapien@aol.ca', '(652) 713-9222', '9');
INSERT INTO "main"."Customer" ("Customer_ID", "FirstName", "LastName", "Email", "Phone", "FK_Location_Id") VALUES ('20', 'Malachi', 'Sullivan', 'lacus.etiam@outlook.com', '(850) 840-2858', '9');

SELECT * FROM Customer;

CREATE TABLE Payment(
  Paymentid INT primary KEY,
  Card_no REAL,
  CVV INT,
  Card_Validity TEXT,
  FK_Customer_ID INT,
  FOREIGN KEY (FK_Customer_ID) REFERENCES Customer(Customer_ID)
)

INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('1', '370595000000000.0', '399', '01/07/26', '1');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('2', '374280000000000.0', '291', '01/09/26', '4');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('3', '346524000000000.0', '696', '01/06/23', '6');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('4', '342171000000000.0', '734', '01/11/23', '6');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('5', '345942000000000.0', '924', '01/09/24', '8');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('6', '373667000000000.0', '790', '01/01/26', '9');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('7', '370508000000000.0', '841', '01/12/23', '15');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('8', '342981000000000.0', '690', '01/10/26', '20');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('9', '378333000000000.0', '607', '01/08/25', '4');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('10', '341834000000000.0', '398', '01/07/26', '3');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('11', '4.02401e+15', '217', '01/02/23', '7');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('12', '371477000000000.0', '595', '01/06/26', '11');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('13', '372135000000000.0', '215', '01/05/26', '13');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('14', '341222000000000.0', '759', '01/07/27', '16');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('15', '4.48597e+15', '142', '01/11/23', '17');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('16', '341871000000000.0', '970', '01/05/22', '18');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('17', '347591000000000.0', '849', '01/09/25', '5');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('18', '342896000000000.0', '536', '01/11/21', '2');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('19', '349269000000000.0', '830', '01/10/25', '19');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('20', '349052000000000.0', '624', '01/11/27', '10');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('21', '4.02401e+15', '641', '01/09/25', '14');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('22', '370000000000000.0', '888', '01/02/25', '12');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('23', '346745000000000.0', '218', '01/09/26', '18');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('24', '4.9168e+15', '170', '01/04/28', '2');
INSERT INTO "main"."Payment" ("Paymentid", "Card_no", "CVV", "Card_Validity", "FK_Customer_ID") VALUES ('25', '371219000000000.0', '221', '01/02/23', '19');

SELECT * FROM Payment;

CREATE TABLE "OrderDetails" (
	"Order_ID"	INTEGER primary key,
	"Order_Number"	INTEGER,
	"Order_Status"	TEXT,
	"Date_Ordered"	TEXT,
	"Order_Total_In_Dollar"	INTEGER,
	"FK_employee_id"	INTEGER,
	"FK_Customer_Id"	INTEGER,
	"FK_Payment_Id"	INTEGER,
	"FK_Rating_Id"	INTEGER,
	"FK_Location_Id"	INTEGER,
	"FK_Category_Id"	INTEGER,
	FOREIGN KEY (FK_employee_id) REFERENCES Employee(employee_id),
	FOREIGN KEY (FK_Customer_Id) REFERENCES Customer(Customer_Id),
	FOREIGN KEY (FK_Payment_Id) REFERENCES Payment(PaymentId),
	FOREIGN KEY (FK_Rating_Id) REFERENCES Rating(RatingId),
	FOREIGN KEY (FK_Location_Id) REFERENCES Location(Location_Id),
	FOREIGN KEY (FK_Category_Id) REFERENCES Category(Category_Id)
)


INSERT INTO "main"."OrderDetails" ("Order_ID", "Order_Number", "Order_Status", "Date_Ordered", "Order_Total_In_Dollar", "FK_employee_id", "FK_Customer_Id", "FK_Payment_Id", "FK_Rating_Id", "FK_Location_Id", "FK_Category_Id") VALUES ('1', '321', 'Completed', '10/07/21', '3.19', '1', '3', '3', '5', '6', '5');
INSERT INTO "main"."OrderDetails" ("Order_ID", "Order_Number", "Order_Status", "Date_Ordered", "Order_Total_In_Dollar", "FK_employee_id", "FK_Customer_Id", "FK_Payment_Id", "FK_Rating_Id", "FK_Location_Id", "FK_Category_Id") VALUES ('2', '367', 'Pending', '10/14/21', '3.69', '4', '6', '7', '3', '7', '3');
INSERT INTO "main"."OrderDetails" ("Order_ID", "Order_Number", "Order_Status", "Date_Ordered", "Order_Total_In_Dollar", "FK_employee_id", "FK_Customer_Id", "FK_Payment_Id", "FK_Rating_Id", "FK_Location_Id", "FK_Category_Id") VALUES ('3', '354', 'Completed', '11/12/21', '4.59', '6', '7', '10', '3', '1', '3');
INSERT INTO "main"."OrderDetails" ("Order_ID", "Order_Number", "Order_Status", "Date_Ordered", "Order_Total_In_Dollar", "FK_employee_id", "FK_Customer_Id", "FK_Payment_Id", "FK_Rating_Id", "FK_Location_Id", "FK_Category_Id") VALUES ('4', '141', 'Completed', '12/04/21', '1.85', '8', '3', '25', '4', '10', '1');
INSERT INTO "main"."OrderDetails" ("Order_ID", "Order_Number", "Order_Status", "Date_Ordered", "Order_Total_In_Dollar", "FK_employee_id", "FK_Customer_Id", "FK_Payment_Id", "FK_Rating_Id", "FK_Location_Id", "FK_Category_Id") VALUES ('5', '266', 'Completed', '12/05/21', '1.99', '12', '3', '22', '1', '9', '1');
INSERT INTO "main"."OrderDetails" ("Order_ID", "Order_Number", "Order_Status", "Date_Ordered", "Order_Total_In_Dollar", "FK_employee_id", "FK_Customer_Id", "FK_Payment_Id", "FK_Rating_Id", "FK_Location_Id", "FK_Category_Id") VALUES ('6', '211', 'Pending', '9/26/21', '5.79', '14', '11', '16', '4', '5', '5');
INSERT INTO "main"."OrderDetails" ("Order_ID", "Order_Number", "Order_Status", "Date_Ordered", "Order_Total_In_Dollar", "FK_employee_id", "FK_Customer_Id", "FK_Payment_Id", "FK_Rating_Id", "FK_Location_Id", "FK_Category_Id") VALUES ('7', '341', 'Pending', '10/05/21', '1.39', '15', '19', '8', '2', '7', '2');
INSERT INTO "main"."OrderDetails" ("Order_ID", "Order_Number", "Order_Status", "Date_Ordered", "Order_Total_In_Dollar", "FK_employee_id", "FK_Customer_Id", "FK_Payment_Id", "FK_Rating_Id", "FK_Location_Id", "FK_Category_Id") VALUES ('8', '201', 'Pending', '11/08/21', '2.09', '2', '1', '5', '5', '2', '4');
INSERT INTO "main"."OrderDetails" ("Order_ID", "Order_Number", "Order_Status", "Date_Ordered", "Order_Total_In_Dollar", "FK_employee_id", "FK_Customer_Id", "FK_Payment_Id", "FK_Rating_Id", "FK_Location_Id", "FK_Category_Id") VALUES ('9', '286', 'Completed', '11/24/21', '3.19', '2', '9', '7', '1', '5', '4');
INSERT INTO "main"."OrderDetails" ("Order_ID", "Order_Number", "Order_Status", "Date_Ordered", "Order_Total_In_Dollar", "FK_employee_id", "FK_Customer_Id", "FK_Payment_Id", "FK_Rating_Id", "FK_Location_Id", "FK_Category_Id") VALUES ('10', '378', 'Completed', '12/03/21', '1.85', '6', '10', '2', '5', '1', '1');

SELECT * FROM OrderDetails;

####JOIN####

SELECT Category.CategoryName,Product.Product_Name, Product.Product_Rating
FROM Category
join Product
on Category.Category_ID=Product.FK_Category_ID
WHERE Product.Product_Rating>2;


SELECT DISTINCT Customer.FirstName,Customer.LastName,Customer.FK_Location_Id,Employee.Employee_Name
from Customer
JOIN Employee
on Customer.FK_Location_Id=Employee.FK_Location_ID
LIMIT 5;

SELECT OrderDetails.Order_Number,OrderDetails.Order_Status, Customer.FirstName, Customer.LastName
FROM OrderDetails
JOIN Customer
ON OrderDetails.FK_Customer_Id=Customer.Customer_ID;

SELECT DISTINCT OrderDetails.FK_employee_id, Employee.Employee_Name, OrderDetails.Order_Total_In_Dollar
FROM Employee
JOIN OrderDetails
on Employee.Employee_ID=OrderDetails.FK_employee_id
order by Order_Total_In_Dollar desc limit 5;

##############

SELECT Customer.FirstName, Customer.LastName, Customer.Email, Location.Location_Name
FROM Customer
JOIN Location
on Customer.FK_Location_Id=Location.Location_ID
ORDER BY Location_ID ASC;

SELECT Customer.FirstName, Customer.LastName, Payment.Card_Validity
FROM Customer
JOIN Payment 
on Customer.Customer_ID=Payment.FK_Customer_ID
WHERE Card_Validity = '01/10/26';

 # summary of employees who delivered orders of more than $2
Select distinct Employee.Employee_Name, Category.CategoryName, OrderDetails.Order_Total_In_Dollar
FROM OrderDetails 
JOIN Employee 
on OrderDetails.FK_employee_id=Employee.Employee_ID
JOIN Category
on OrderDetails.FK_Category_Id=Category.Category_ID
where OrderDetails.Order_Total_In_Dollar > 2;


# Summary of customers who ordered orders of more than $2
SELECT distinct customer.FirstName,customer.LastName, Category.CategoryName,OrderDetails.Order_Total_In_Dollar
FROM Product
JOIN Category on
Product.FK_Category_ID = Category.Category_ID
JOIN OrderDetails on
OrderDetails.FK_Category_Id=Category.Category_ID
join customer 
on OrderDetails.FK_Customer_ID=customer.Customer_ID
where OrderDetails.Order_Total_In_Dollar>2;


SELECT Customer.FirstName, Customer.LastName, Payment.*
FROM Customer
JOIN Payment 
on Customer.Customer_ID=Payment.FK_Customer_ID;

SELECT Category.CategoryName, Product_Name, Product_Rating
FROM Product
JOIN Category
on Product.Product_ID=Category.Category_ID
WHERE Product.Product_Rating > 2;

SELECT Customer.FirstName, Customer.LastName, Location.Location_Name
FROM Customer
JOIN Location
on Customer.FK_Location_Id=Location.Location_ID
ORDER BY Location_ID ASC;



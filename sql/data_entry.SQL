-- ADD CATEGORIES NIGGAZ

INSERT INTO Categories VALUES (cat_seq.NEXTVAL, 'Drinks', 'Hot and Cold');

--ADD PRODUCTS NIGGAZ

INSERT INTO Products (Product_ID, Name, Price, Category_ID_fk, Cost, Available) 
VALUES (prod_seq.NEXTVAL, 'Latte', 55.00, cat_seq.CURRVAL, 20.00, 'Yes');

-- ADD EMPLOYEES NIGGAZ

INSERT INTO Employees VALUES (emp_seq.NEXTVAL, 'Ammar', '01012345678', 'Manager', 15000);

-- SAVE IT NIGGA

COMMIT;
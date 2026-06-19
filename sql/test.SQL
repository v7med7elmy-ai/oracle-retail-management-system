SELECT table_name FROM user_tables WHERE table_name IN ('CATEGORIES', 'CUSTOMERS', 'EMPLOYEES', 'PRODUCTS', 'ORDERS', 'ORDER_ITEMS', 'PAYMENTS');


SELECT p.Name as Product, c.Category_Name as Category, p.Price
FROM Products p
JOIN Categories c ON p.Category_ID_fk = c.Category_ID;


CREATE OR REPLACE TRIGGER trg_calc_item_total
BEFORE INSERT OR UPDATE ON Order_Items
FOR EACH ROW
BEGIN
    -- بيضرب الكمية في سعر الوحدة ويحط الناتج في الإجمالي
    :NEW.Total_Price := :NEW.Quantity * :NEW.Unit_Price;
END;


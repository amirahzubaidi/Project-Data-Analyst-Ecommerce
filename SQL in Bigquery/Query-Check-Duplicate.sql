--Mengecek duplicate pada masing-masing kolom

SELECT 
      id,
      customer_id,
      order_date,
      sku_id,
      price,
      qty_ordered,
      before_discount,
      discount_amount,
      after_discount,
      is_gross,
      is_valid,
      is_net,
      payment_id, COUNT(*)
FROM 
      `tokopedia.order_detail`
GROUP BY 
      id,
      customer_id,
      order_date,
      sku_id,
      price,
      qty_ordered,
      before_discount,
      discount_amount,
      after_discount,
      is_gross,
      is_valid,
      is_net,
      payment_id
HAVING COUNT(*) > 1;


--Mengecek duplicate pada masing-masing kolom

SELECT 
      id,
      registered_date, COUNT(*)
FROM 
      `tokopedia.cust_detail`
GROUP BY 
     id,
     registered_date
HAVING COUNT(*) > 1;

----

SELECT 
      id,
      payment_method, COUNT(*)
FROM 
      `tokopedia.payment_detail`
GROUP BY 
     id,
     payment_method
HAVING COUNT(*) > 1;

----

SELECT 
      id,
      sku_name,
      base_price,
      cogs,
      category, COUNT(*)
FROM 
      `tokopedia.sku_detail`
GROUP BY 
     id,
     sku_name,
     base_price,
     cogs,
     category
HAVING COUNT(*) > 1;

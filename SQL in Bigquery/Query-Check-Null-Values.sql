--Mengecek apalah di setiap tabel terdapat nilai null 

SELECT 
      * 
FROM 
      `tokopedia.cust_detail`
WHERE id IS NULL OR 
      registered_date IS NULL;

------

SELECT 
      * 
FROM 
      `tokopedia.order_detail`
WHERE id IS NULL OR 
      customer_id IS NULL OR 
      order_date IS NULL OR 
      sku_id IS NULL OR 
      price IS NULL OR 
      qty_ordered IS NULL OR 
      before_discount IS NULL OR 
      discount_amount IS NULL OR 
      after_discount IS NULL OR 
      is_gross IS NULL OR 
      is_valid IS NULL OR 
      is_net IS NULL OR 
      payment_id IS NULL;

----

SELECT 
      * 
FROM 
      `tokopedia.payment_detail`
WHERE id IS NULL OR 
      payment_method IS NULL;


--

SELECT 
      * 
FROM `tokopedia.sku_detail`
WHERE id IS NULL OR 
      sku_name IS NULL OR 
      base_price IS NULL OR 
      cogs IS NULL OR 
      category IS NULL;

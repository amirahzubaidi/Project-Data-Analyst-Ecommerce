--soal nomor 1

SELECT 
    EXTRACT(MONTH FROM order_date) AS transaction_month,
    ROUND(SUM(after_discount)) AS total_transaction
FROM 
    `tokopedia.order_detail`
WHERE 
    EXTRACT(YEAR FROM order_date) = 2021
    AND is_valid = 1
GROUP BY 
    1
ORDER BY 
    total_transaction DESC
LIMIT 
    1;


--soal no 2

select
    s.category,
    extract(year from o.order_date) as sales_year,
    round(sum(o.after_discount)) as total_sales
from
    `tokopedia.sku_detail`s
left join 
    `tokopedia.order_detail`o on s.id = o.sku_id
where
    extract(year from o.order_date) = 2022
    and is_valid = 1
group by
    s.category, sales_year
order by 
    total_sales desc
limit 
    5;

--soal no 3

WITH transaksi AS (
    SELECT 
        sd.category,
        SUM(CASE WHEN EXTRACT(YEAR FROM od.order_date) = 2021 THEN after_discount ELSE 0 END) AS transaksi_2021,
        SUM(CASE WHEN EXTRACT(YEAR FROM od.order_date) = 2022 THEN after_discount ELSE 0 END) AS transaksi_2022
    FROM `tokopedia.order_detail` od
    JOIN `tokopedia.sku_detail` sd ON od.sku_id = sd.id
    WHERE od.is_valid = 1
    GROUP BY sd.category
)
SELECT 
    category, 
    transaksi_2021, 
    transaksi_2022, 
    transaksi_2022 - transaksi_2021 AS pertumbuhan,
    CASE 
        WHEN transaksi_2022 > transaksi_2021 THEN 'Meningkat' 
        ELSE 'Menurun' 
    END AS keterangan
FROM transaksi
ORDER BY pertumbuhan DESC;

--soal no 4

select
    pd.payment_method as metode_pembayaran,
    count(distinct od.id) as total_transaksi
from
    `tokopedia.order_detail` as od 
left join 
    `tokopedia.payment_detail`as pd on od.payment_id = pd.id 
where
    extract(year from od.order_date) = 2022 
    and od.is_valid = 1 
group by 
    1 
order by 
    2 desc 
limit 
    5;


--soal no 5

SELECT 
    CASE 
        WHEN LOWER(sd.sku_name) LIKE '%samsung%' THEN 'Samsung'
        WHEN LOWER(sd.sku_name) LIKE '%sony%' THEN 'Sony'
        WHEN LOWER(sd.sku_name) LIKE '%huawei%' THEN 'Huawei'
        WHEN LOWER(sd.sku_name) LIKE '%lenovo%' THEN 'Lenovo'
        WHEN LOWER(sd.sku_name) LIKE '%apple%' THEN 'Apple'
        ELSE 'Lainnya'
    END AS merek,
    SUM(od.after_discount) AS total_transaksi
FROM `tokopedia.order_detail` od
JOIN `tokopedia.sku_detail` sd ON od.sku_id = sd.id
WHERE od.is_valid = 1
GROUP BY merek
HAVING merek <> 'Lainnya'
ORDER BY total_transaksi DESC;

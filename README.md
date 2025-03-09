## Project-Data-Analyst-Ecommerce
### Project Description
1.Data Analysis using SQL in BigQuery
Kami menggunakan SQL untuk mengelola dan menganalisis data dengan menyusun query guna menggabungkan tabel dan melakukan perhitungan statistik. Proses ini membantu mengidentifikasi pola dan tren dalam dataset.
2.Data Analysis using Python in Google Colab
Python digunakan untuk mengotomatisasi analisis data dan visualisasi dengan Pandas dan Matplotlib. Kami memproses data, membuat model prediktif, dan menghasilkan grafik untuk mendukung pengambilan keputusan.
3.Data Visualization in Looker Studio 
Kami membuat dashboard interaktif di Looker Studio untuk menyajikan data secara visual. Grafik dan filter diterapkan guna menganalisis metrik penting seperti penjualan dan profit, sehingga laporan lebih informatif dan mudah dipahami.

### Project Details
Untuk penjelasan lebih lanjut, bisa akses link berikut ini: 
1. Data Analytics Using SQL in Bigquery
Issue Definitions:
- Selama transaksi yang terjadi selama 2021, pada bulan apa total nilai transaksi (after_discount) paling besar?
- Selama transaksi pada tahun 2022, kategori apa yang menghasilkan nilai transaksi paling besar?
- Bandingkan nilai transaksi dari masing-masing kategori pada tahun 2021 dengan 2022. Sebutkan kategori apa saja yang mengalami peningkatan dan kategori apa yang mengalami penurunan nilai transaksi dari tahun 2021 ke 2022
- Tampilkan top 5 metode pembayaran yang paling populer digunakan selama 2022 (berdasarkan total unique order).
- Urutkan dari ke-5 produk ini berdasarkan nilai transaksinya. 1. Samsung 2. Apple 3. Sony 4. Huawei 5. Lenovo

#### Results & Interpretations (Number 1): <br> <br>
![alt text](https://github.com/amirahzubaidi/Project-Data-Analyst-Ecommerce/blob/main/SQL%20in%20Bigquery/Screenshot%20Query%20%26%20Result/Query%20no%201.png?raw=true)

<br> 

![alt text](https://github.com/amirahzubaidi/Project-Data-Analyst-Ecommerce/blob/main/SQL%20in%20Bigquery/Screenshot%20Query%20%26%20Result/Result%20no%201.png?raw=true)
<br>Insight: Pada bulan Agustus 2021 (bulan ke-8), tercatat jumlah transaksi tertinggi sepanjang tahun, mencapai 227.862.744.
   
#### Results & Interpretations (Number 2): <br> <br>
![alt text](https://github.com/amirahzubaidi/Project-Data-Analyst-Ecommerce/blob/main/SQL%20in%20Bigquery/Screenshot%20Query%20%26%20Result/Query%20no%202.png?raw=true)

<br> 

![alt text](https://github.com/amirahzubaidi/Project-Data-Analyst-Ecommerce/blob/main/SQL%20in%20Bigquery/Screenshot%20Query%20%26%20Result/Result%20no%202.png?raw=true)
<br>Insight: Kategori Mobile & Tablets mencatat nilai transaksi tertinggi sepanjang tahun 2022, dengan total transaksi sebesar 918.451.576, Fakta ini mengungkapkan bahwa produk elektronik, khususnya ponsel dan tablet, memiliki tingkat permintaan yang tinggi di pasar.

#### Results & Interpretations (Number 3): <br> <br>
![alt text](https://github.com/amirahzubaidi/Project-Data-Analyst-Ecommerce/blob/main/SQL%20in%20Bigquery/Screenshot%20Query%20%26%20Result/Query%20no%203.png?raw=true)

<br>

![alt text](https://github.com/amirahzubaidi/Project-Data-Analyst-Ecommerce/blob/main/SQL%20in%20Bigquery/Screenshot%20Query%20%26%20Result/Result%20no%203.png?raw=true)
Insight: Data menunjukkan bahwa pada tahun 2022 dibandingkan 2021, terjadi peningkatan transaksi pada kategori Mobiles & Tablets, Entertainment, Appliances, Men Fashion, Computing, Home & Living, Health & Sport, Women Fashion, School & Education, Superstore, Soghaat, Kids & Baby, serta Beauty & Grooming. Sebaliknya, kategori Others dan Books mengalami penurunan.

#### Results & Interpretations (Number 4): <br> <br>
![alt text](https://github.com/amirahzubaidi/Project-Data-Analyst-Ecommerce/blob/main/SQL%20in%20Bigquery/Screenshot%20Query%20%26%20Result/Query%20no%204.png?raw=true)

<br>

![alt text](https://github.com/amirahzubaidi/Project-Data-Analyst-Ecommerce/blob/main/SQL%20in%20Bigquery/Screenshot%20Query%20%26%20Result/Result%20no%204.png?raw=true)
<br> Insight: berdasarkan data yang diperoleh, berikut adalah metode pembayaran yang paling sering digunakan oleh konsumen pada tahun 2022:
<br> COD: 1809 transaksi (86,56%)
<br> Payaxis: 181 transaksi (8,67%)
<br> Customercredit: 75 transaksi (3,59%)
<br> Easypay: 69 transaksi (3,30%)
<br> Jazzwallet: 26 transaksi (1,24%)

#### Results & Interpretations (Number 5): <br> <br>
![alt text](https://github.com/amirahzubaidi/Project-Data-Analyst-Ecommerce/blob/main/SQL%20in%20Bigquery/Screenshot%20Query%20%26%20Result/Query%20no%205.png?raw=true)

<br>

![alt text](https://github.com/amirahzubaidi/Project-Data-Analyst-Ecommerce/blob/main/SQL%20in%20Bigquery/Screenshot%20Query%20%26%20Result/Result%20no%205.png?raw=true)
Insight: berikut adalah lima produk teratas berdasarkan nilai transaksi:
<br> Samsung: 588.764.148 (45,98%)
<br> Apple: 213310040 (21,52%)
<br> Sony: 63.960.718 (6,45%)
<br> Huawei: 63.160.260 (6,37%)
<br> Lenovo: 62.379.800,4 (6,29%)





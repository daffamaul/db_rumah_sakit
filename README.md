# db_rumah_sakit

### 1.MENJELASKAN KARDINALITAS ANTAR TABEL
Kardinalitas antar tabel dalam basis data mengacu pada hubungan antara jumlah baris dalam satu tabel dengan jumlah baris dalam tabel lainnya dalam suatu relasi. Kardinalitas ini dapat dinyatakan dalam notasi 1:1, 1:N, N:1, atau N:M, yang masing-masing menggambarkan hubungan satu-satu, satu-banyak, banyak-satu, atau banyak-banyak antara dua tabel

### 2.MENAMPILKAN HASIL DARI QUERY
Untuk menampilkan hasil dari query, Anda perlu menentukan query yang ingin dieksekusi terlebih dahulu. Kemudian, Anda dapat menggunakan perangkat lunak basis data atau bahasa pemrograman seperti SQL untuk mengeksekusi query tersebut dan menampilkan hasilnya. Contoh query SQL sederhana untuk menampilkan semua data dari tabel "customers" adalah sebagai berikut:
'''sql <SELECT * FROM customers;>'''

Hasil query ini akan menampilkan semua data dari tabel "customers". Namun, query yang lebih kompleks dapat digunakan untuk menampilkan data yang lebih spesifik atau untuk melakukan operasi lain pada data.

### 3. MENJELASKAN QUERY UNTUK TABEL
Query untuk tabel adalah perintah yang digunakan untuk mengakses data dari tabel dalam database. Salah satu contoh query untuk tabel adalah perintah SELECT, yang digunakan untuk menampilkan data dari suatu tabel 1,2,3
. Perintah SELECT diikuti oleh nama kolom yang ingin ditampilkan dan nama tabel yang ingin diakses. Contoh perintah SELECT untuk menampilkan semua kolom dari tabel mahasiswa adalah sebagai berikut:
'''sql<SELECT * FROM mahasiswa;>

### 4. MENJELASKAN QUERY UNTUK CRUD
Query untuk CRUD (Create, Read, Update, Delete) adalah perintah yang digunakan untuk melakukan operasi dasar pada data dalam database. Perintah CREATE digunakan untuk membuat tabel baru, sedangkan perintah ALTER digunakan untuk mengubah struktur tabel yang sudah ada
- Perintah SELECT digunakan untuk menampilkan data dari tabel, sedangkan perintah UPDATE digunakan untuk memperbarui data yang sudah ada
- Perintah DELETE digunakan untuk menghapus data dari tabel
- Contoh perintah CRUD untuk menambahkan data ke tabel mahasiswa adalah sebagai berikut:

'''SQL<INSERT INTO mahasiswa (nama, umur, alamat) VALUES ('John Doe', 20, 'Jl. Sudirman No. 123');>

Perintah di atas akan menambahkan data baru ke tabel mahasiswa dengan nama 'John Doe', umur 20, dan alamat 'Jl. Sudirman No. 123'.
# 1. create (membuat tabel baru)
'''sql<CREATE TABLE nama_tabel (kolom1 tipe_data1,kolom2 tipe_data2,...);>

# 2. read(membaca data dari tabel)
'''sql<SELECT kolom1, kolom2, ... FROM nama_tabel;>

# 3. update(mengubah data yang ada di dalam tabel)
'''sql<UPDATE nama_tabel SET kolom1 = nilai1, kolom2 = nilai2, ... WHERE kondisi;>

# 4.delete(menghapus data dari tabel)
'''sql<DELETE FROM nama_tabel WHERE kondisi;>

- Untuk melakukan operasi CRUD pada tabel, kita dapat menggunakan perintah-perintah di atas dengan menggabungkannya dengan kondisi-kondisi tertentu. Kondisi-kondisi ini dapat digunakan untuk memfilter data yang akan diambil, diubah, atau dihapus
- Selain itu, query juga dapat digunakan untuk melakukan operasi penggabungan (join) antara dua atau lebih tabel dalam database. Operasi penggabungan ini dapat dilakukan dengan menggunakan perintah JOIN

### 5. MENJELASKAN QUERY UNTUK JOINING
joining adalah cara untuk menggabungkan data yang diambil dari tabel-tabel melalui sebuah kolom yang menghubungkan mereka. Terdapat beberapa jenis join yang ada pada SQL, antara lain:

- INNER JOIN: melakukan join hanya pada observasi dengan elemen kunci yang sama-sama ada pada kedua tabel.
- LEFT JOIN: menggabungkan seluruh baris pada tabel kiri dan sebagian baris pada tabel kanan yang elemen kuncinya cocok dengan tabel kiri.
- RIGHT JOIN: kebalikan dari LEFT JOIN.
- FULL JOIN: menggabungkan seluruh observasi pada kedua tabel melalui kolom elemen kunci.

Berikut adalah contoh query untuk melakukan INNER JOIN pada tabel Barang dan Pesanan dengan menggabungkan seluruh kolom pada kedua tabel dan hanya menampilkan kolom id_barang, nama, varian, dan tgl_pesan

'''sql<SELECT Barang.id_barang, Barang.nama, Barang.varian, Pesanan.tgl_pesan FROM Barang INNER JOIN Pesanan ON Pesanan.id_barang = Barang.id_barang;>

Selain itu, terdapat beberapa best practices yang dapat diterapkan saat menulis SQL JOIN, antara lain:
- Menentukan tipe join yang tepat untuk menghasilkan data yang diinginkan.
- Menentukan urutan tabel yang tepat untuk mengoptimalkan kinerja query.
- Menggunakan alias tabel untuk mempersingkat penulisan query.
- Menggunakan ON clause daripada WHERE clause untuk menentukan kriteria join.
- Menghindari penggunaan SELECT * dan hanya memilih kolom yang diperlukan.
- Menggunakan indeks pada kolom yang digunakan sebagai elemen kunci pada join.
- Menggunakan subquery atau CTE untuk menghindari nested join yang berlebihan
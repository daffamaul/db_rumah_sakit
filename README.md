# BASIS DATA ANTRIAN RUMAH SAKIT (KELOMPOK 4)

## Anggota Kelompok

- ABID LU'AY RAIHAN TAUFIK (ERD)
- HADI PERMANA (DDL)
- RAFI MAULANA FIRDAUS (CRUD)
- MUHAMAD DAFFA MAULANA ARRASYID (SQL JOIN)
- RIFA ANDIANI MEILAWATI YULIANTO (LAPORAN)

## PENJELASAN ERD

![ERD](/img/Antrian%20pasien%20klinik.jpg)

Pada kardinalitas antara tabel antrian (1) dan tabel loket (n) adalah one-to-many. Maksudnya, data pada id_pelayanan dapat dimiliki oleh beberapa dari data id_antrian atau satu pasien bisa memiliki layanan yang sama dengan pasien lainnya. Begitupun dengan kardinalitas tabel loket (n) dan tabel jenis pelayanan. Pada loket dapat memiliki beberapa layanan sesuai dengan kebutuhan pasien.

## PENJELASAN DDL

![table_antrian](/img/table_antrian.png)

Pada tabel antrian, memiliki 6 kolom dan setiap kolom memiliki tipe data seperti `varchar`,`enum()` dan `int`. `varchar` digunakan untuk menerima data berupa kalimat, `enum()` digunakan untuk menerima data berdasarkan ketentuan (misal: `enum('P','L')`) selain itu data tidak dapat dimasukkan, `int` menerima data hanya berupa angka.

Penentuan `primary key` diberikan pada kolom `id` sebagai pembeda dari data-data lainnya (karakteristik).

![table_jenis_pelayann](/img/table_jenis_pelayanan.png)

Pada tabel ini, memiliki 7 kolom dan setiap kolom memiliki tipe data seperti `varchar`, `date` dan `time`. Karena `varchar` sudah dibahas, fokus kita hanya membahas tipe data `date` dan `time` yang digunakan untuk mennujukan waktu dan jam. Format untuk `date` adalah `YYYY-MM-DD` dan `time` adalah `00:00:00`.

![table](/img/table_loket.png)

Tabel ini bisa juga disebut **Lookup Table** yang artinya tabel tersebut dapat menampung data-data tersebut dari tabel yang berelasi. Tabel ini memiliki 3 kolom dan setiap kolom memiliki tipe data seperti `varchar` dan `timestamp`. Untuk `timestamp` dengan default `current_timestamp()` yang maksudnya adalah ketika data tersebut dimasukkan, maka secara otomatis data tersebut memiliki waktu dengan format `YYYY-MM-DD 00:00:00`.

Terdapat **MUL** pada kolom **Key** yang artinya kolom tersebut memiliki kunci asing atau disebut **Foreign Key** yang menjadi referensi data dari tabel yang saling berelasi.

## PENJELASAN CRUD (Create, Read, Update, Delete)

```sql
INSERT INTO table_name (column1, ...) VALUES (data);
```

Diatas adalah Query untuk membuat data. Arti dari Query tersebut adalah masukkan data ke dalam sebuah tabel yang memiliki kolom dengan mengisikan kolom tersebut dengan data yang diberikan.

```sql
SELECT * FROM table_name;
```

Diatas adalah Query untuk membaca data. Arti dari Query tersebut adalah seleksi semua kolom dari sebuah tabel

```sql
UPDATE table_name SET column = value WHERE id = value;
```

Diatas adalah Query untuk mengubah data. Arti dari Query tersebut adalah ubah data dari sebuah tabel dengan berisikan data untuk kolom yang ditentukan yang mana kolom tersebut memiliki identitas dengan nilai tertentu.

```sql
DELETE FROM table_name WHERE id = value;
```

Diatas adalah Query untuk menghapus data. Arti dari Query tersebut adalah hapus data dari sebuah tabel yang mana kolom tersebut memiliki identitas dengan nilai tertentu.

## PENJELASAN SQL JOIN

```sql
SELECT * FROM jenis_pelayanan INNER JOIN loket ON jenis_pelayanan.id =loket.id_pelayanan;
```

Query tersebut menghasilkan gabungan kedua tabel dari tabel jenis pelayanan dan loket dengan seluruh kolom.

![join-1](/img/join-1.png)

```sql
SELECT * FROM antrian INNER JOIN loket ON antrian.id =loket.id_antrian;
```

Query tersebut menghasilkan gabungan kedua tabel dari tabel antrian dan loket dengan seluruh kolom.

![join-2](/img/join-2.png)

```sql
SELECT
jenis_pelayanan.nama_pelayanan,
jenis_pelayanan.nama_dokter,
jenis_pelayanan.tanggal,
jenis_pelayanan.jam_buka,
jenis_pelayanan.jam_tutup,
loket.waktu_daftar,
antrian.nama_pasien,
antrian.jenis_kelamin,
antrian.umur,
antrian.riwayat_penyakit,
antrian.nomor_antrian
FROM ((jenis_pelayanan INNER JOIN loket ON jenis_pelayanan.id =loket.id_pelayanan) INNER JOIN antrian ON loket.id_antrian = antrian.id);
```

Query tersebut menghasilkan gabungan ketiga tabel dari tabel antrian, jenis pelayanan dan loket dengan kolom yang telah ditentukan untuk ditampilkan.

![join-3](/img/join-3.png)

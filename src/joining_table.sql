use klinik;

-- Joining 2 Tables
select * from jenis_pelayanan inner join loket on jenis_pelayanan.id =loket.id_pelayanan;
select * from antrian inner join loket on antrian.id =loket.id_antrian;

-- Joining 3 Tables
select 
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
from ((jenis_pelayanan inner join loket on jenis_pelayanan.id =loket.id_pelayanan) inner join antrian on loket.id_antrian = antrian.id);
show databases;
use klinik;

show tables;

select * from antrian;
insert into antrian (id,nama_pasien,jenis_kelamin,umur,riwayat_penyakit,nomor_antrian) values
("A001", "Hadi Permana", "L", 18, "Asam Lambung", 19),
("A002", "Rafi Maulana Firdaus", "L", 19, "Sakit Kepala", 20),
("A003", "Daffa Maulana", "L", 18, "Asam Lambung", 21),
("A004", "Rifa Andiani", "P", 19, "Flu", 22),
("A005", "Abid Luay Raihan", "L", 19, "Sakit Gigi", 23);

select * from jenis_pelayanan;
insert into jenis_pelayanan (id,nama_pelayanan,nama_dokter,tanggal,hari,jam_buka,jam_tutup) values
("JP01", "Poli Umum", "Dito Ridwansyah", "2023-06-28", "Rabu", "08:00:00", "12:00:00"),
("JP02", "Poli Gigi", "Dzaki Abbiyu", "2023-06-28", "Rabu", "13:00:00", "15:00:00");

select * from loket;
insert into loket (id_antrian, id_pelayanan) values
("A001", "JP01"),
("A002", "JP01"),
("A003", "JP01"),
("A004", "JP01"),
("A005", "JP02");

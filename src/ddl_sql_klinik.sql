create database klinik;
use klinik;

create table jenis_pelayanan(id varchar(10), nama_pelayanan VARCHAR(30), nama_dokter varchar(30), tanggal DATE, hari VARCHAR(10), jam_buka TIME, jam_tutup TIME);
create table loket(id_antrian VARCHAR(10), id_pelayanan VARCHAR(10), waktu_daftar TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
create table antrian(id VARCHAR(10), nama_pasien VARCHAR(30), jenis_kelamin ENUM("P", "L"), umur INT(11), riwayat_penyakit varchar(20), nomor_antrian INT(11));

alter table jenis_pelayanan add primary key (id);
alter table antrian add primary key (id);

alter table loket add constraint fk_loket_antrian foreign key (id_antrian) references antrian (id);
alter table loket add constraint fk_loket_jenis_pelayanan foreign key (id_pelayanan) references jenis_pelayanan (id);
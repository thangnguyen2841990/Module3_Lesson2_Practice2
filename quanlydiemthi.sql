create database QuanLyDiemThi;
use QuanLyDiemThi;
create table HocSinh(
MaHS varchar(20) primary key,
TenHS varchar(50) not null,
Lop varchar(20) not null,
GT varchar(20)
);
create table MonHoc(
MaMH varchar(20) primary key,
TenMH varchar(50)
);
create table BangDiem(
MaHS varchar(20),
MaMH varchar(20),
DiemThi int,
NgayKTra datetime,
primary key (MaHS,MAMH),
foreign key (MaHS) references HocSinh(MaHS),
foreign key (MAMH) references MONHOC(MAMH)
);
create table GiaoVien(
MaGv varchar(20) primary key,
TenGV varchar(50),
SDT varchar(20)
);
alter table MonHoc add MaGv varchar(20);
alter table Monhoc add foreign key (MaGv) references GiaoVien(MAgV);giaovien
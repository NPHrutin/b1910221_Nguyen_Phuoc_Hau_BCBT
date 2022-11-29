-- dataBase : dbtree
use dbtree;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE nguoidung (
    id_user INT PRIMARY KEY,
    ten VARCHAR(20) NOT NULL,
    ho VARCHAR(20) NOT NULL,
    diachi VARCHAR(100),
    gioitinh VARCHAR(5),
    namsinh DATE NOT NULL,
    id_img int,
    FOREIGN KEY (id_img)
        REFERENCES hinhanh (id_img)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE dangnhap (
    id_dn INT PRIMARY KEY,
    tendn VARCHAR(30),
    matkhau VARCHAR(30),
    id_user INT,
    FOREIGN KEY (id_user)
        REFERENCES nguoidung (id_user)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;


DROP TABLE sanpham;
CREATE TABLE sanpham (
    id_sp INT NOT NULL PRIMARY KEY,
    ten VARCHAR(50) NOT NULL,
    mota VARCHAR(1000) NOT NULL,
    gia INT CHECK (gia > 0),
    loai varchar(30),
    url varchar(255),
    soluong int CHECK (soluong > 0),
    ban int CHECK (ban >= 0)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

create table trangchu(
	id_tc int primary key,
    url varchar(50) not null ,
    mota varchar(300)
)ENGINE=INNODB DEFAULT CHARSET=UTF8;

-- CREATE TABLE loaicay (
--     loai VARCHAR(30) primary key
-- )  ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE hinhanh (
    id_img INT PRIMARY KEY,
    url VARCHAR(100) NOT NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

-- CREATE TABLE loaihinh (
--    loai varchar(30) primary key
-- )ENGINE=INNODB DEFAULT CHARSET=UTF8;



insert into sanpham (id_sp , ten ,mota ,gia, loai,url ,soluong,ban)
values(10,'Sen Đá Hồng Xanh','Sen đá phật bà là sen đá phổ biến nhất hiện nay,
chúng có nhiều lá mọc xay quanh tròn đều quanh trục thân trong rất đẹp và nhin như một đó 
sen . sen đá phật bà gợi đến hình ảnh đức phật Đức Phật Quan Âm nghìn mắt nghìn tai', 15000 ,'sen đá','https://i.pinimg.com/474x/22/8a/dc/228adc9782e1d692e78fd487d2358cb3.jpg',100,0),
	  (2,'Sen Đá Lá Thơm','Sen đá phật bà là sen đá phổ biến nhất hiện nay,
chúng có nhiều lá mọc xay quanh tròn đều quanh trục thân trong rất đẹp và nhin như một đó 
sen . sen đá phật bà gợi đến hình ảnh đức phật Đức Phật Quan Âm nghìn mắt nghìn tai', 20000,'sen đá','https://i.pinimg.com/474x/2b/86/19/2b8619b5c86ab9776407a7213b3c1054.jpg',100,0),
      (3,'Sen Đá Hồng Đỏ','Sen đá phật bà là sen đá phổ biến nhất hiện nay,
chúng có nhiều lá mọc xay quanh tròn đều quanh trục thân trong rất đẹp và nhin như một đó 
sen . sen đá phật bà gợi đến hình ảnh đức phật Đức Phật Quan Âm nghìn mắt nghìn tai',25000,'sen đá','https://i.pinimg.com/564x/4b/0c/5b/4b0c5b3152c9c7d4e327f13e40f8bc77.jpg',100,0),
      (4,'Sen Đá Móng Rồng','Sen đá phật bà là sen đá phổ biến nhất hiện nay,
chúng có nhiều lá mọc xay quanh tròn đều quanh trục thân trong rất đẹp và nhin như một đó 
sen . sen đá phật bà gợi đến hình ảnh đức phật Đức Phật Quan Âm nghìn mắt nghìn tai',30000,'sen đá','https://i.pinimg.com/474x/12/21/e9/1221e9e8e284167ec84bb4280f863c68.jpg',100,0),
      (5,'Sen Đá Phật Bà','Sen đá phật bà là sen đá phổ biến nhất hiện nay,
chúng có nhiều lá mọc xay quanh tròn đều quanh trục thân trong rất đẹp và nhin như một đó 
sen . sen đá phật bà gợi đến hình ảnh đức phật Đức Phật Quan Âm nghìn mắt nghìn tai',20000,'sen đá','https://i.pinimg.com/474x/f8/ba/74/f8ba74b76e7469e33ca1e1dc1e48231c.jpg',100,0),
      (6,'Sen Đá Rubi','Sen đá phật bà là sen đá phổ biến nhất hiện nay,
chúng có nhiều lá mọc xay quanh tròn đều quanh trục thân trong rất đẹp và nhin như một đó 
sen . sen đá phật bà gợi đến hình ảnh đức phật Đức Phật Quan Âm nghìn mắt nghìn tai',40000,'sen đá','https://i.pinimg.com/474x/0f/e5/c3/0fe5c33f6d6044ac17add370e8b5827d.jpg',100,0),
      (7,'Sen Đá Thạch Ngọc','Sen đá phật bà là sen đá phổ biến nhất hiện nay,
chúng có nhiều lá mọc xay quanh tròn đều quanh trục thân trong rất đẹp và nhin như một đó 
sen . sen đá phật bà gợi đến hình ảnh đức phật Đức Phật Quan Âm nghìn mắt nghìn tai',20000,'sen đá','https://i.pinimg.com/474x/09/bd/d2/09bdd2d6e676e12b6073c5bf1ba04d72.jpg',100,0),
      (8,'Sen Đá Tai Thỏ','Sen đá phật bà là sen đá phổ biến nhất hiện nay,
chúng có nhiều lá mọc xay quanh tròn đều quanh trục thân trong rất đẹp và nhin như một đó 
sen . sen đá phật bà gợi đến hình ảnh đức phật Đức Phật Quan Âm nghìn mắt nghìn tai',23000,'sen đa','https://i.pinimg.com/474x/f9/d9/dc/f9d9dca32c4514bb74f775a5190cc8ca.jpg',100,0),
	  (9,'Sen Đá Dù','Sen đá phật bà là sen đá phổ biến nhất hiện nay,
chúng có nhiều lá mọc xay quanh tròn đều quanh trục thân trong rất đẹp và nhin như một đó 
sen . sen đá phật bà gợi đến hình ảnh đức phật Đức Phật Quan Âm nghìn mắt nghìn tai',29000,'sen đá','https://i.pinimg.com/474x/38/d1/62/38d162f5447b55b2f27d74acbbf3d874.jpg',100,0);

select * from sanpham;

insert into loaicay(loai)
values ('sen đá'),
	   ('truc');
	



insert into nguoidung(id_user ,ten , ho, diachi,gioitinh,namsinh)
values (005,'Hậu','Nguyễn','An Giang','nam','2001-10-10'),
	   (002,'Hung','Nguyễn','Kiên Giang','nam','2000-10-17'),
       (003,'Thanh','Thanh','Hà Giang','nu','2007-12-5'),
       (004,'Kiên','Huyền','Hậu Giang','nu','2005-5-5');



insert into dangnhap(id_dn ,tendn ,matkhau,id_user)
values (001,'phuochau','12345678',005),
	   (002,'hung','87654321',002),
       (003,'thanh','22446688',003),
       (004,'kien','1133557799',004);
       


insert into loai(loai , id_sp)
values ('sen đá' ,001),
	 ('sen đá' ,002),
	 ('sen đá' ,003),
	 ('sen đá' ,004),
	 ('sen đá' ,005),
	 ('sen đá' ,006),
	 ('sen đá' ,007),
	 ('sen đá' ,008),
	 ('sen đá' ,009);
     
insert into loaihinh(loai)
values ('cay'),
	   ('nguoidung');
       
insert into hinhanh(id_img,url)
values (1,'D:/webthuongmai/frontend/img/img'),
	   (2,'D:/webthuongmai/frontend/img/img_SP/Sen_hong_do.jpg'),
       (3,'file:///D:/webthuongmai/frontend/img/img_SP/sen-da-ruby.jpg'),
       (4,'file:///D:/webthuongmai/frontend/img/img_SP/sen-da-phat-ba.jpg'),
       (5,'file:///D:/webthuongmai/frontend/img/img_SP/sen-da-mong-rong.jpg'),
       (6,'file:///D:/webthuongmai/frontend/img/img_SP/cay-sen-da-la-thom.jpg'),
       (7,'file:///D:/webthuongmai/frontend/img/img_SP/sen-da-du.jpg'),
       (8,'file:///D:/webthuongmai/frontend/img/img_SP/sen-da-thach-ngoc.jpg'),
       (9,'file:///D:/webthuongmai/frontend/img/img_SP/cay-sen-da-chuoi-ngoc.jpg');
       
insert into trangchu(id_tc ,url , mota)
values (1,'D:/webthuongmai/frontend/img/img_SP/tai-tho.jpg','khong gian sinh song trong mat'),
	   (3,'D:/webthuongmai/frontend/img/img_SP/tai-tho.jpg','khong gian sinh song trong mat'),
       (2,'D:/webthuongmai/frontend/img/img_SP/tai-tho.jpg','khong gian sinh song trong mat');
       


DROP TABLE nguoidung;
DROP TABLE dangnhap;
DROP TABLE sanpham;
DROP TABLE loai;
DROP TABLE hinhanh;
DROP TABLE loaihinh;
DROP TABLE loaicay;

select * from loaihinh;
SELECT * FROM sanpham;
select * from dangnhap;
select * from nguoidung;
select * from loaicay;
select ten,gia from sampham;
SELECT CustomerName, City, Country FROM Customers;


MYSQL Book List (https://freetuts.net/tao-khoa-chinh-primary-key-trong-mysql-316.html)

//Dùng database
(

USE SINHVIEN;

)


//Tạo bảng mới
(

CREATE TABLE SINHVIEN(
    TenSV VARCHAR(255),
    MaSV INT(11),
    NamSinh INT(4)
) ENGINE = InnoDB

)


//Gán giá trị mặc định
(

CREATE TABLE SINHVIEN(
    TenSV VARCHAR(255) DEFAULT 'noname',
    MaSV INT(11),
    NamSinh INT(4)
) ENGINE = InnoDBsinhvien

)


//Xóa bảng
(
 DROP TABLE users
	
)


//Tạo khóa chính 

(

https://freetuts.net/tao-khoa-chinh-primary-key-trong-mysql-316.html
- Tự động tăng lên 1 khi thêm mới, kiểu int, giá trị là duy nhất.

- Không thể NULL

// PRIMARY KEY

CREATE TABLE users (
  id INT(10) UNSIGNED NOT NULL PRIMARY KEY,
  email VARCHAR(70) NOT NULL
) ENGINE = INNODB;

hoặc

CREATE TABLE users (
  id INT(10) UNSIGNED NOT NULL,
  email VARCHAR(70) NOT NULL,
  PRIMARY KEY(id)
) ENGINE = INNODB;

chọn nhiều field làm khóa chính

CREATE TABLE users (
  id INT(10) UNSIGNED NOT NULL,
  email VARCHAR(70) NOT NULL,
  PRIMARY KEY(id, email)
) ENGINE = INNODB;

CREATE TABLE users (
  id INT(10) UNSIGNED NOT NULL,
  email VARCHAR(70) NOT NULL
) ENGINE = INNODB;
 
ALTER TABLE users ADD CONSTRAINT pk_user PRIMARY KEY (id)


CONSTRAINT pk_user trong đó pk_user là tên ràng buộc
)

// Xóa khóa chính
(
ALTER TABLE users DROP PRIMARY KEY
)
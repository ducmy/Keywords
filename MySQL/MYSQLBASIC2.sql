// AUTO_INCREMENT
(

CREATE TABLE Users(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR (50) NOT NULL UNIQUE
)


)


// Khóa ngoại
(
https://freetuts.net/khoa-ngoai-foreign-key-trong-mysql-319.html#goto-h2-0
CREATE TABLE Groups (
    groupid INT(11) NOT NULL PRIMARY KEY,
    title INT(11) NOT NULL,
    LEVEL TINYINT(1) DEFAULT 1 NOT NULL
);
 
CREATE TABLE Users(
    userid INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR (50) NOT NULL,
    groupid INT(11)
);
 
ALTER TABLE Users ADD CONSTRAINT fk_group FOREIGN KEY(groupid) REFERENCES Groups(groupid);

)


// Khóa ngoại tham chiếu chính nó
(
CREATE TABLE Employee(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(50) NOT NULL,
    email VARCHAR (50) NOT NULL,
    leader_id INT (11) NOT NULL,
    CONSTRAINT pk_self FOREIGN KEY (leader_id) REFERENCES Employee(id) 
)

ALTER TABLE Users DROP FOREIGN KEY fk_group;
)

//Thay đổi cấu trúc bảng
(
ALTER TABLE tasks
CHANGE COLUMN description description VARCHAR(250) NOT NULL;
)

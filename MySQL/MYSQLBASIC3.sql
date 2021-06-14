// INSERT gia tri

(

// Khai bao colume
INSERT INTO
table_name(field1, field2, field2, ..., fieldn)
VALUES('field1', 'field2', 'field3', ...,'fieldn')


// Khong khai báo colume, bất buộc phải điền đủ field à nghen
INSERT INTO table_name
VALUES ('field_1', 'field_2', ..., 'field_n')

)

// SELECT
(
https://freetuts.net/lenh-select-lay-du-lieu-trong-mysql-322.html
SELECT sv_id, sv_name, sv_description
FROM SINHVIEN
WHERE sv_name = 'Mr Kinh'


SELECT sv_id, sv_name, sv_description
FROM SINHVIEN
WHERE sv_id > 1 AND sv_name = 'Mr Cuong'


SELECT sv_id, sv_name, sv_description
FROM SINHVIEN
ORDER BY sv_id ASC


SELECT sv_id, sv_name, sv_description
FROM SINHVIEN
ORDER BY sv_id DESC
LIMIT 0, 1

0 la start
1 la so suong lay (cai nay la lay du lieu nguoc)

)

// データベースの選ぶ
use canvas_db;

//教材のテブールを追加
DROP TABLE IF EXISTS nhs_wtech;
CREATE TABLE nhs_wtech(
    sid INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tech_name VARCHAR(255),
    ctime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	mtime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

//テストのテブールを追加
DROP TABLE IF EXISTS nhs_wtests;
CREATE TABLE nhs_wtests(
    sid INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	tech_id INT(11) UNSIGNED,
    qa VARCHAR(255),
	result BOOLEAN,
    ctime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	mtime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (tech_id) REFERENCES nhs_wtech(sid)
);
ALTER TABLE nhs_wtests ADD FOREIGN KEY(tech_id) REFERENCES nhs_wtech(sid);

// レーポットのテブールを追加
DROP TABLE IF EXISTS nhs_wreport;
CREATE TABLE nhs_wreport(
    sid INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	rid INT(11),
	wtest_id INT(11) UNSIGNED,
	rresult BOOLEAN,
    ctime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	mtime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (wtest_id) REFERENCES nhs_wtests(sid),
	FOREIGN KEY (rid) REFERENCES nhs_employee(sid)
);

// 日本の文字を設定する
ALTER TABLE nhs_wtech MODIFY COLUMN tech_name VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE nhs_wtests MODIFY COLUMN qa VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;


// テブールを削除のときは
DROP TABLE IF EXISTS nhs_wtech;
DROP TABLE IF EXISTS nhs_wtests;
DROP TABLE IF EXISTS nhs_wreport;
DROP TABLE IF EXISTS nhs_wreportdd;


//データを追加する

//教材を追加
INSERT INTO nhs_wtech
(tech_name)
VALUES
('教材A')
('教材B')
('教材C')

// テストを追加
INSERT INTO nhs_wtests
(tech_id, qa, result)
VALUES(1, '法人取次の場合、個人口座でも問題ない', false),
(1,'QAスタンド導入後１年以内に解約の場合は解約金が発生する。',true),
(1,'車屋で中古車を販売シている場合、許可書は陸連局認証書が必要です。',false),
(1,'Airpayの手数は一律3.24%である',true),
(1,'ｄ払い、メルペイは同じ時期に手数料がかかる', false),
(1,'消費者還元業では国が手数料を1/3補填してくれていた', true);

// テストを追加
INSERT INTO nhs_wtests
(tech_id, qa, result)
VALUES
(2,'Airpayの手数は一律3.24%である',true),
(2,'ｄ払い、メルペイは同じ時期に手数料がかかる', false),
(2, '法人取次の場合、個人口座でも問題ない', false),
(2,'QAスタンド導入後１年以内に解約の場合は解約金が発生する。',true),
(2,'車屋で中古車を販売シている場合、許可書は陸連局認証書が必要です。',false),
(2,'消費者還元業では国が手数料を1/3補填してくれていた', true);

// テストを追加
INSERT INTO nhs_wtests
(tech_id, qa, result)
VALUES
(3,'QAスタンド導入後１年以内に解約の場合は解約金が発生する。',true),
(3,'車屋で中古車を販売シている場合、許可書は陸連局認証書が必要です。',false),
(3, '法人取次の場合、個人口座でも問題ない', false),
(3,'Airpayの手数は一律3.24%である',true),
(3,'ｄ払い、メルペイは同じ時期に手数料がかかる', false),
(3,'消費者還元業では国が手数料を1/3補填してくれていた', true);


// レーポットを追加
INSERT INTO nhs_wreport
(rid, wtest_id, rresult)
VALUES
(19, 1, true)
(19, 2, false)
(19, 3, true)
(19, 4, false)
(19, 5, true)
(19, 6, false)



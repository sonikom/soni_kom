--
-- Скрипт сгенерирован Devart dbForge Studio 2019 for MySQL, Версия 8.1.22.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 31.12.2020 12:45:22
-- Версия сервера: 5.7.25
-- Версия клиента: 4.1
--

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

--
-- Удалить функцию `f_count_archive`
--
DROP FUNCTION IF EXISTS f_count_archive;

--
-- Удалить функцию `f_date_day`
--
DROP FUNCTION IF EXISTS f_date_day;

--
-- Удалить функцию `f_logout_user`
--
DROP FUNCTION IF EXISTS f_logout_user;

--
-- Удалить функцию `f_sale_chek_category`
--
DROP FUNCTION IF EXISTS f_sale_chek_category;

--
-- Удалить функцию `f_seller_chek_quantity`
--
DROP FUNCTION IF EXISTS f_seller_chek_quantity;

--
-- Удалить процедуру `pr_broker_procesing`
--
DROP PROCEDURE IF EXISTS pr_broker_procesing;

--
-- Удалить таблицу `function_customer`
--
DROP TABLE IF EXISTS function_customer;

--
-- Удалить таблицу `function_seller`
--
DROP TABLE IF EXISTS function_seller;

--
-- Удалить функцию `f_add_customer_product`
--
DROP FUNCTION IF EXISTS f_add_customer_product;

--
-- Удалить функцию `f_add_seller_product`
--
DROP FUNCTION IF EXISTS f_add_seller_product;

--
-- Удалить функцию `f_cup_processing`
--
DROP FUNCTION IF EXISTS f_cup_processing;

--
-- Удалить функцию `f_processing_cup`
--
DROP FUNCTION IF EXISTS f_processing_cup;

--
-- Удалить таблицу `function_max_min`
--
DROP TABLE IF EXISTS function_max_min;

--
-- Удалить представление `v_process`
--
DROP VIEW IF EXISTS v_process CASCADE;

--
-- Удалить функцию `f_createaccaunt`
--
DROP FUNCTION IF EXISTS f_createaccaunt;

--
-- Удалить функцию `f_pasport_create_acc`
--
DROP FUNCTION IF EXISTS f_pasport_create_acc;

--
-- Удалить таблицу `procesing`
--
DROP TABLE IF EXISTS procesing;

--
-- Удалить функцию `f_logout_moderator`
--
DROP FUNCTION IF EXISTS f_logout_moderator;

--
-- Удалить таблицу `moderators`
--
DROP TABLE IF EXISTS moderators;

--
-- Удалить таблицу `archive`
--
DROP TABLE IF EXISTS archive;

--
-- Удалить представление `v_sort_cup_customer`
--
DROP VIEW IF EXISTS v_sort_cup_customer CASCADE;

--
-- Удалить процедуру `pr_sort_cup_customer`
--
DROP PROCEDURE IF EXISTS pr_sort_cup_customer;

--
-- Удалить функцию `f_del_offer_customer`
--
DROP FUNCTION IF EXISTS f_del_offer_customer;

--
-- Удалить функцию `f_my_customer_price`
--
DROP FUNCTION IF EXISTS f_my_customer_price;

--
-- Удалить таблицу `customer_product`
--
DROP TABLE IF EXISTS customer_product;

--
-- Удалить функцию `f_add_my_cup`
--
DROP FUNCTION IF EXISTS f_add_my_cup;

--
-- Удалить таблицу `my_cup`
--
DROP TABLE IF EXISTS my_cup;

--
-- Удалить процедуру `pr_sort_cup_seller`
--
DROP PROCEDURE IF EXISTS pr_sort_cup_seller;

--
-- Удалить функцию `f_del_offer_seller`
--
DROP FUNCTION IF EXISTS f_del_offer_seller;

--
-- Удалить функцию `f_my_seller_price`
--
DROP FUNCTION IF EXISTS f_my_seller_price;

--
-- Удалить таблицу `seller_product`
--
DROP TABLE IF EXISTS seller_product;

--
-- Удалить функцию `f_check_date_day`
--
DROP FUNCTION IF EXISTS f_check_date_day;

--
-- Удалить функцию `f_check_date_day_customer`
--
DROP FUNCTION IF EXISTS f_check_date_day_customer;

--
-- Удалить функцию `f_check_date_day_seller`
--
DROP FUNCTION IF EXISTS f_check_date_day_seller;

--
-- Удалить функцию `f_graph_all`
--
DROP FUNCTION IF EXISTS f_graph_all;

--
-- Удалить функцию `f_graph_user_customer`
--
DROP FUNCTION IF EXISTS f_graph_user_customer;

--
-- Удалить функцию `f_graph_user_seller`
--
DROP FUNCTION IF EXISTS f_graph_user_seller;

--
-- Удалить таблицу `trade`
--
DROP TABLE IF EXISTS trade;

--
-- Удалить процедуру `pr_book_money`
--
DROP PROCEDURE IF EXISTS pr_book_money;

--
-- Удалить процедуру `pr_book_product`
--
DROP PROCEDURE IF EXISTS pr_book_product;

--
-- Удалить процедуру `pr_chek_archive`
--
DROP PROCEDURE IF EXISTS pr_chek_archive;

--
-- Удалить таблицу `product`
--
DROP TABLE IF EXISTS product;

--
-- Удалить таблицу `categoty`
--
DROP TABLE IF EXISTS categoty;

--
-- Удалить функцию `f_add_accaunt`
--
DROP FUNCTION IF EXISTS f_add_accaunt;

--
-- Удалить функцию `f_chek_customer_money`
--
DROP FUNCTION IF EXISTS f_chek_customer_money;

--
-- Удалить функцию `f_found_my_bank`
--
DROP FUNCTION IF EXISTS f_found_my_bank;

--
-- Удалить таблицу `bank`
--
DROP TABLE IF EXISTS bank;

--
-- Удалить представление `v_broker_procesing`
--
DROP VIEW IF EXISTS v_broker_procesing CASCADE;

--
-- Удалить функцию `f_user_broker`
--
DROP FUNCTION IF EXISTS f_user_broker;

--
-- Удалить таблицу `broker_procesing`
--
DROP TABLE IF EXISTS broker_procesing;

--
-- Удалить процедуру `pr_broker_archive`
--
DROP PROCEDURE IF EXISTS pr_broker_archive;

--
-- Удалить таблицу `user_broker`
--
DROP TABLE IF EXISTS user_broker;

--
-- Удалить представление `v_moderator_archive`
--
DROP VIEW IF EXISTS v_moderator_archive CASCADE;

--
-- Удалить представление `v_user_create`
--
DROP VIEW IF EXISTS v_user_create CASCADE;

--
-- Удалить таблицу `user`
--
DROP TABLE IF EXISTS user;

--
-- Удалить функцию `f_broker_tarif`
--
DROP FUNCTION IF EXISTS f_broker_tarif;

--
-- Удалить таблицу `broker_tarif`
--
DROP TABLE IF EXISTS broker_tarif;

--
-- Удалить функцию `f_broker_procesing`
--
DROP FUNCTION IF EXISTS f_broker_procesing;

--
-- Удалить функцию `f_logout_broker`
--
DROP FUNCTION IF EXISTS f_logout_broker;

--
-- Удалить таблицу `brokers`
--
DROP TABLE IF EXISTS brokers;

--
-- Удалить таблицу `company_tarif`
--
DROP TABLE IF EXISTS company_tarif;

--
-- Удалить представление `v_choose_company`
--
DROP VIEW IF EXISTS v_choose_company CASCADE;

--
-- Удалить процедуру `pr_choose_tarif`
--
DROP PROCEDURE IF EXISTS pr_choose_tarif;

--
-- Удалить таблицу `company`
--
DROP TABLE IF EXISTS company;

--
-- Удалить таблицу `tarif`
--
DROP TABLE IF EXISTS tarif;

--
-- Создать таблицу `tarif`
--
CREATE TABLE tarif (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  content varchar(255) NOT NULL,
  duration int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 5,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `name` для объекта типа таблица `tarif`
--
ALTER TABLE tarif
ADD UNIQUE INDEX name (name);

--
-- Создать таблицу `company`
--
CREATE TABLE company (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  inn varchar(255) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 4,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `inn` для объекта типа таблица `company`
--
ALTER TABLE company
ADD UNIQUE INDEX inn (inn);

--
-- Создать индекс `name` для объекта типа таблица `company`
--
ALTER TABLE company
ADD UNIQUE INDEX name (name);

DELIMITER $$

--
-- Создать процедуру `pr_choose_tarif`
--
CREATE PROCEDURE pr_choose_tarif (IN id int)
BEGIN
  SELECT
    t.name,
    t.content,
    ct.id
  FROM company_tarif ct
    JOIN company c
      ON ct.company_id = c.id
    JOIN tarif t
      ON ct.tarif_id = t.id
  WHERE c.id = id;
END
$$

DELIMITER ;

--
-- Создать представление `v_choose_company`
--
CREATE
VIEW v_choose_company
AS
SELECT
  `c`.`id` AS `id`,
  `c`.`name` AS `name`
FROM `company` `c`;

--
-- Создать таблицу `company_tarif`
--
CREATE TABLE company_tarif (
  id int(11) NOT NULL AUTO_INCREMENT,
  company_id int(11) NOT NULL,
  tarif_id int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 11,
AVG_ROW_LENGTH = 1820,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать внешний ключ
--
ALTER TABLE company_tarif
ADD CONSTRAINT FK_company_tarif_company_id FOREIGN KEY (company_id)
REFERENCES company (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE company_tarif
ADD CONSTRAINT FK_company_tarif_tarif_id FOREIGN KEY (tarif_id)
REFERENCES tarif (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать таблицу `brokers`
--
CREATE TABLE brokers (
  id int(11) NOT NULL AUTO_INCREMENT,
  first_name varchar(255) NOT NULL,
  middle_name varchar(255) DEFAULT NULL,
  last_name varchar(255) NOT NULL,
  pasport int(11) NOT NULL,
  email varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  company_id int(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 4,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `email` для объекта типа таблица `brokers`
--
ALTER TABLE brokers
ADD UNIQUE INDEX email (email);

--
-- Создать индекс `pasport` для объекта типа таблица `brokers`
--
ALTER TABLE brokers
ADD UNIQUE INDEX pasport (pasport);

--
-- Создать внешний ключ
--
ALTER TABLE brokers
ADD CONSTRAINT FK_brokers_company_id FOREIGN KEY (company_id)
REFERENCES company (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$

--
-- Создать функцию `f_logout_broker`
--
CREATE FUNCTION f_logout_broker (login varchar(255), pass varchar(50))
RETURNS int(11)
BEGIN
  DECLARE log int;

  SELECT
    COUNT(b.email) INTO log
  FROM brokers b
  WHERE (b.email LIKE login) & (b.password = pass);

  RETURN log;
END
$$

--
-- Создать функцию `f_broker_procesing`
--
CREATE FUNCTION f_broker_procesing (email_broker varchar(50))
RETURNS int(11)
BEGIN
  DECLARE em int;

  SELECT
    c.id INTO em
  FROM brokers b
    JOIN company c
      ON b.company_id = c.id
  WHERE b.email = email_broker;

  RETURN em;
END
$$

DELIMITER ;

--
-- Создать таблицу `broker_tarif`
--
CREATE TABLE broker_tarif (
  id int(11) NOT NULL AUTO_INCREMENT,
  broker_id int(11) NOT NULL,
  company_tarif_id int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 17,
AVG_ROW_LENGTH = 2048,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `UK_broker_tarif` для объекта типа таблица `broker_tarif`
--
ALTER TABLE broker_tarif
ADD UNIQUE INDEX UK_broker_tarif (broker_id, company_tarif_id);

--
-- Создать внешний ключ
--
ALTER TABLE broker_tarif
ADD CONSTRAINT FK_broker_tarif_brokers_id FOREIGN KEY (broker_id)
REFERENCES brokers (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE broker_tarif
ADD CONSTRAINT FK_broker_tarif_company_tarif_id FOREIGN KEY (company_tarif_id)
REFERENCES company_tarif (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$

--
-- Создать функцию `f_broker_tarif`
--
CREATE FUNCTION f_broker_tarif (company_tarif_id int, broker_emai varchar(50))
RETURNS int(11)
BEGIN
  DECLARE broker_tarif_id int;
  DECLARE broker_id int;
  SELECT
    b.id INTO broker_id
  FROM brokers b
  WHERE b.email = broker_emai;

  SELECT
    bt.id INTO broker_tarif_id
  FROM broker_tarif bt
  WHERE (bt.broker_id = broker_id)
  AND (bt.company_tarif_id = company_tarif_id);
  RETURN broker_tarif_id;
END
$$

DELIMITER ;

--
-- Создать таблицу `user`
--
CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  first_name varchar(255) NOT NULL,
  middle_name varchar(255) DEFAULT NULL,
  last_name varchar(255) NOT NULL,
  pasport varchar(255) NOT NULL,
  password varchar(20) NOT NULL,
  email varchar(50) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 14,
AVG_ROW_LENGTH = 1260,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `email` для объекта типа таблица `user`
--
ALTER TABLE user
ADD UNIQUE INDEX email (email);

--
-- Создать индекс `pasport` для объекта типа таблица `user`
--
ALTER TABLE user
ADD UNIQUE INDEX pasport (pasport);

--
-- Создать представление `v_user_create`
--
CREATE
VIEW v_user_create
AS
SELECT
  COUNT(`u`.`email`) AS `COUNT(u.email)`
FROM `user` `u`
WHERE (`u`.`email` LIKE 's@list.ru');

--
-- Создать представление `v_moderator_archive`
--
CREATE
VIEW v_moderator_archive
AS
SELECT
  `u`.`first_name` AS `first_name`,
  `u`.`middle_name` AS `middle_name`,
  `u`.`last_name` AS `last_name`,
  `u`.`pasport` AS `pasport`,
  `u`.`email` AS `email`
FROM `user` `u`
ORDER BY `u`.`last_name`;

--
-- Создать таблицу `user_broker`
--
CREATE TABLE user_broker (
  id int(11) NOT NULL AUTO_INCREMENT,
  broker_tarif_id int(11) NOT NULL,
  user_id int(11) NOT NULL,
  contract varchar(255) NOT NULL,
  data_start date NOT NULL,
  data_end date NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 7,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `UK_user_broker` для объекта типа таблица `user_broker`
--
ALTER TABLE user_broker
ADD UNIQUE INDEX UK_user_broker (broker_tarif_id, user_id);

--
-- Создать внешний ключ
--
ALTER TABLE user_broker
ADD CONSTRAINT FK_user_broker_broker_tarif_id FOREIGN KEY (broker_tarif_id)
REFERENCES broker_tarif (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE user_broker
ADD CONSTRAINT FK_user_broker_user_id FOREIGN KEY (user_id)
REFERENCES user (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$

--
-- Создать процедуру `pr_broker_archive`
--
CREATE PROCEDURE pr_broker_archive (email varchar(255))
BEGIN
  DECLARE broker_tarif int;

  SELECT
    u.first_name,
    u.middle_name,
    u.last_name,
    u.pasport,
    u.email,
    ub.contract
  FROM user_broker ub
    JOIN broker_tarif bt
      ON ub.broker_tarif_id = bt.id
    JOIN brokers b
      ON bt.broker_id = b.id
    JOIN user u
      ON ub.user_id = u.id
  WHERE b.email = email
  ORDER BY u.last_name ASC;

END
$$

DELIMITER ;

--
-- Создать таблицу `broker_procesing`
--
CREATE TABLE broker_procesing (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  broker_id varchar(255) DEFAULT NULL,
  company_tarif_id int(11) NOT NULL,
  contract varchar(255) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 13,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `FK_broker_procesing_brokers_id` для объекта типа таблица `broker_procesing`
--
ALTER TABLE broker_procesing
ADD INDEX FK_broker_procesing_brokers_id (broker_id);

--
-- Создать внешний ключ
--
ALTER TABLE broker_procesing
ADD CONSTRAINT FK_broker_procesing_company_tarif_id FOREIGN KEY (company_tarif_id)
REFERENCES company_tarif (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE broker_procesing
ADD CONSTRAINT FK_broker_procesing_user_id FOREIGN KEY (user_id)
REFERENCES user (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$

--
-- Создать функцию `f_user_broker`
--
CREATE FUNCTION f_user_broker (pasport int, broker_tarif_id int, data_start date, data_end date, contract varchar(255))
RETURNS int(11)
BEGIN
  DECLARE user_id int;
  DECLARE broker_procesing_id int;
  DECLARE contract varchar(50);
  DECLARE broker_id int;

  SELECT
    u.id INTO user_id
  FROM broker_procesing bp
    JOIN user u
      ON bp.user_id = u.id
  WHERE u.pasport = pasport;


  INSERT IGNORE INTO user_broker
    VALUES (broker_tarif_id, user_id, contract, data_start, data_end);
  RETURN 1;
END
$$

DELIMITER ;

--
-- Создать представление `v_broker_procesing`
--
CREATE
VIEW v_broker_procesing
AS
SELECT
  `u`.`first_name` AS `first_name`,
  `u`.`middle_name` AS `middle_name`,
  `u`.`last_name` AS `last_name`,
  `bp`.`broker_id` AS `broker_id`,
  `bp`.`id` AS `id`
FROM (`broker_procesing` `bp`
  JOIN `user` `u`
    ON ((`bp`.`user_id` = `u`.`id`)));

--
-- Создать таблицу `bank`
--
CREATE TABLE bank (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  money double NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 11,
AVG_ROW_LENGTH = 2048,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `user_id` для объекта типа таблица `bank`
--
ALTER TABLE bank
ADD UNIQUE INDEX user_id (user_id);

--
-- Создать внешний ключ
--
ALTER TABLE bank
ADD CONSTRAINT FK_bank_user_id FOREIGN KEY (user_id)
REFERENCES user (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$

--
-- Создать функцию `f_found_my_bank`
--
CREATE FUNCTION f_found_my_bank (email varchar(255))
RETURNS int(11)
BEGIN
  DECLARE user_id int;
  DECLARE money int;

  SELECT
    u.id INTO user_id
  FROM user u
  WHERE u.email = email;

  SELECT
    b.money INTO money
  FROM bank b
  WHERE b.user_id = user_id;

  RETURN money;

END
$$

--
-- Создать функцию `f_chek_customer_money`
--
CREATE FUNCTION f_chek_customer_money (email varchar(50))
RETURNS int(11)
BEGIN
  DECLARE user_id int;
  DECLARE money double;

  SELECT
    u.id INTO user_id
  FROM user u
  WHERE u.email = email;

  SELECT
    b.money INTO money
  FROM bank b
  WHERE b.user_id = user_id;
  RETURN money;
END
$$

--
-- Создать функцию `f_add_accaunt`
--
CREATE FUNCTION f_add_accaunt (first_name varchar(50), middle_name varchar(50), last_name varchar(50), pasport varchar(50), email varchar(255), pass varchar(50))
RETURNS int(11)
BEGIN
  DECLARE user_id int;

  INSERT IGNORE INTO USER (first_name, middle_name, last_name, pasport, email, password)
    VALUES (first_name, middle_name, last_name, pasport, email, pass);

  SELECT
    u.id INTO user_id
  FROM user u
  WHERE u.email = email;

  INSERT IGNORE INTO bank (user_id, money)
    VALUES (user_id, 1000);

  RETURN 1;
END
$$

DELIMITER ;

--
-- Создать таблицу `categoty`
--
CREATE TABLE categoty (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  content varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 4,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `name` для объекта типа таблица `categoty`
--
ALTER TABLE categoty
ADD UNIQUE INDEX name (name);

--
-- Создать таблицу `product`
--
CREATE TABLE product (
  id int(11) NOT NULL AUTO_INCREMENT,
  articul varchar(255) NOT NULL,
  name varchar(50) NOT NULL,
  content varchar(500) DEFAULT NULL,
  category_id int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 8,
AVG_ROW_LENGTH = 2340,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `articul` для объекта типа таблица `product`
--
ALTER TABLE product
ADD UNIQUE INDEX articul (articul);

--
-- Создать внешний ключ
--
ALTER TABLE product
ADD CONSTRAINT FK_product_categoty_id FOREIGN KEY (category_id)
REFERENCES categoty (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$

--
-- Создать процедуру `pr_chek_archive`
--
CREATE PROCEDURE pr_chek_archive (email varchar(255))
BEGIN
  DECLARE user_id int;


  SELECT
    u.id INTO user_id
  FROM user u
  WHERE u.email = email;

  SELECT
    p.name,
    a.quantity
  FROM archive a
    JOIN product p
      ON a.product_id = p.id
  WHERE a.user_id = user_id;

END
$$

--
-- Создать процедуру `pr_book_product`
--
CREATE PROCEDURE pr_book_product (email varchar(255))
BEGIN
  DECLARE user_broker_id int;

  SELECT
    ub.id INTO user_broker_id
  FROM user_broker ub
    JOIN user u
      ON ub.user_id = u.id
  WHERE u.email = email;

  SELECT
    sp.id,
    p.name,
    sp.price,
    sp.quantity,
    sp.datetime
  FROM seller_product sp
    JOIN product p
      ON sp.product_id = p.id
  WHERE (sp.user_broker_id = user_broker_id)
  AND (sp.quantity > 0);

END
$$

--
-- Создать процедуру `pr_book_money`
--
CREATE PROCEDURE pr_book_money (email varchar(255))
BEGIN
  DECLARE user_broker_id int;

  SELECT
    ub.id INTO user_broker_id
  FROM user_broker ub
    JOIN user u
      ON ub.user_id = u.id
  WHERE u.email = email;

  SELECT
    cp.id,
    p.name,
    cp.price,
    cp.quantity,
    cp.datetime
  FROM customer_product cp
    JOIN product p
      ON cp.product_id = p.id
  WHERE (cp.user_broker_id = user_broker_id)
  AND (cp.quantity > 0);

END
$$

DELIMITER ;

--
-- Создать таблицу `trade`
--
CREATE TABLE trade (
  id int(11) NOT NULL AUTO_INCREMENT,
  seller_id int(11) NOT NULL,
  customer_id int(11) NOT NULL,
  product_id int(11) NOT NULL,
  datetime datetime NOT NULL,
  quantity int(11) NOT NULL,
  price double NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 69,
AVG_ROW_LENGTH = 348,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `UK_trade` для объекта типа таблица `trade`
--
ALTER TABLE trade
ADD UNIQUE INDEX UK_trade (seller_id, customer_id, product_id, datetime);

--
-- Создать внешний ключ
--
ALTER TABLE trade
ADD CONSTRAINT FK_trade_cust_id FOREIGN KEY (customer_id)
REFERENCES user (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE trade
ADD CONSTRAINT FK_trade_product_id FOREIGN KEY (product_id)
REFERENCES product (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE trade
ADD CONSTRAINT FK_trade_sell_id FOREIGN KEY (seller_id)
REFERENCES user (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$

--
-- Создать функцию `f_graph_user_seller`
--
CREATE FUNCTION f_graph_user_seller (time int, product_id int, email varchar(255))
RETURNS int(11)
BEGIN
  DECLARE colvo int;
  DECLARE colvo_fin int;
  DECLARE time_now datetime;
  DECLARE time_new datetime;
  DECLARE time_year int;
  DECLARE time_month int;
  DECLARE time_day int;

  SELECT
    CURRENT_DATE() INTO time_now;

  SELECT
    ADDDATE(time_now, INTERVAL time DAY) INTO time_new;

  SELECT
    YEAR(time_new) INTO time_year;
  SELECT
    MONTH(time_new) INTO time_month;
  SELECT
    DAYOFMONTH(time_new) INTO time_day;

  SELECT
    s.colvo INTO colvo
  FROM (SELECT
      YEAR(t.datetime) AS y,
      MONTH(t.datetime) AS m,
      DAY(t.datetime) AS d,
      SUM(t.quantity) AS colvo
    FROM trade t
      JOIN product p
        ON t.product_id = p.id
      JOIN user u
        ON t.seller_id = u.id
    WHERE (p.id = product_id)
    AND (u.email = email)
    GROUP BY y,
             m,
             d) AS s
  WHERE s.y = time_year
  AND s.m = time_month
  AND s.d = time_day;



  RETURN colvo;
END
$$

--
-- Создать функцию `f_graph_user_customer`
--
CREATE FUNCTION f_graph_user_customer (time int, product_id int, email varchar(255))
RETURNS int(11)
BEGIN
  DECLARE colvo int;
  DECLARE colvo_fin int;
  DECLARE time_now datetime;
  DECLARE time_new datetime;
  DECLARE time_year int;
  DECLARE time_month int;
  DECLARE time_day int;

  SELECT
    CURRENT_DATE() INTO time_now;

  SELECT
    ADDDATE(time_now, INTERVAL time DAY) INTO time_new;

  SELECT
    YEAR(time_new) INTO time_year;
  SELECT
    MONTH(time_new) INTO time_month;
  SELECT
    DAYOFMONTH(time_new) INTO time_day;

  SELECT
    s.colvo INTO colvo
  FROM (SELECT
      YEAR(t.datetime) AS y,
      MONTH(t.datetime) AS m,
      DAY(t.datetime) AS d,
      SUM(t.quantity) AS colvo
    FROM trade t
      JOIN product p
        ON t.product_id = p.id
      JOIN user u
        ON t.customer_id = u.id
    WHERE (p.id = product_id)
    AND (u.email = email)
    GROUP BY y,
             m,
             d) AS s
  WHERE s.y = time_year
  AND s.m = time_month
  AND s.d = time_day;



  RETURN colvo;
END
$$

--
-- Создать функцию `f_graph_all`
--
CREATE FUNCTION f_graph_all (time int, product_id int)
RETURNS int(11)
BEGIN
  DECLARE colvo int;
  DECLARE colvo_fin int;
  DECLARE time_now datetime;
  DECLARE time_new datetime;
  DECLARE time_year int;
  DECLARE time_month int;
  DECLARE time_day int;

  SELECT
    CURRENT_DATE() INTO time_now;

  SELECT
    ADDDATE(time_now, INTERVAL time DAY) INTO time_new;

  SELECT
    YEAR(time_new) INTO time_year;
  SELECT
    MONTH(time_new) INTO time_month;
  SELECT
    DAYOFMONTH(time_new) INTO time_day;

  SELECT
    s.colvo INTO colvo
  FROM (SELECT
      YEAR(t.datetime) AS y,
      MONTH(t.datetime) AS m,
      DAY(t.datetime) AS d,
      SUM(t.quantity) AS colvo
    FROM trade t
      JOIN product p
        ON t.product_id = p.id
    WHERE (p.id = product_id)
    GROUP BY y,
             m,
             d) AS s
  WHERE s.y = time_year
  AND s.m = time_month
  AND s.d = time_day;



  RETURN colvo;
END
$$

--
-- Создать функцию `f_check_date_day_seller`
--
CREATE FUNCTION f_check_date_day_seller (time int, product_id int, email varchar(255))
RETURNS int(11)
BEGIN


  DECLARE colvo int;
  DECLARE time_now datetime;
  DECLARE time_new datetime;
  DECLARE time_year int;
  DECLARE time_month int;
  DECLARE time_day int;

  SELECT
    CURRENT_DATE() INTO time_now;

  SELECT
    ADDDATE(time_now, INTERVAL time DAY) INTO time_new;

  SELECT
    YEAR(time_new) INTO time_year;
  SELECT
    MONTH(time_new) INTO time_month;
  SELECT
    DAYOFMONTH(time_new) INTO time_day;

  SELECT
    COUNT(s.colvo) INTO colvo
  FROM (SELECT
      YEAR(t.datetime) AS y,
      MONTH(t.datetime) AS m,
      DAY(t.datetime) AS d,
      t.id AS colvo
    FROM trade t
      JOIN product p
        ON t.product_id = p.id
      JOIN user u
        ON t.seller_id = u.id
    WHERE (p.id = product_id)
    AND (u.email = email)
    GROUP BY y,
             m,
             d) AS s
  WHERE s.y = time_year
  AND s.m = time_month
  AND s.d = time_day;

  RETURN colvo;

END
$$

--
-- Создать функцию `f_check_date_day_customer`
--
CREATE FUNCTION f_check_date_day_customer (time int, product_id int, email varchar(255))
RETURNS int(11)
BEGIN


  DECLARE colvo int;
  DECLARE time_now datetime;
  DECLARE time_new datetime;
  DECLARE time_year int;
  DECLARE time_month int;
  DECLARE time_day int;

  SELECT
    CURRENT_DATE() INTO time_now;

  SELECT
    ADDDATE(time_now, INTERVAL time DAY) INTO time_new;

  SELECT
    YEAR(time_new) INTO time_year;
  SELECT
    MONTH(time_new) INTO time_month;
  SELECT
    DAYOFMONTH(time_new) INTO time_day;

  SELECT
    COUNT(s.colvo) INTO colvo
  FROM (SELECT
      YEAR(t.datetime) AS y,
      MONTH(t.datetime) AS m,
      DAY(t.datetime) AS d,
      t.id AS colvo
    FROM trade t
      JOIN product p
        ON t.product_id = p.id
      JOIN user u
        ON t.customer_id = u.id
    WHERE (p.id = product_id)
    AND (u.email = email)
    GROUP BY y,
             m,
             d) AS s
  WHERE s.y = time_year
  AND s.m = time_month
  AND s.d = time_day;

  RETURN colvo;

END
$$

--
-- Создать функцию `f_check_date_day`
--
CREATE FUNCTION f_check_date_day (time int, product_id int)
RETURNS int(11)
BEGIN

  DECLARE colvo_fin int;
  DECLARE time_now datetime;
  DECLARE time_new datetime;
  DECLARE time_year int;
  DECLARE time_month int;
  DECLARE time_day int;

  SELECT
    CURRENT_DATE() INTO time_now;

  SELECT
    ADDDATE(time_now, INTERVAL time DAY) INTO time_new;

  SELECT
    YEAR(time_new) INTO time_year;
  SELECT
    MONTH(time_new) INTO time_month;
  SELECT
    DAYOFMONTH(time_new) INTO time_day;

  SELECT
    COUNT(s.colvo) INTO colvo_fin
  FROM (SELECT
      YEAR(t.datetime) AS y,
      MONTH(t.datetime) AS m,
      DAY(t.datetime) AS d,
      t.id AS colvo
    FROM trade t
      JOIN product p
        ON t.product_id = p.id
    WHERE (p.id = product_id)
    GROUP BY y,
             m,
             d) AS s
  WHERE s.y = time_year
  AND s.m = time_month
  AND s.d = time_day;

  RETURN colvo_fin;
END
$$

DELIMITER ;

--
-- Создать таблицу `seller_product`
--
CREATE TABLE seller_product (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_broker_id int(11) NOT NULL,
  product_id int(11) NOT NULL,
  datetime datetime NOT NULL,
  quantity int(11) NOT NULL,
  price double NOT NULL,
  `all` int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 40,
AVG_ROW_LENGTH = 528,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `UK_seller_product` для объекта типа таблица `seller_product`
--
ALTER TABLE seller_product
ADD UNIQUE INDEX UK_seller_product (user_broker_id, product_id, datetime);

--
-- Создать внешний ключ
--
ALTER TABLE seller_product
ADD CONSTRAINT FK_seller_product_product_id FOREIGN KEY (product_id)
REFERENCES product (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE seller_product
ADD CONSTRAINT FK_seller_product_user_broker_id FOREIGN KEY (user_broker_id)
REFERENCES user_broker (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$

--
-- Создать функцию `f_my_seller_price`
--
CREATE FUNCTION f_my_seller_price (email varchar(255), product_id int, price double)
RETURNS int(11)
BEGIN
  DECLARE record int;
  DECLARE user_id int;
  DECLARE quantity int;

  SELECT
    ub.id INTO user_id
  FROM user_broker ub
    JOIN user u
      ON ub.user_id = u.id
  WHERE u.email = email;

  SELECT
    SUM(sp.quantity),
    COUNT(sp.id) INTO quantity, record
  FROM seller_product sp
  WHERE (sp.user_broker_id = user_id)
  AND (sp.price = price)
  AND (sp.product_id = product_id);

  IF (record = 0) THEN
    SET quantity = 0;
  END IF;

  RETURN quantity;
END
$$

--
-- Создать функцию `f_del_offer_seller`
--
CREATE FUNCTION f_del_offer_seller (id_offer_seller int, email varchar(255))
RETURNS int(11)
BEGIN
  DECLARE user_id int;
  DECLARE money double;
  DECLARE quantity int;
  DECLARE user_broker_id int;
  DECLARE product_id int;
  DECLARE count_archive int;

  SELECT
    sp.price,
    sp.quantity INTO money, quantity
  FROM seller_product sp
  WHERE sp.id = id_offer_seller;

  SELECT
    u.id INTO user_id
  FROM user u
  WHERE u.email = email;

  SELECT
    sp.user_broker_id,
    sp.product_id INTO user_broker_id, product_id
  FROM seller_product sp
  WHERE sp.id = id_offer_seller;


  UPDATE archive a
  SET a.quantity = a.quantity + quantity
  WHERE (a.user_id = user_id)
  AND (a.product_id = product_id);


  DELETE
    FROM seller_product
  WHERE id = id_offer_seller;

  RETURN 1;
END
$$

--
-- Создать процедуру `pr_sort_cup_seller`
--
CREATE PROCEDURE pr_sort_cup_seller (product_id int)
BEGIN
  SELECT
    SUM(s.quantity) AS 'quantity',
    s.price
  FROM (SELECT
      sp.price,
      sp.quantity
    FROM seller_product sp
    WHERE (sp.product_id = product_id)
    AND (sp.quantity > 0)
    ORDER BY sp.price ASC, sp.datetime ASC) AS s
  GROUP BY s.price
  ORDER BY s.price DESC;
END
$$

DELIMITER ;

--
-- Создать таблицу `my_cup`
--
CREATE TABLE my_cup (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  product_id int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 19,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `UK_my_cup` для объекта типа таблица `my_cup`
--
ALTER TABLE my_cup
ADD UNIQUE INDEX UK_my_cup (user_id, product_id);

--
-- Создать внешний ключ
--
ALTER TABLE my_cup
ADD CONSTRAINT FK_my_cup_product_id FOREIGN KEY (product_id)
REFERENCES product (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE my_cup
ADD CONSTRAINT FK_my_cup_user_id FOREIGN KEY (user_id)
REFERENCES user (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$

--
-- Создать функцию `f_add_my_cup`
--
CREATE FUNCTION f_add_my_cup (email varchar(255), product_id int)
RETURNS int(11)
BEGIN
  DECLARE user_id int;

  SELECT
    u.id INTO user_id
  FROM user u
  WHERE u.email = email;

  INSERT IGNORE INTO my_cup (user_id, product_id)
    VALUES (user_id, product_id);

  RETURN 1;
END
$$

DELIMITER ;

--
-- Создать таблицу `customer_product`
--
CREATE TABLE customer_product (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_broker_id int(11) NOT NULL,
  product_id int(11) NOT NULL,
  datetime datetime NOT NULL,
  quantity int(11) NOT NULL,
  price double NOT NULL,
  `all` int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 46,
AVG_ROW_LENGTH = 655,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `UK_customer_product` для объекта типа таблица `customer_product`
--
ALTER TABLE customer_product
ADD UNIQUE INDEX UK_customer_product (user_broker_id, product_id, datetime);

--
-- Создать внешний ключ
--
ALTER TABLE customer_product
ADD CONSTRAINT FK_customer_product_product_id FOREIGN KEY (product_id)
REFERENCES product (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE customer_product
ADD CONSTRAINT FK_customer_product_user_broker_id FOREIGN KEY (user_broker_id)
REFERENCES user_broker (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$

--
-- Создать функцию `f_my_customer_price`
--
CREATE FUNCTION f_my_customer_price (email varchar(255), product_id int, price double)
RETURNS int(11)
BEGIN
  DECLARE record int;
  DECLARE user_id int;
  DECLARE quantity int;

  SELECT
    ub.id INTO user_id
  FROM user_broker ub
    JOIN user u
      ON ub.user_id = u.id
  WHERE u.email = email;

  SELECT
    SUM(cp.quantity),
    COUNT(cp.id) INTO quantity, record
  FROM customer_product cp
  WHERE (cp.user_broker_id = user_id)
  AND (cp.price = price)
  AND (cp.product_id = product_id);

  IF (record = 0) THEN
    SET quantity = 0;
  END IF;

  RETURN quantity;
END
$$

--
-- Создать функцию `f_del_offer_customer`
--
CREATE FUNCTION f_del_offer_customer (id_offer_customer int, email varchar(255))
RETURNS int(11)
BEGIN
  DECLARE user_id int;
  DECLARE money double;
  DECLARE quantity int;

  SELECT
    cp.price,
    cp.quantity INTO money, quantity
  FROM customer_product cp
  WHERE cp.id = id_offer_customer;

  SELECT
    u.id INTO user_id
  FROM user u
  WHERE u.email = email;

  UPDATE bank b
  SET b.money = b.money + (money * quantity)
  WHERE b.user_id = user_id;

  DELETE
    FROM customer_product
  WHERE id = id_offer_customer;

  RETURN 1;
END
$$

--
-- Создать процедуру `pr_sort_cup_customer`
--
CREATE PROCEDURE pr_sort_cup_customer (product_id int)
BEGIN
  SELECT
    SUM(s.quantity) AS 'quantity',
    s.price
  FROM (SELECT
      cp.price,
      cp.quantity
    FROM customer_product cp
    WHERE (cp.product_id = product_id)
    AND (cp.quantity > 0)
    ORDER BY cp.price ASC, cp.datetime ASC) AS s
  GROUP BY s.price
  ORDER BY s.price DESC;
END
$$

DELIMITER ;

--
-- Создать представление `v_sort_cup_customer`
--
CREATE
VIEW v_sort_cup_customer
AS
SELECT
  `cp`.`price` AS `price`,
  `cp`.`quantity` AS `quantity`,
  `cp`.`datetime` AS `datetime`
FROM `customer_product` `cp`
ORDER BY `cp`.`price`, `cp`.`datetime`;

--
-- Создать таблицу `archive`
--
CREATE TABLE archive (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  product_id int(11) NOT NULL,
  quantity int(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 70,
AVG_ROW_LENGTH = 244,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `UK_archive` для объекта типа таблица `archive`
--
ALTER TABLE archive
ADD UNIQUE INDEX UK_archive (user_id, product_id);

--
-- Создать внешний ключ
--
ALTER TABLE archive
ADD CONSTRAINT FK_archive_product_id FOREIGN KEY (product_id)
REFERENCES product (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE archive
ADD CONSTRAINT FK_archive_user_id FOREIGN KEY (user_id)
REFERENCES user (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Создать таблицу `moderators`
--
CREATE TABLE moderators (
  id int(11) NOT NULL AUTO_INCREMENT,
  first_name varchar(255) NOT NULL,
  middle_name varchar(255) DEFAULT NULL,
  last_name varchar(255) NOT NULL,
  pasport varchar(255) NOT NULL,
  email varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 3,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `email` для объекта типа таблица `moderators`
--
ALTER TABLE moderators
ADD UNIQUE INDEX email (email);

--
-- Создать индекс `pasport` для объекта типа таблица `moderators`
--
ALTER TABLE moderators
ADD UNIQUE INDEX pasport (pasport);

DELIMITER $$

--
-- Создать функцию `f_logout_moderator`
--
CREATE FUNCTION f_logout_moderator (login varchar(255), pass varchar(50))
RETURNS int(11)
BEGIN
  DECLARE log int;

  SELECT
    COUNT(m.email) INTO log
  FROM moderators m
  WHERE (m.email LIKE login) & (m.password = pass);

  RETURN log;
END
$$

DELIMITER ;

--
-- Создать таблицу `procesing`
--
CREATE TABLE procesing (
  id int(11) NOT NULL AUTO_INCREMENT,
  first_name varchar(255) NOT NULL,
  middle_name varchar(255) DEFAULT NULL,
  last_name varchar(255) NOT NULL,
  pasport varchar(255) NOT NULL,
  email varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  file varchar(255) DEFAULT NULL,
  status varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 14,
AVG_ROW_LENGTH = 3276,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `email` для объекта типа таблица `procesing`
--
ALTER TABLE procesing
ADD UNIQUE INDEX email (email);

--
-- Создать индекс `pasport` для объекта типа таблица `procesing`
--
ALTER TABLE procesing
ADD UNIQUE INDEX pasport (pasport);

DELIMITER $$

--
-- Создать функцию `f_pasport_create_acc`
--
CREATE FUNCTION f_pasport_create_acc (pasport_acc varchar(50))
RETURNS int(11)
BEGIN
  DECLARE pasport_user int;
  DECLARE pasport_procesing int;

  SELECT
    COUNT(u.pasport) INTO pasport_user
  FROM user u
  WHERE u.pasport = pasport_acc;

  SELECT
    COUNT(p.pasport) INTO pasport_procesing
  FROM procesing p
  WHERE p.pasport = pasport_acc;

  RETURN pasport_user + pasport_procesing;
END
$$

--
-- Создать функцию `f_createaccaunt`
--
CREATE FUNCTION f_createaccaunt (first_name varchar(50), middle_name varchar(50), last_name varchar(50), pasport varchar(50), email varchar(255), pass varchar(50), file varchar(50))
RETURNS int(11)
BEGIN


  INSERT IGNORE INTO procesing (first_name, middle_name, last_name, pasport, email, password, file)
    VALUES (first_name, middle_name, last_name, pasport, email, pass, file);

  RETURN 1;
END
$$

DELIMITER ;

--
-- Создать представление `v_process`
--
CREATE
VIEW v_process
AS
SELECT
  `p`.`id` AS `id`,
  `p`.`first_name` AS `first_name`,
  `p`.`middle_name` AS `middle_name`,
  `p`.`last_name` AS `last_name`,
  `p`.`pasport` AS `pasport`,
  `p`.`email` AS `email`,
  `p`.`file` AS `file`,
  `p`.`status` AS `status`
FROM `procesing` `p`;

--
-- Создать таблицу `function_max_min`
--
CREATE TABLE function_max_min (
  id int(11) NOT NULL AUTO_INCREMENT,
  max_min varchar(255) NOT NULL,
  price int(11) DEFAULT 0,
  product_id int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 15,
AVG_ROW_LENGTH = 1170,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать индекс `UK_function_max_min` для объекта типа таблица `function_max_min`
--
ALTER TABLE function_max_min
ADD UNIQUE INDEX UK_function_max_min (max_min, product_id);

DELIMITER $$

--
-- Создать функцию `f_processing_cup`
--
CREATE FUNCTION f_processing_cup (product_id int)
RETURNS int(11)
BEGIN
  DECLARE max_customer_price double;
  DECLARE min_seller_price double;
  DECLARE customer_id int;
  DECLARE customer_user_broker_id int;
  DECLARE customer_price double;
  DECLARE customer_quantity int;
  DECLARE seller_id int;
  DECLARE seller_user_broker_id int;
  DECLARE seller_price double;
  DECLARE seller_quantity int;
  DECLARE seller_bank int;
  DECLARE customer_bank int;
  DECLARE trade_time datetime;
  DECLARE cou int;

  SELECT
    fmm.price INTO min_seller_price
  FROM function_max_min fmm
  WHERE (fmm.max_min = 'min_seller')
  AND (fmm.product_id = product_id);

  SELECT
    fmm.price INTO max_customer_price
  FROM function_max_min fmm
  WHERE (fmm.max_min = 'max_customer')
  AND (fmm.product_id = product_id);

  SELECT
    sp.id,
    sp.price,
    sp.quantity,
    sp.user_broker_id INTO seller_id, seller_price, seller_quantity, seller_user_broker_id
  FROM seller_product sp
  WHERE (sp.quantity > 0)
  AND (sp.product_id = product_id)
  ORDER BY sp.price ASC, sp.datetime ASC
  LIMIT 1;

  SELECT
    cp.id,
    cp.price,
    cp.quantity,
    cp.user_broker_id INTO customer_id, customer_price, customer_quantity, customer_user_broker_id
  FROM customer_product cp
  WHERE (cp.quantity > 0)
  AND (cp.product_id = product_id)
  ORDER BY cp.price DESC, cp.datetime DESC
  LIMIT 1;

  SELECT
    ub.user_id INTO seller_bank
  FROM user_broker ub
  WHERE ub.id = seller_id;

  SELECT
    ub.user_id INTO customer_bank
  FROM user_broker ub
  WHERE ub.id = customer_id;


  WHILE (max_customer_price > min_seller_price) DO

    IF (customer_quantity > seller_quantity) THEN
      SELECT
        NOW() INTO trade_time;

      INSERT IGNORE INTO trade (seller_id, customer_id, product_id, datetime, quantity, price)
        VALUES (1, 1, 1, trade_time, 5, 100);

      UPDATE seller_product sp
      SET sp.quantity = 0
      WHERE sp.id = seller_id;

      UPDATE bank b
      SET b.money = b.money + (seller_quantity * seller_price)
      WHERE b.user_id = seller_bank;

      UPDATE customer_product cp
      SET cp.quantity = (customer_quantity - seller_quantity)
      WHERE cp.id = customer_id;

      SELECT
        COUNT(a.id) INTO cou
      FROM archive a
      WHERE (a.user_id = customer_bank)
      AND (a.product_id = product_id);

      IF (cou = 1) THEN
        UPDATE archive a
        SET a.quantity = a.quantity + seller_quantity
        WHERE (a.user_id = customer_bank)
        AND (a.product_id = product_id);
      END IF;

      IF (cou = 0) THEN
        INSERT IGNORE INTO archive (user_id, product_id, quantity)
          VALUES (customer_bank, product_id, seller_quantity);
      END IF;

    END IF;
    IF (customer_quantity = seller_quantity) THEN
      SELECT
        NOW() INTO trade_time;
      INSERT IGNORE INTO trade (seller_id, customer_id, product_id, datetime, quantity, price)
        VALUES (seller_bank, customer_bank, product_id, trade_time, seller_quantity, seller_price);

      UPDATE seller_product sp
      SET sp.quantity = 0
      WHERE sp.id = seller_id;
      UPDATE bank b
      SET b.money = b.money + (seller_quantity * seller_price)
      WHERE b.user_id = seller_bank;

      UPDATE customer_product cp
      SET cp.quantity = 0
      WHERE cp.id = customer_id;

      SELECT
        COUNT(a.id) INTO cou
      FROM archive a
      WHERE (a.user_id = customer_bank)
      AND (a.product_id = product_id);

      IF (cou = 1) THEN
        UPDATE archive a
        SET a.quantity = a.quantity + seller_quantity
        WHERE (a.user_id = customer_bank)
        AND (a.product_id = product_id);
      END IF;

      IF (cou = 0) THEN
        INSERT IGNORE INTO archive (user_id, product_id, quantity)
          VALUES (customer_bank, product_id, seller_quantity);
      END IF;


    END IF;
    IF (customer_quantity < seller_quantity) THEN
      SELECT
        NOW() INTO trade_time;
      INSERT IGNORE INTO trade (seller_id, customer_id, product_id, datetime, quantity, price)
        VALUES (seller_bank, customer_bank, product_id, trade_time, customer_quantity, seller_price);

      UPDATE seller_product sp
      SET sp.quantity = (seller_quantity - customer_quantity)
      WHERE sp.id = seller_id;
      UPDATE bank b
      SET b.money = b.money + (customer_quantity * seller_price)
      WHERE b.user_id = seller_bank;

      UPDATE customer_product cp
      SET cp.quantity = 0
      WHERE cp.id = customer_id;

      SELECT
        COUNT(a.id) INTO cou
      FROM archive a
      WHERE (a.user_id = customer_bank)
      AND (a.product_id = product_id);

      IF (cou = 1) THEN
        UPDATE archive a
        SET a.quantity = a.quantity + customer_quantity
        WHERE (a.user_id = customer_bank)
        AND (a.product_id = product_id);
      END IF;

      IF (cou = 0) THEN
        INSERT IGNORE INTO archive (user_id, product_id, quantity)
          VALUES (customer_bank, product_id, customer_quantity);
      END IF;

    END IF;



    SELECT
      sp.id,
      sp.price,
      sp.quantity,
      sp.user_broker_id INTO seller_id, seller_price, seller_quantity, seller_user_broker_id
    FROM seller_product sp
    WHERE (sp.quantity > 0)
    AND (sp.product_id = product_id)
    ORDER BY sp.price ASC, sp.datetime ASC
    LIMIT 1;

    UPDATE function_max_min fmm
    SET fmm.price = seller_price
    WHERE (fmm.max_min = 'min_seller')
    AND (fmm.product_id = product_id);

    SELECT
      fmm.price INTO min_seller_price
    FROM function_max_min fmm
    WHERE (fmm.max_min = 'min_seller')
    AND (fmm.product_id = product_id);


    SELECT
      cp.id,
      cp.price,
      cp.quantity,
      cp.user_broker_id INTO customer_id, customer_price, customer_quantity, customer_user_broker_id
    FROM customer_product cp
    WHERE (cp.quantity > 0)
    AND (cp.product_id = product_id)
    ORDER BY cp.price DESC, cp.datetime DESC
    LIMIT 1;

    UPDATE function_max_min fmm
    SET fmm.price = customer_price
    WHERE (fmm.max_min = 'max_customer')
    AND (fmm.product_id = product_id);

    SELECT
      fmm.price INTO max_customer_price
    FROM function_max_min fmm
    WHERE (fmm.max_min = 'max_customer')
    AND (fmm.product_id = product_id);

    SELECT
      ub.user_id INTO seller_bank
    FROM user_broker ub
    WHERE ub.id = seller_id;

    SELECT
      ub.user_id INTO customer_bank
    FROM user_broker ub
    WHERE ub.id = customer_id;
  END WHILE;



  RETURN 1;
END
$$

--
-- Создать функцию `f_cup_processing`
--
CREATE FUNCTION f_cup_processing (product_id int)
RETURNS int(11)
BEGIN
  DECLARE max_customer double;
  DECLARE min_seller double;
  DECLARE cp_id int;
  DECLARE cp_user_broker_id int;
  DECLARE cp_datetime datetime;
  DECLARE cp_quantity int;
  DECLARE cp_price double;
  DECLARE cp_user_id int;
  DECLARE cp_chek int;

  DECLARE sp_id int;
  DECLARE sp_user_broker_id int;
  DECLARE sp_datetime datetime;
  DECLARE sp_quantity int;
  DECLARE sp_price double;
  DECLARE sp_user_id int;
  DECLARE sp_check int;

  DECLARE trade_time datetime;
  DECLARE check_archive int;

  SELECT
    fmm.price INTO max_customer
  FROM function_max_min fmm
  WHERE fmm.max_min = 'max_customer'
  AND fmm.product_id = product_id;

  SELECT
    fmm.price INTO min_seller
  FROM function_max_min fmm
  WHERE fmm.max_min = 'min_seller'
  AND fmm.product_id = product_id;

  SELECT
    cp.id,
    cp.user_broker_id,
    cp.datetime,
    cp.quantity,
    cp.price,
    u.id INTO cp_id, cp_user_broker_id, cp_datetime, cp_quantity, cp_price, cp_user_id
  FROM customer_product cp
    JOIN user_broker ub
      ON cp.user_broker_id = ub.id
    JOIN user u
      ON ub.user_id = u.id
  WHERE (cp.product_id = product_id)
  AND (cp.quantity > 0)
  ORDER BY cp.price DESC, cp.datetime ASC
  LIMIT 1;

  SELECT
    sp.id,
    sp.user_broker_id,
    sp.datetime,
    sp.quantity,
    sp.price,
    u.id INTO sp_id, sp_user_broker_id, sp_datetime, sp_quantity, sp_price, sp_user_id
  FROM seller_product sp
    JOIN user_broker ub
      ON sp.user_broker_id = ub.id
    JOIN user u
      ON ub.user_id = u.id
  WHERE (sp.product_id = product_id)
  AND (sp.quantity > 0)
  ORDER BY sp.price ASC, sp.datetime DESC
  LIMIT 1;

  WHILE (max_customer >= min_seller) DO

    IF (sp_quantity < cp_quantity) THEN
      SELECT
        NOW() INTO trade_time;
      INSERT IGNORE INTO trade (seller_id, customer_id, product_id, datetime, quantity, price)
        VALUES (sp_user_id, cp_user_id, product_id, trade_time, sp_quantity, min_seller);

      UPDATE bank b
      SET b.money = b.money + (min_seller * sp_quantity)
      WHERE b.user_id = sp_user_id;

      SELECT
        COUNT(a.id) INTO check_archive
      FROM archive a
      WHERE a.user_id = cp_user_id;

      IF (check_archive = 0) THEN
        INSERT IGNORE INTO archive (user_id, product_id, quantity)
          VALUES (cp_user_id, product_id, sp_quantity);
      END IF;

      IF (check_archive != 1) THEN
        UPDATE archive a
        SET a.quantity = a.quantity + sp_quantity
        WHERE a.user_id = cp_user_id
        AND a.product_id = product_id;
      END IF;

      UPDATE customer_product cp
      SET cp.quantity = cp.quantity - sp_quantity
      WHERE cp.id = cp_id
      AND cp.product_id = product_id;

      UPDATE seller_product sp
      SET sp.quantity = 0
      WHERE sp.id = sp_id
      AND sp.product_id = product_id;


    END IF;

    IF (sp_quantity = cp_quantity) THEN
      SELECT
        NOW() INTO trade_time;
      INSERT IGNORE INTO trade (seller_id, customer_id, product_id, datetime, quantity, price)
        VALUES (sp_user_id, cp_user_id, product_id, trade_time, sp_quantity, min_seller);

      UPDATE bank b
      SET b.money = b.money + (min_seller * sp_quantity)
      WHERE b.user_id = sp_user_id;

      SELECT
        COUNT(a.id) INTO check_archive
      FROM archive a
      WHERE a.user_id = cp_user_id;

      IF (check_archive = 0) THEN
        INSERT IGNORE INTO archive (user_id, product_id, quantity)
          VALUES (cp_user_id, product_id, sp_quantity);
      END IF;

      IF (check_archive != 1) THEN
        UPDATE archive a
        SET a.quantity = a.quantity + sp_quantity
        WHERE a.user_id = cp_user_id
        AND a.product_id = product_id;
      END IF;

      UPDATE customer_product cp
      SET cp.quantity = 0
      WHERE cp.id = cp_id
      AND cp.product_id = product_id;

      UPDATE seller_product sp
      SET sp.quantity = 0
      WHERE sp.id = sp_id
      AND sp.product_id = product_id;


    END IF;

    IF (sp_quantity > cp_quantity) THEN
      SELECT
        NOW() INTO trade_time;
      INSERT IGNORE INTO trade (seller_id, customer_id, product_id, datetime, quantity, price)
        VALUES (sp_user_id, cp_user_id, product_id, trade_time, cp_quantity, min_seller);

      UPDATE bank b
      SET b.money = b.money + (min_seller * cp_quantity)
      WHERE b.user_id = sp_user_id;

      SELECT
        COUNT(a.id) INTO check_archive
      FROM archive a
      WHERE a.user_id = cp_user_id;

      IF (check_archive = 0) THEN
        INSERT IGNORE INTO archive (user_id, product_id, quantity)
          VALUES (cp_user_id, product_id, cp_quantity);
      END IF;

      IF (check_archive != 1) THEN
        UPDATE archive a
        SET a.quantity = a.quantity + cp_quantity
        WHERE a.user_id = cp_user_id
        AND a.product_id = product_id;
      END IF;

      UPDATE customer_product cp
      SET cp.quantity = 0
      WHERE cp.id = cp_id
      AND cp.product_id = product_id;

      UPDATE seller_product sp
      SET sp.quantity = sp.quantity - cp_quantity
      WHERE sp.id = sp_id
      AND sp.product_id = product_id;


    END IF;


    SELECT
      COUNT(cp.id) INTO cp_chek
    FROM customer_product cp
    WHERE (cp.product_id = product_id)
    AND (cp.quantity > 0);

    IF (cp_chek != 0) THEN
      SELECT
        cp.id,
        cp.user_broker_id,
        cp.datetime,
        cp.quantity,
        cp.price,
        u.id INTO cp_id, cp_user_broker_id, cp_datetime, cp_quantity, cp_price, cp_user_id
      FROM customer_product cp
        JOIN user_broker ub
          ON cp.user_broker_id = ub.id
        JOIN user u
          ON ub.user_id = u.id
      WHERE (cp.product_id = product_id)
      AND (cp.quantity > 0)
      ORDER BY cp.price DESC, cp.datetime ASC
      LIMIT 1;

      UPDATE function_max_min fmm
      SET fmm.price = cp_price
      WHERE (fmm.max_min = 'max_customer')
      AND (fmm.product_id = product_id);

      SELECT
        fmm.price INTO max_customer
      FROM function_max_min fmm
      WHERE (fmm.max_min = 'max_customer')
      AND (fmm.product_id = product_id);


    END IF;

    IF (cp_chek = 0) THEN


      UPDATE function_max_min fmm
      SET fmm.price = 0
      WHERE (fmm.max_min = 'max_customer')
      AND (fmm.product_id = product_id);

      SELECT
        fmm.price INTO max_customer
      FROM function_max_min fmm
      WHERE (fmm.max_min = 'max_customer')
      AND (fmm.product_id = product_id);


    END IF;

    SELECT
      COUNT(sp.id) INTO sp_check
    FROM seller_product sp
    WHERE (sp.product_id = product_id)
    AND (sp.quantity > 0);


    IF (sp_check != 0) THEN
      SELECT
        sp.id,
        sp.user_broker_id,
        sp.datetime,
        sp.quantity,
        sp.price,
        u.id INTO sp_id, sp_user_broker_id, sp_datetime, sp_quantity, sp_price, sp_user_id
      FROM seller_product sp
        JOIN user_broker ub
          ON sp.user_broker_id = ub.id
        JOIN user u
          ON ub.user_id = u.id
      WHERE (sp.product_id = product_id)
      AND (sp.quantity > 0)
      ORDER BY sp.price ASC, sp.datetime DESC
      LIMIT 1;

      UPDATE function_max_min fmm
      SET fmm.price = sp_price
      WHERE (fmm.max_min = 'min_seller')
      AND (fmm.product_id = product_id);

      SELECT
        fmm.price INTO min_seller
      FROM function_max_min fmm
      WHERE (fmm.max_min = 'min_seller')
      AND (fmm.product_id = product_id);

    END IF;

    IF (sp_check = 0) THEN
      UPDATE function_max_min fmm
      SET fmm.price = 100000000000
      WHERE (fmm.max_min = 'min_seller')
      AND (fmm.product_id = product_id);

      SELECT
        fmm.price INTO min_seller
      FROM function_max_min fmm
      WHERE (fmm.max_min = 'min_seller')
      AND (fmm.product_id = product_id);
    END IF;





  END WHILE;

  RETURN 1;
END
$$

--
-- Создать функцию `f_add_seller_product`
--
CREATE FUNCTION f_add_seller_product (email varchar(50), product_id int, datetime datetime, quantity int, quantity_last int, price double)
RETURNS int(11)
BEGIN
  DECLARE user_id int;
  DECLARE user_broker_id int;
  DECLARE min_seller_price double;

  SELECT
    u.id INTO user_id
  FROM user u
  WHERE u.email = email;


  SELECT
    ub.id INTO user_broker_id
  FROM user_broker ub
    JOIN user u
      ON ub.user_id = u.id
  WHERE u.email = email;

  UPDATE archive a
  SET a.quantity = (quantity_last - quantity)
  WHERE (a.user_id = user_id)
  AND (a.product_id = product_id);

  INSERT IGNORE INTO seller_product (user_broker_id, product_id, datetime, quantity, price, `all`)
    VALUE (user_broker_id, product_id, datetime, quantity, price, quantity);

  SELECT
    fmm.price INTO min_seller_price
  FROM function_max_min fmm
  WHERE (fmm.max_min = 'min_seller')
  AND (fmm.product_id = product_id);

  IF (min_seller_price > price) THEN
    UPDATE function_max_min fmm
    SET fmm.price = price
    WHERE (fmm.max_min = 'min_seller')
    AND (fmm.product_id = product_id);
  END IF;
  RETURN 1;
END
$$

--
-- Создать функцию `f_add_customer_product`
--
CREATE FUNCTION f_add_customer_product (email varchar(50), product_id int, datetime datetime, quantity int, price double)
RETURNS int(11)
BEGIN
  DECLARE user_id int;
  DECLARE user_broker_id int;
  DECLARE max_customer_price double;

  SELECT
    ub.id,
    u.id INTO user_broker_id, user_id
  FROM user_broker ub
    JOIN user u
      ON ub.user_id = u.id
  WHERE u.email = email;

  UPDATE bank b
  SET b.money = (b.money - price * quantity)
  WHERE b.user_id = user_id;

  INSERT IGNORE INTO customer_product (user_broker_id, product_id, datetime, quantity, price, `all`)
    VALUE (user_broker_id, product_id, datetime, quantity, price, quantity);

  SELECT
    fmm.price INTO max_customer_price
  FROM function_max_min fmm
  WHERE (fmm.max_min = 'max_customer')
  AND (fmm.product_id = product_id);

  IF (price > max_customer_price) THEN
    UPDATE function_max_min fmm
    SET fmm.price = price
    WHERE (fmm.max_min = 'max_customer')
    AND (fmm.product_id = product_id);
  END IF;

  RETURN 1;
END
$$

DELIMITER ;

--
-- Создать таблицу `function_seller`
--
CREATE TABLE function_seller (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  quantity int(11) NOT NULL,
  price double NOT NULL,
  datetime datetime NOT NULL,
  `all` int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 8,
AVG_ROW_LENGTH = 2340,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать таблицу `function_customer`
--
CREATE TABLE function_customer (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  quantity int(11) NOT NULL,
  price int(11) NOT NULL,
  datetime datetime NOT NULL,
  `all` int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 7,
AVG_ROW_LENGTH = 2730,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

DELIMITER $$

--
-- Создать процедуру `pr_broker_procesing`
--
CREATE PROCEDURE pr_broker_procesing (IN company_id varchar(50))
BEGIN
  SELECT
    bp.id,
    u.first_name,
    u.middle_name,
    u.last_name,
    bp.broker_id,
    t.name
  FROM broker_procesing bp
    JOIN user u
      ON bp.user_id = u.id
    JOIN company_tarif ct
      ON bp.company_tarif_id = ct.id
    JOIN company c
      ON ct.company_id = c.id
    JOIN tarif t
      ON ct.tarif_id = t.id
  WHERE c.id = company_id;
END
$$

--
-- Создать функцию `f_seller_chek_quantity`
--
CREATE FUNCTION f_seller_chek_quantity (email varchar(50), product_id int)
RETURNS int(11)
BEGIN
  DECLARE user_id int;
  DECLARE chek int;

  SELECT
    u.id INTO user_id
  FROM user u
  WHERE u.email = email;


  SELECT
    a.quantity INTO chek
  FROM archive a
  WHERE (a.user_id = user_id)
  AND (a.product_id = product_id);

  RETURN chek;
END
$$

--
-- Создать функцию `f_sale_chek_category`
--
CREATE FUNCTION f_sale_chek_category (email varchar(50), product_id int)
RETURNS int(11)
BEGIN
  DECLARE user_id int;
  DECLARE chek int;

  SELECT
    u.id INTO user_id
  FROM user u
  WHERE u.email = email;

  SELECT
    COUNT(a.product_id) INTO chek
  FROM archive a
  WHERE (a.user_id = user_id)
  AND (a.product_id = product_id);

  RETURN chek;
END
$$

--
-- Создать функцию `f_logout_user`
--
CREATE FUNCTION f_logout_user (login varchar(255), pass varchar(50))
RETURNS int(11)
BEGIN
  DECLARE log int;

  SELECT
    COUNT(u.email) INTO log
  FROM user u
  WHERE (u.email LIKE login) & (u.password = pass);

  RETURN log;
END
$$

--
-- Создать функцию `f_date_day`
--
CREATE FUNCTION f_date_day (time int)
RETURNS int(11)
BEGIN

  DECLARE time_now datetime;
  DECLARE time_new datetime;
  DECLARE time_day int;

  SELECT
    CURRENT_DATE() INTO time_now;

  SELECT
    ADDDATE(time_now, INTERVAL time DAY) INTO time_new;


  SELECT
    DAYOFMONTH(time_new) INTO time_day;

  RETURN time_day;
END
$$

--
-- Создать функцию `f_count_archive`
--
CREATE FUNCTION f_count_archive (product_id int, user_id int, quantity int)
RETURNS int(11)
BEGIN
  DECLARE cou int;

  SELECT
    COUNT(a.id) INTO cou
  FROM archive a
  WHERE (a.user_id = user_id)
  AND (a.product_id = product_id);

  IF (cou = 1) THEN
    UPDATE archive a
    SET a.quantity = a.quantity + quantity
    WHERE (a.user_id = user_id)
    AND (a.product_id = product_id);
  END IF;

  IF (cou = 0) THEN
    INSERT IGNORE INTO archive (user_id, product_id, quantity)
      VALUES (user_id, product_id, quantity);
  END IF;

  RETURN 1;
END
$$

DELIMITER ;

-- 
-- Вывод данных для таблицы tarif
--
INSERT INTO tarif VALUES
(1, 'Стандартный', 'Для трейдеров и инвесторов с разпичныаи объёмами и интенсивностью торговли- самые низние ставки брокерской комиссии. Тариф с абонентской платой.\r\n', 365),
(2, ' VIP-квартал', 'Персональное сопровождение инвесторов, предпочитающих ежеквартальные сделки', 91),
(3, 'VIP-год', 'Персональное сопровождение инвесторов, предпочитающих долгосрочное инвестирование', 365),
(4, 'Сделка', 'Предназначен для разового оформления сделки. Тариф без абонентской платы.  ', 365);

-- 
-- Вывод данных для таблицы company
--
INSERT INTO company VALUES
(1, 'Турим -  Пурим', '789066'),
(2, 'American project', '505050'),
(3, 'Ки-кет', '989898');

-- 
-- Вывод данных для таблицы company_tarif
--
INSERT INTO company_tarif VALUES
(1, 1, 1),
(2, 1, 2),
(4, 1, 3),
(5, 1, 4),
(6, 2, 1),
(7, 2, 3),
(8, 2, 4),
(9, 3, 1),
(10, 3, 4);

-- 
-- Вывод данных для таблицы brokers
--
INSERT INTO brokers VALUES
(1, 'Вова', 'Петрович', 'Попкин', 90784444, 'vova@list.ru', '12345', 2),
(2, 'Петя', 'Карлович', 'Птушка', 76454545, 'pety@list.ru', '12345', 1),
(3, 'Вова', NULL, 'Дивко', 12213223, 'vovadiv@kist.ru', '12345', 3);

-- 
-- Вывод данных для таблицы user
--
INSERT INTO user VALUES
(1, 'Вася', 'Иванович', 'Пупкин', '1234567890', '1234', 's@list.ru'),
(2, 'Петя', 'Иванович', 'Пупкин\r\n', '0987654321', '1234', 's1@list.ru'),
(3, 'Петя', 'Иванович', 'Анкин', '5678904321', '4321', 's2@list.ru'),
(4, 'Петя', 'Морков', 'Морковкин', '01234556789', 'A3456', 'a@gmail.ru'),
(7, 'Полина', 'Владимирович', 'Петрошенко', '3019928702', 'ira198', 'ira@yandex.ru'),
(8, 'Андрей', '', 'Петрошенко', '4019938702', 'gira1987', 'gira222@yandex.ru'),
(9, 'Софья', 'Не задано', 'Камарова', '556669995', '1', 'yra@gmail.com'),
(10, 'Полина', 'Не задано', 'Дырко', '3456928702', 'ira1987', 'wira@yandex.ru'),
(11, 'Елена', 'Не задано', 'Комарова', '1122334455', '12345', 'ekom@yandex.ru'),
(12, 'Мирослава', 'Владимировна', 'Комарова', '23456723457', 'mira2027', 'mira@yandex.ru'),
(13, 'Mike', '0', 'Safronov', '12344321345', '1234', 'mike.safronov@gmail.com');

-- 
-- Вывод данных для таблицы broker_tarif
--
INSERT INTO broker_tarif VALUES
(9, 1, 6),
(10, 1, 7),
(8, 1, 8),
(11, 2, 1),
(12, 2, 2),
(13, 2, 4),
(14, 2, 5),
(15, 3, 9),
(16, 3, 10);

-- 
-- Вывод данных для таблицы categoty
--
INSERT INTO categoty VALUES
(1, 'Овощи', 'Овощи — кулинарный термин, обозначающий съедобную часть (например, плод или клубень) некоторых растений, а также всякую твёрдую растительную пищу, за исключением фруктов, круп, грибов, орехов и съедобных водорослей.'),
(2, 'Фрукты', 'Фрукт - сочный съедобный плод растения. Фрукты являются важной составляющей пищи человека и многих животных. В древнерусском языке слова «фрукт» не существовало, оно появилось лишь в 1705 году'),
(3, 'Ягоды', 'Ягоды (в бытовом значении) — это обычно очень сочные, вкусные и полезные маленькие плоды кустарниковых или травянистых растений. Самые известные из ягод — это клубника, смородина, малина, крыжовник. ');

-- 
-- Вывод данных для таблицы user_broker
--
INSERT INTO user_broker VALUES
(1, 10, 7, 'ddddddd', '2020-06-18', '0000-00-00'),
(2, 12, 2, 'ddddddd', '0000-00-00', '0000-00-00'),
(4, 13, 8, 'ddddddd', '0000-00-00', '2000-11-11'),
(5, 9, 1, 'rrrrrrr', '2020-06-16', '2020-06-24'),
(6, 12, 9, 'dddaaa', '2020-06-22', '2020-07-08');

-- 
-- Вывод данных для таблицы product
--
INSERT INTO product VALUES
(1, '12345-A', 'Яблоки', 'Сочный плод яблони, который употребляется в пищу в свежем виде, служит сырьём в кулинарии и для приготовления напитков. Наибольшее распространение получила яблоня домашняя, реже выращивают яблоню сливолистную. Размер красных, зелёных или жёлтых шаровидных плодов 5-13 см в диаметре.', 2),
(2, '123-P', 'Груша', 'Сладкий съедобный плод, б. ч. круглый внизу и конически утончающийся к стеблю.\r\n', 2),
(3, '321-P', 'Ананас', 'Многолетнее травянистое растение, вид рода Ананас (Ananas) семейства Бромелиевые (Bromeliaceae).', 2),
(4, '1234-C', 'Морковь', 'Двулетнее растение, овощная культура, подвид вида морковь дикая. Обычно в быту под словом «морковь» подразумевается широко распространенный корнеплод именно этого растения, который обычно относят к овощам.', 1),
(5, '345-B', 'Свекла', 'Однолетнее, двулетнее или многолетнее травянистое растение; вид рода Свёкла семейства Амарантовые (ранее род относился к семейству Маревые). Культивируется на больших площадях повсеместно.', 1),
(6, '34567', 'Арбуз', 'Ягода, шаровидной, овальной, уплощённой или цилиндрической формы; окраска коры от белой и жёлтой до тёмно-зелёной с рисунком в виде полосок и пятен; мякоть розовая, красная, малиновая, реже — белая и жёлтая.', 3),
(7, '8989-ччч', 'Черешня', 'Древесное растение; вид рода Слива семейства Розовые.\r\nКак полагают, черешня была известна уже за 8000 лет до н. э. в Анатолии и в Европе — на территории современных Дании и Швейцарии (жителям свайных построек).', 3);

-- 
-- Вывод данных для таблицы trade
--
INSERT INTO trade VALUES
(3, 9, 1, 6, '2020-07-06 21:37:41', 10, 120),
(4, 1, 1, 6, '2020-07-06 21:37:41', 10, 120),
(6, 9, 1, 6, '2020-07-14 01:31:35', 10, 120),
(9, 9, 1, 6, '2020-07-14 01:50:40', 10, 120),
(10, 1, 2, 6, '2020-07-28 00:00:00', 10, 120),
(11, 2, 1, 6, '2020-07-28 03:00:00', 10, 120),
(12, 3, 4, 6, '2020-07-29 00:00:00', 5, 120),
(13, 4, 3, 6, '2020-07-30 00:00:00', 5, 120),
(14, 7, 8, 6, '2020-08-01 00:00:00', 10, 120),
(15, 8, 1, 6, '2020-08-02 00:00:00', 10, 120),
(17, 1, 10, 6, '2020-08-04 00:00:00', 10, 120),
(18, 1, 2, 6, '2020-08-04 00:00:00', 5, 120),
(19, 10, 1, 6, '2020-08-04 00:00:00', 15, 120),
(20, 3, 1, 6, '2020-08-04 00:00:00', 10, 120),
(21, 3, 1, 6, '2020-08-01 00:00:00', 4, 120),
(22, 1, 3, 1, '2020-08-05 00:00:00', 4, 120),
(23, 1, 3, 1, '2020-08-06 00:00:00', 10, 120),
(24, 4, 7, 1, '2020-08-07 00:00:00', 10, 120),
(25, 8, 9, 1, '2020-08-08 00:00:00', 20, 120),
(26, 9, 8, 1, '2020-08-09 00:00:00', 30, 120),
(27, 8, 10, 2, '2020-08-05 00:00:00', 10, 120),
(28, 10, 8, 2, '2020-08-06 00:00:00', 15, 120),
(29, 8, 10, 2, '2020-08-06 00:00:00', 5, 120),
(30, 1, 11, 2, '2020-08-07 00:00:00', 6, 120),
(31, 11, 1, 2, '2020-08-08 00:00:00', 12, 120),
(32, 1, 11, 2, '2020-08-08 00:00:00', 6, 120),
(33, 7, 8, 2, '2020-08-09 00:00:00', 5, 120),
(34, 8, 7, 2, '2020-08-10 00:00:00', 5, 120),
(35, 3, 2, 3, '2020-08-04 00:00:00', 5, 120),
(36, 2, 3, 3, '2020-08-05 00:00:00', 5, 120),
(37, 4, 9, 3, '2020-08-06 00:00:00', 5, 120),
(38, 9, 4, 3, '2020-08-08 00:00:00', 10, 120),
(39, 4, 9, 3, '2020-08-09 00:00:00', 10, 120),
(40, 11, 3, 4, '2020-08-04 00:00:00', 20, 120),
(41, 3, 11, 4, '2020-08-06 00:00:00', 15, 120),
(42, 11, 3, 4, '2020-08-08 00:00:00', 5, 120),
(43, 3, 11, 4, '2020-08-09 00:00:00', 25, 120),
(44, 2, 4, 5, '2020-08-03 00:00:00', 7, 120),
(45, 4, 2, 5, '2020-08-04 00:00:00', 2, 120),
(46, 4, 2, 5, '2020-08-06 00:00:00', 5, 120),
(47, 9, 4, 5, '2020-08-06 00:00:00', 9, 120),
(48, 4, 9, 5, '2020-08-07 00:00:00', 3, 120),
(49, 4, 9, 5, '2020-08-08 00:00:00', 3, 120),
(50, 4, 9, 5, '2020-08-09 00:00:00', 3, 120),
(51, 7, 10, 7, '2020-08-04 00:00:00', 15, 120),
(52, 7, 10, 7, '2020-08-05 00:00:00', 5, 120),
(53, 10, 7, 7, '2020-08-07 00:00:00', 10, 120),
(54, 10, 7, 7, '2020-08-08 00:00:00', 10, 120),
(55, 9, 12, 7, '2020-08-08 00:00:00', 4, 120),
(56, 12, 9, 7, '2020-08-09 00:00:00', 4, 120),
(58, 1, 1, 1, '0000-00-00 00:00:00', 5, 100),
(62, 1, 9, 1, '2020-08-10 18:28:05', 4, 120),
(63, 1, 9, 1, '2020-08-10 18:40:33', 4, 120),
(64, 1, 8, 1, '2020-08-10 19:12:34', 4, 120),
(65, 1, 8, 1, '2020-08-10 19:16:07', 3, 120),
(66, 1, 9, 1, '2020-08-10 19:16:07', 1, 120),
(67, 1, 1, 1, '2020-08-10 19:20:37', 2, 120),
(68, 1, 9, 1, '2020-08-10 19:20:37', 2, 120);

-- 
-- Вывод данных для таблицы seller_product
--
INSERT INTO seller_product VALUES
(6, 4, 6, '2020-06-24 23:06:22', 20, 125, 20),
(7, 1, 6, '2020-06-24 23:34:59', 10, 140, 10),
(8, 4, 6, '2020-06-24 23:35:13', 20, 140, 20),
(9, 1, 6, '2020-06-24 23:40:15', 14, 130, 14),
(10, 2, 6, '2020-07-14 00:00:00', 0, 140, 20),
(11, 5, 6, '2020-07-14 14:22:10', 12, 134, 12),
(13, 5, 1, '2020-07-19 22:05:19', 5, 123, 5),
(15, 5, 1, '2020-07-22 13:29:49', 12, 134, 12),
(16, 5, 6, '2020-07-22 14:06:06', 12, 144, 12),
(17, 5, 1, '2020-07-22 14:22:37', 12, 333, 12),
(18, 5, 6, '2020-07-22 14:22:53', 10, 333, 10),
(19, 5, 6, '2020-07-22 14:23:27', 12, 333, 12),
(20, 5, 6, '2020-07-22 18:30:27', 12, 333, 12),
(21, 2, 2, '2020-07-30 00:00:00', 10, 120, 10),
(22, 1, 2, '2020-08-08 00:00:00', 5, 130, 5),
(23, 6, 2, '2020-08-02 00:00:00', 7, 120, 7),
(24, 1, 3, '2020-08-07 00:00:00', 10, 100, 10),
(25, 4, 3, '2020-08-01 00:00:00', 3, 110, 3),
(26, 6, 3, '2020-08-02 00:00:00', 7, 333, 7),
(27, 1, 4, '2020-08-01 00:00:00', 10, 100, 10),
(28, 2, 4, '2020-08-01 00:00:00', 5, 120, 5),
(29, 4, 4, '2020-08-04 00:00:00', 5, 333, 5),
(30, 6, 5, '2020-08-03 00:00:00', 10, 95, 10),
(31, 5, 5, '2020-07-31 00:00:00', 10, 100, 10),
(32, 4, 7, '2020-08-01 00:00:00', 7, 92, 7),
(33, 5, 7, '2020-07-31 00:00:00', 6, 93, 6),
(34, 6, 7, '2020-08-07 00:00:00', 10, 333, 10),
(35, 5, 1, '2020-08-07 11:37:02', 0, 120, 4),
(37, 5, 1, '2020-08-07 11:51:45', 0, 10, 4),
(38, 4, 1, '2020-08-07 12:23:52', 0, 100, 3),
(39, 5, 6, '2020-08-07 16:01:52', 0, 123, 1);

-- 
-- Вывод данных для таблицы procesing
--
INSERT INTO procesing VALUES
(6, 'Ваня', 'Дмитриевич', 'Петрошенко', '7878937878', 'pira222@yandex.ru', 'ira1987', NULL, 'pety@gmail.com'),
(8, 'Оля', 'Александровна', 'Тимошенко', '1771771771', 'olyatim@gmail.com', 'olya1995', NULL, ''),
(10, 'Даша', 'Макарова', 'Дырко', '7999774447', 'dasha@yandex.ru', 'dassha1987', 'guvk', NULL),
(11, 'Софья', 'Еленовна', 'Камарова', '5566677755', 'elka@yandex.ru', '1234', '5566677755.png', NULL),
(12, 'Софья', 'Еленовна', 'Комарова', '5566677777', 'sweetjopka@gmail.com', '1234', '5566677777.png', 'zina@mail.ru'),
(13, 'Софья', 'Еленовна', 'Комарова', 'asd', 's1a2k@list.ru', 'asasas', 'asd.png', 'zina@mail.ru');

-- 
-- Вывод данных для таблицы my_cup
--
INSERT INTO my_cup VALUES
(8, 1, 1),
(4, 1, 2),
(9, 1, 4),
(11, 1, 6),
(18, 8, 1);

-- 
-- Вывод данных для таблицы moderators
--
INSERT INTO moderators VALUES
(1, 'Зина', 'Петровна', 'Тютчева', '4545454545', 'zina@mail.ru', '12345'),
(2, 'Петя', 'Кирович', 'Тушкин', '2323232323', 'pety@gmail.com', '12345');

-- 
-- Вывод данных для таблицы function_seller
--
INSERT INTO function_seller VALUES
(1, 1, 23, 100, '2020-06-25 00:00:00', 23),
(2, 2, 26, 100, '2020-06-22 00:00:00', 26),
(3, 1, 30, 109, '2020-06-24 00:00:00', 200),
(4, 5, 29, 160, '2020-06-23 00:00:00', 29),
(5, 6, 34, 160, '2020-06-09 00:00:00', 34),
(6, 3, 345, 160, '2020-06-29 00:00:00', 345),
(7, 4, 9, 121, '2020-06-01 00:00:00', 34);

-- 
-- Вывод данных для таблицы function_max_min
--
INSERT INTO function_max_min VALUES
(1, 'max_customer', 120, 1),
(2, 'min_seller', 123, 1),
(3, 'max_customer', 95, 2),
(4, 'max_customer', 90, 3),
(5, 'max_customer', 90, 4),
(6, 'max_customer', 90, 5),
(7, 'max_customer', 123, 6),
(8, 'max_customer', 90, 7),
(9, 'min_seller', 120, 2),
(10, 'min_seller', 100, 3),
(11, 'min_seller', 100, 4),
(12, 'min_seller', 95, 5),
(13, 'min_seller', 125, 6),
(14, 'min_seller', 92, 7);

-- 
-- Вывод данных для таблицы function_customer
--
INSERT INTO function_customer VALUES
(1, 6, 100, 120, '2020-06-25 00:00:00', 100),
(2, 7, 20, 110, '2020-06-26 00:00:00', 20),
(3, 9, 34, 90, '2020-06-22 00:00:00', 34),
(4, 6, 5, 80, '2020-06-26 00:00:00', 5),
(5, 5, 6, 80, '2020-06-26 22:04:07', 6),
(6, 10, 12, 65, '2020-06-24 00:00:00', 12);

-- 
-- Вывод данных для таблицы customer_product
--
INSERT INTO customer_product VALUES
(3, 2, 6, '2020-06-21 23:20:48', 12, 100, 12),
(5, 2, 6, '2020-06-22 00:17:36', 0, 120, 30),
(6, 5, 6, '2020-06-24 23:01:28', 144, 115, 144),
(7, 1, 6, '2020-07-14 00:00:00', 0, 120, 10),
(12, 5, 6, '2020-07-14 14:07:18', 12, 123, 12),
(14, 5, 1, '2020-07-19 21:02:02', 5, 3, 5),
(16, 5, 1, '2020-07-19 21:26:46', 12, 10, 12),
(17, 1, 1, '2020-08-04 00:00:00', 0, 80, 4),
(18, 2, 2, '2020-07-27 00:00:00', 5, 90, 5),
(19, 4, 2, '2020-07-30 00:00:00', 10, 75, 10),
(20, 5, 2, '2020-08-01 00:00:00', 6, 95, 6),
(21, 5, 3, '2020-07-30 00:00:00', 7, 90, 7),
(22, 2, 3, '2020-07-28 00:00:00', 7, 85, 7),
(23, 2, 3, '2020-07-29 00:00:00', 10, 80, 10),
(24, 1, 4, '2020-07-28 00:00:00', 5, 90, 5),
(25, 2, 4, '2020-07-28 00:00:00', 5, 89, 5),
(26, 4, 4, '2020-07-30 00:00:00', 10, 80, 5),
(27, 6, 5, '2020-07-30 00:00:00', 15, 90, 15),
(28, 5, 5, '2020-07-31 00:00:00', 10, 44, 10),
(29, 4, 5, '2020-07-31 00:00:00', 7, 80, 7),
(30, 1, 7, '2020-08-04 00:00:00', 10, 90, 10),
(31, 2, 7, '2020-08-02 00:00:00', 5, 90, 5),
(32, 6, 7, '2020-08-06 00:00:00', 20, 80, 20),
(41, 5, 2, '2020-08-06 00:55:37', 4, 10, 4),
(42, 5, 1, '2020-08-07 11:44:13', 0, 120, 4),
(43, 5, 1, '2020-08-07 12:04:03', 0, 100, 5),
(44, 4, 1, '2020-08-07 12:38:59', 0, 120, 4),
(45, 6, 1, '2020-08-10 00:00:00', 2, 120, 13);

-- 
-- Вывод данных для таблицы broker_procesing
--
INSERT INTO broker_procesing VALUES
(1, 2, '', 4, 'aaaaa'),
(10, 1, NULL, 10, '1234567890_10.png'),
(11, 3, NULL, 9, '5678904321_9.png'),
(12, 12, NULL, 6, 'aaaaan');

-- 
-- Вывод данных для таблицы bank
--
INSERT INTO bank VALUES
(1, 1, 11788),
(2, 2, 1000),
(3, 3, 1000),
(4, 4, 1000),
(5, 7, 1000),
(6, 8, 530),
(7, 9, 13000),
(8, 10, 1000),
(9, 11, 1000),
(10, 12, 1000);

-- 
-- Вывод данных для таблицы archive
--
INSERT INTO archive VALUES
(1, 1, 6, 30),
(2, 1, 1, 957),
(3, 1, 2, 100),
(4, 1, 3, 100),
(5, 1, 4, 100),
(6, 1, 5, 100),
(7, 2, 1, 100),
(8, 2, 2, 100),
(9, 2, 3, 100),
(10, 2, 4, 100),
(11, 2, 5, 100),
(12, 2, 6, 100),
(13, 2, 7, 100),
(14, 3, 1, 100),
(15, 3, 2, 100),
(16, 3, 3, 100),
(17, 3, 4, 100),
(18, 3, 5, 100),
(19, 3, 6, 100),
(20, 3, 7, 100),
(21, 4, 1, 100),
(22, 4, 2, 100),
(23, 4, 3, 100),
(24, 4, 4, 100),
(25, 4, 5, 100),
(26, 4, 6, 100),
(27, 4, 7, 100),
(28, 7, 1, 100),
(29, 7, 2, 100),
(30, 7, 3, 100),
(31, 7, 4, 100),
(32, 7, 5, 100),
(33, 7, 6, 100),
(34, 7, 7, 100),
(35, 8, 1, 104),
(36, 8, 2, 100),
(37, 8, 3, 100),
(38, 8, 4, 100),
(39, 8, 5, 100),
(40, 8, 6, 100),
(41, 8, 7, 100),
(42, 9, 1, 111),
(43, 9, 2, 100),
(44, 9, 3, 100),
(45, 9, 4, 100),
(46, 9, 5, 100),
(47, 9, 6, 100),
(48, 9, 7, 100),
(49, 10, 1, 100),
(50, 10, 2, 100),
(51, 10, 3, 100),
(52, 10, 4, 100),
(53, 10, 5, 100),
(54, 10, 6, 100),
(55, 10, 7, 100),
(56, 11, 1, 100),
(57, 11, 2, 100),
(58, 11, 3, 100),
(59, 11, 4, 100),
(60, 11, 5, 100),
(61, 11, 6, 100),
(62, 11, 7, 100),
(63, 12, 1, 100),
(64, 12, 2, 100),
(65, 12, 3, 100),
(66, 12, 4, 100),
(67, 12, 5, 100),
(68, 12, 6, 100),
(69, 12, 7, 100);

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
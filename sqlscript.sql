REM   Script: SPMS
REM   .

Create Table Company ( 
company_no1 number primary key, 
company_name varchar(50), 
company_location varchar2(50), 
company_service varchar2(50) 
);

Create Table Model_Details ( 
company_no number, 
model_name varchar(100), 
colour varchar(50), 
cellular_technology varchar(20), 
sim_card_slot_count number(10), 
screen_size float(10), 
display_type varchar(100), 
wireless_charging varchar(100), 
ram_size number(10), 
memory_storage_size number(30), 
Rear_camera_mp number(10), 
front_cam number(10), 
os varchar(100), 
battery_capacity number(20), 
price number(20), 
IMEI_Number number(15)NOT NULL PRIMARY KEY, 
constraint fk foreign key (company_no) references Company(company_no1) 
);

INSERT INTO Company VALUES (1,'SAMSUNG','South Korea','INTERNATIONAL');

INSERT INTO Company VALUES (2,'SONY','Japan','INTERNATIONAL');

INSERT INTO Company VALUES (3,'SONY','Japan','INTERNATIONAL');

INSERT INTO Company VALUES (4,'GOOGLE','CALIFORNIA','INTERNATIONAL');

INSERT INTO Company VALUES (5,'SONY','Japan','INTERNATIONAL');

INSERT INTO Company VALUES (6,'SONY','Japan','INTERNATIONAL');

INSERT INTO Company VALUES (7,'APPLE','California','INTERNATIONAL');

INSERT INTO Model_Details VALUES (1,'M51','BLUE','4G',2,6.7,'SAMOLED','NO',8,128,64,1,'ANDROID',7000,20000,567364615645484);

INSERT INTO Model_Details VALUES (2,'R1','Black','4G',2,5.20,'IPS LCD','NO',1,16,13,8,'Android',2620,20000,956473651287986);

INSERT INTO Model_Details VALUES (3,'Z1','Black','3G',1,5.00,'LCD','NO',2,16,20.7,2,'Android',3000,44990,956473651287966);

INSERT INTO Model_Details VALUES (4,'PIXEL 5','GREEN','5G',1,6.0,'OLED','YES',8,128,12,8,'ANDROID',4080,36999,164379318756429);

INSERT INTO Model_Details VALUES (5,'XA','Lime Gold','4G',2,5.00,'IPS LCD','NO',2,16,13,8,'Android',2300,20000,956473651287976);

INSERT INTO Model_Details VALUES (6,'XA1','Black','4G',2,5.00,'IPS LCD','NO',2,32,23,8,'Android',2300,20000,956473651288926);

INSERT INTO Model_Details VALUES (7,'iPhone 13','Midnight Black','5G',1,5.42,'Super Retina XDR OLED','YES',4,256,12,1,'IOS',3227,89000,956473651287995);

desc Model_Details


desc Company


select * from Model_Details;

select * from Company;

select * from Model_Details where price > 25000;

select * from Model_Details where os = 'IOS';

alter table Model_Details rename column front_cam to front_cam_megapilex;

desc Model_Details


alter table Model_Details modify(model_name varchar(50));

desc Model_Details


update Model_Details set cellular_technology = '4G' where price > 20000;

select * from Model_Details;

commit


delete from Model_Details where IMEI_Number = 956473651288926;

select * from Model_Details;

exec savepoint A


update Model_Details set price = 24000 where price = 20000;

select * from Model_Details;

exec savepoint B


rollback


select * from Model_Details;

SELECT COUNT(IMEI_Number) from Model_Details;

SELECT MAX(Price) FROM Model_Details;

SELECT AVG(Price) FROM Model_Details;

SELECT SUM(ram_size) FROM Model_Details;

SELECT IMEI_Number ,SQRT(Rear_camera_mp) FROM Model_Details;

SELECT UPPER(os) FROM Model_Details;

SELECT CONCAT(model_name,colour) FROM Model_Details;

SELECT LOWER(os) FROM Model_Details;

SELECT GREATEST(screen_size) FROM Model_Details;

SELECT * FROM Model_Details WHERE battery_capacity BETWEEN 2500 AND 6000;

SELECT * FROM Model_Details WHERE price BETWEEN 1000 AND 25000 AND price NOT IN (2500,10000);

SELECT * FROM Model_Details ORDER BY price;

DROP TABLE Model_Details;

DROP TABLE COMPANY;


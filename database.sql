DROP DATABASE IF EXISTS project ;
CREATE DATABASE Project;
USE project ;

CREATE TABLE IF NOT EXISTS Driver_Table (
  DriverID INT NOT NULL AUTO_INCREMENT unique,
  First_Name VARCHAR(45) NOT NULL,
  Last_Name VARCHAR(45) NOT NULL,
  User_Name VARCHAR(45) NULL unique,
  User_Password VARCHAR(485) NOT NULL,
  Mobile_Number VARCHAR(45) NOT NULL,
  Email VARCHAR(45) NOT NULL,
  Vehicle_Type VARCHAR(45) NOT NULL,
  Vehicle_Number VARCHAR(45) NOT NULL unique,
  City VARCHAR(45) NOT NULL,
  State VARCHAR(45) NOT NULL,
  Zip_Code VARCHAR(45) NOT NULL,
  PRIMARY KEY (DriverID)
  );


CREATE TABLE IF NOT EXISTS Driver_Images (
  DriverID INT NOT NULL primary key ,
  Driver_image blob ,
  Vehicle_Picture BLOB,
   Driving_License_Picture BLOB ,
  CONSTRAINT fk_Driver_Images_DriverTable
    FOREIGN KEY (DriverID) REFERENCES Driver_Table(DriverID)
    ON DELETE cascade
    ON UPDATE CASCADE);

 INSERT INTO Driver_Table VALUES 
 (1,'jay','raavi','jpn123','jayaprakash','1234567890','jpn@gmail.com','sedan','34568','memphis','tennesse','38111'),
 (2,'sri','raavi','sri123','srir123','1234674539','rsr@gmail.com','suv','34788','newyork','newyork','38911'),
 (3,'john','stien','john123','stien123','1235399908','rjstien@gmail.com','suv','90878','mississippi','miossissipi','39011'),
 (4,'ro','trink','trink123','ro123','1453563457','rtink@gmail.com','sedan','34948','florida','florida','38145'),
 (5,'mei','schi','schiri123','schir123','1239084539','mchi@gmail.com','suv','05765','newyork','newyork','38111'),
 (6,'kim','li','kimli123','kli123','1239078539','kli@gmail.com','suv','34780','newyork','newyork','38111'),
 (7,'brut','jo','bjo123','bjt923','1239095643','bjt@gmail.com','suv','34088','illinois','illinois','38909'),
 (8,'sam','ali','sli123','sli023','1230989549','sli@gmail.com','suv','34708','memphis','memphis','38111'),
 (9,'sid','pencer','spencer123','spn123','1239064390','spencer@gmail.com','suv','34908','mississippi','mississippi','38090'),
 (10,'sim','chem','schem123','schem23','1233967450','schem@gmail.com','suv','34848','memphis','memphis','38111'),
 (11,'sanch','ro','sancho123','scho23','1235390935','scho@gmail.com','suv','30988','arkansas','arkansas','38890'),
 (12,'flash','chin','fchin123','sfchi23','1230934539','sfchi@gmail.com','suv','34938','arkansas','arkansas','38890'),
 (13,'ron','joseph','rjoseph23','rjo123','1253909345','rjo@gmail.com','suv','34734','memphis','memphis','38111'),
 (14,'sachin','prem','psachin123','sprem23','1230945213','sprem@gmail.com','suv','34008','memphis','memphis','38111'),
 (15,'krish','tej','ktej789','tkrish908','1539904562','tkrish@gmail.com','suv','34098','memphis','memphis','38111'),
 (16,'trump','raj','rtrump23','rtrump123','5399065439','rtrump@gmail.com','suv','39098','memphis','memphis','38111'),
 (17,'jarrod','rock','jrock123','jrock23','1239908745','jrock@gmail.com','suv','34790','newyork','newyork','38111'),
 (18,'san','grim','sgrim91','sgrim23','1234909765','sgrim@gmail.com','suv','34018','memphis','memphis','38111'),
 (19,'mani','ram','mram123','maniram123','1245398967','mram@gmail.com','suv','30948','memphis','memphis','38111'),
 (20,'noel','zem','nzem123','nzem30','1234674539','nzem@gmail.com','suv','89088','memphis','memphis','38111')
 ;

 

   INSERT INTO Driver_Images  VALUES
  (1,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver1.JPG')

 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car1.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense1.jpg')
 ), 
 (2,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver2.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car2.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense2.jpg')
 ), 
 (3,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver3.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car3.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense3.jpg')
 ),
(4,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver4.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car4.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense4.jpg')
 ),
  (5,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver5.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car5.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense5.jpg')
 ),
  (6,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver6.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car6.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense7.jpg')
 ),
  (7,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver7.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car7.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense7.jpg')
 ),
  (8,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver8.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car8.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense8.jpg')
 ),
  (9,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver9.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car9.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense9.jpg')
 ),
  (10,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver10.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car10.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense10.jpg')
 ),
  (11,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver11.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car11.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense11.jpg')
 ),
  (12,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver12.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car12.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense12.jpg')
 ),
  (13,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver13.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car13.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense13.jpg')
 ),
  (14,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver14.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car14.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense14.jpg')
 ),
  (15,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver15.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car15.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense15.jpg')
 ),
  (16,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver16.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car16.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense16.jpg')
 ),
  (17,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver17.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car17.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense17.jpg')
 ),
  (18,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver18.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car18.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense18.jpg')
 ),
  (19,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver19.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car19.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense19.jpg')
 ),
  (20,LOAD_FILE('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\driver20.JPG')
 ,load_file('C:\\Users\\Jaya Prakash\Desktop\\dbmsProjectImages\\car20.jpg')
 ,load_file('C:\\Users\\Jaya Prakash\\Desktop\\dbmsProjectImages\\drivinglicense20.jpg')
 ); 
 
CREATE TABLE IF NOT EXISTS Customer_Table (
  CustomerID INT NOT NULL AUTO_INCREMENT unique primary key,
  First_Name VARCHAR(45) NOT NULL,
  Last_Name VARCHAR(45) NOT NULL,
  Mobile VARCHAR(45) NOT NULL,
  UserName VARCHAR(45) NOT NULL unique,
  User_Password VARCHAR(45) NOT NULL,
  Email VARCHAR(45) NOT NULL,
  City VARCHAR(45) NOT NULL,
  State VARCHAR(45) NOT NULL,
  Zip_Code VARCHAR(45) NOT NULL);
  
INSERT INTO Customer_Table VALUES 
(1,'jayaprakash','narayana','1234567890','jayaprakash','Prakash','jpn11@gmail.com','memphis','tennesse','38111')
,(2,'sri','ram','1234567809','ramsri','sriram','srm1@gmail.com','memphis','tennesse','38111')
,(3, 'manjunath', 'vishnu', '1234567990','manjunath1', 'vishnu1','vishnu2@gmail.com','memphis','tennesse','38111')
,(4, 'krishna', 'rao' ,'1234567009','krishna1', 'rao1', 'krishna5@gmail.com','memphis','tennesse','38111')
,(5, 'vamsi', 'krishna','1234567098','vamsi1', 'krishna1', 'vamsi5@gmail.com','memphis','tennesse','38111')
,(6, 'raj','kumar' , '1234567008', 'raj1', 'kumar1', 'raj5@gmail.com','memphis','tennesse','38111')
,(7, 'lakshmi','devi', '1234567889' , 'lakshmi1', 'devi1', 'devi5@gmail.com','memphis','tennesse','38111')
,(8, 'pinky', ' reddy', '1234567888', 'pinky1','reddy1','pinky5@gmail.com','memphis','tennesse','38111')
,(9, 'rahul', 'rao', '1234567998','rahul1', 'rao1', 'rahul5@gmail.com','memphis','tennesse','38111')
,(10, 'aishwarya', 'rai', '1234567999', 'aishwarya1',' rai1','aishwarya5@gmail.com','memphis','tennesse','38111')
,(11, 'eshwari', 'goud', '1234567000', 'eshwari1', 'goud1','eshwari5@gmail.com','memphis','tennesse','38111')
,(12, 'ramu', 'rao', '1234567897','ramu1','rao2','ramu16@gmail.com','memphis','tennesse','38111')
,(13,  'kishan', 'sai','1234567807','kishan1',' sai0',' krishna@gmail.com','memphis','tennesse','38111')
,(14, ' anji', 'rao' ,'1234567997', 'anji1', 'rao3','anji3@gmail.com','memphis','tennesse','38111' )
,(15, 'savitri',' gemini','1234567097','savitri1', ' gemini2','savitri5@gmail.com','memphis','tennesse','38111' )
,(16, ' rambabu', 'desi', '1234567007', 'rambabu1', 'desi1','rambabu5@gmail.com','memphis','tennesse','38111')
,(17, 'shravani', 'batt','1234567878', 'shravani1','batt1','shravani5@gmail.com','memphis','tennesse','38111')
,(18, ' harika', 'pothuru','1234567887', 'harika1', 'pothuru1','harika5@gmail.com','memphis','tennesse','38111')
,(19, 'sruthi', 'hasan',  '1234567799',' sruthi1', 'hasan1','sruthi5@gmail.com','memphis','tennesse','38111' )
,(20, 'milky' , ' ponugoti', '1234567907',' milky1',' ponugoti1',' milky5@gmail.com','memphis','tennesse','38111')
,(21, 'indhu', 'devi', '1123456700', 'indhu1','devi1',' indhu5@gmail.com','memphis','tennesse','38111')
,(22, ' harshitha', 'rao','1123456789', 'harshitha1', 'rao4','harshitha5@gmail.com','memphis','tennesse','38111')
,(23, ' haribabu','devarakonda', ' 1123456780', 'haribabu1','devarakonda1', 'haribabu5@gmail.com','memphis','tennesse','38111')
,(24, ' soundarya', ' rani', ' 1123456799' ,'soundarya',' rani1','soundarya5@gmail.com','memphis','tennesse','38111' )
,(25, 'mahesh babu', ' gattamaneni','1123456709 ', 'mahesh', 'gattamaneni','gattamanenibabu@gmail.com','memphis','tennesse','38111')
,(26, 'buddha', ' kumar', '1123456700', 'buddha1','kumar1','buddha5@gmail.com','memphis','tennesse','38111' )
,(27,  'keerthy', 'suresh', '1123456787','keerthy1','suresh1','keerthy5@gmail.com','memphis','tennesse','38111')
,(28, 'jonny','ram', '1123456788', 'jonny1','ram1','jonny5@gmail.com','memphis','tennesse','38111')
,(29, 'nivedha', 'rashi', '1123456779','nivedha1','rashi1','nivedha5@gmail.com','memphis','tennesse','38111')
,(30, 'gauthami', 'reddy', '1123456790','gauthami1', 'reddy1','gauthami5@gmail.com','memphis','tennesse','38111')
,(31, 'nandhini', 'goud', '1112345670','nandhini1','gound1','nandhini5@gmail.com','memphis','tennesse','38111')
,(32, ' sai', 'ram', '1112345698','sai9','ram12','sai5@gmail.com','memphis','tennesse','38111' )
,(33, ' pathan', 'ram', '1112345678','pathan1',' ram1', 'pathan5@gmail.com','memphis','tennesse','38111')
,(34, 'ram', 'charan', '1112345699','ram1','charan1','ram5@gmail.com','memphis','tennesse','38111')
,(35, 'sai', 'teja','1112345690', 'sai1', 'teja','sai5@gmail.com','memphis','tennesse','38111')
,(36, 'charan', 'kumar', '1112345570','charan1', 'kumar1','charan5@gmail.com','memphis','tennesse','38111')
,(37, 'chathrapati', 'shiva', '1112345673', 'chathrapati1','shiva1','chathrapati5@gmail.com','memphis','tennesse','38111')
,(38, 'anjali', 'rana', '1112345658', 'anjali1','rana1','anjali5@gmail.com','memphis','tennesse','38111')
,(39, 'shivaji', 'pottula', '1112345677', 'shivaji1','pottula1','shivaji5@gmail.com','memphis','tennesse','38111' )
,(40, 'sitara', 'shetty', '1112345679', 'sitara1','shetty1','sitara5@gmail.com','memphis','tennesse','38111')
,(41, 'anushka', 'sharma', '2112345670', 'anushka1', 'sharma1','anushka5@gmail.com','memphis','tennesse','38111')
,(42, 'virat', 'kohli','2112345698', 'virat1','kohli1','virat5@gmail.com','memphis','tennesse','38111' )
,(43, ' virushka', 'kohli', '2112345678', 'virushka1' ,'kohli12','virushka5@gmail.com','memphis','tennesse','38111')
,(44, 'riya', 'bompelli', '2112345699', 'riya1','bompelli1','riya5@gmail.com','memphis','tennesse','38111' )
,(45, 'divya', ' rao', '2112345690', 'divya1','rao16','divya5@gmail.com','memphis','tennesse','38111')
,(46, 'riyanshi', 'pravya', '2112345570','riyanshi1','pravya1','riyanshi5@gmail.com','memphis','tennesse','38111')
,(47, 'dileep', 'kumar', '2112345673','dileep1','kumar16','dileep5@gmail.com','memphis','tennesse','38111' )
,(48, 'chandhra', 'shekar', '2112345658', 'chandhra1','shekar1','chandhra5@gmail.com','memphis','tennesse','38111' )
,(49, 'kavitha', 'kalvakuntla', '2112345677','kavitha1',' kalvakuntla1','kavitha5@gmail.com','memphis','tennesse','38111')
,(50, 'ravi', ' velchala', '2112345679', 'ravi1','velchala1', 'ravi@gmail.com','memphis','tennesse','38111')
;

CREATE TABLE IF NOT EXISTS Payment_Details (
  Payment_ID INT NOT NULL primary key,
  Price INT NOT NULL,
  Card_Number VARCHAR(45) NOT NULL,
  Name_On_The_Card VARCHAR(45) NOT NULL);
  
INSERT INTO Payment_Details VALUES
(1200,17,4441234567,'sai ram')
,(1201,15,4444123456,'pathan ram')
,(1202,7,4444412345,'ram charan')
,(1203,9,4444441234,'sai teja')
,(1204,7,4444444123,'charan kumar')
,(1205,22,4444444412,'chathrapati shiva')
,(1206,20,4444444441,'anjali rana')
,(1207,25,5123456789,'shivaji pottula')
,(1208,9,5512345678,'anushka sharma')
,(1209,8,5551234567,'virat kohli')
,(1210,11,1111111110,'eshwari goud')
,(1211,18,2123456789,'ramu rao')
,(1212,16,2212345678,'kishan sai')
,(1213,12,2221234567,'anji rao')
,(1214,7,2222123456,'savitri gemini')
,(1215,5,2222212345,'rambabu desi')
,(1216,9,2222221234,'shravani batt')
,(1217,8,2222222123,'harika pothuru')
,(1218,7,2222222212,'sruthi hasan')
,(1219,6,3123456789,'milky ponugoti')
,(1220,5,3312345678,'indhu devi')
,(1221,9,3331234567,'harshitha rao')
,(1222,6,3333123456,'soundarya rani')
,(1223,9,3333312345,'mahesh babu gattamaneni')
,(1224,10,3333331234,'buddha kumar')
,(1225,14,3333333123,'keerthy suresh')
,(1226,15,3333333312,'jonny ram')
,(1227,13,3333333331,'nivedha rashi')
,(1228,7,4123456789 ,'gauthami reddy')
,(1229,9,4412345678,'nandhini goud') 
,(1230,7,1234567890,'Jayaprakash narayana')
,(1231,8,1123456789,'sri ram')
,(1232,9,1112345678,'manjunath vishnu')
,(1233,7,1111234567,'krishna rao')
,(1234,6,1111234567,'vamsi krishna')
,(1235,5,1111123456,'raj kumar')
,(1236,7,1111112345,'laksmi devi')
,(1237,9,1111111234,'pinky reddy')
,(1238,22,1111111123,'rahul rao')
,(1239,10,1111111112,'aishwarya rai')
,(1240,11,5555123456,'virushka kohli')
,(1241,27,5555512345,'riya bompelli')
,(1242,14,5555551234,'divya rao')
,(1243,15,5555555123,'riyanshi pravya')
,(1244,9,5555555512,'dileep kumar')
,(1245,6,5555555551,'chandhra shekar')
,(1246,7,6123456789,'kavitha kalvakuntla')
,(1247,12,6612345678,'ravi velchala')
,(1248,10,6661234567,'shivaji pottula')
,(1249,11,6666123456,'haribabu devarakonda')
 ,(1250,16,6666612345,'haribabu devarakonda')
,(1251,12,6666661234,'haribabu devarakonda')
 ,(1252,15,6666666123,'chandhra shekar')
,(1253,13,6666666612,'chandhra shekar')
-- ,(1254,14,6666666661,')
-- ,(1255,17,7123456789,')
-- ,(1256,20,7712345678,')
-- ,(1257,22,7771234567,')
-- ,(1258,19,7777123456,')
-- ,(1259,8,7777712345,')
-- ,(1260,18,7777771234,')
;  

CREATE TABLE IF NOT EXISTS Ride_Table (
  Ride_ID INT NOT NULL primary key,
  CustomerID INT NOT NULL,
  DriverID INT NOT NULL,
  Start_Time DATETIME NOT NULL,
  End_Time DATETIME NOT NULL,
  Ride_Tip INT NOT NULL,
  Customer_Rating INT NULL,
  From_Place VARCHAR(45) NOT NULL,
  To_Place VARCHAR(45) NOT NULL,
 Payment_ID int NOT NULL,
  CONSTRAINT fk_Ride_Table_Customer_Table1
    FOREIGN KEY (CustomerID)
    REFERENCES Customer_Table (CustomerID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Ride_Table_Driver_Table1
    FOREIGN KEY (DriverID)
    REFERENCES Driver_Table(DriverID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Ride_Table_Payment_Details1
    FOREIGN KEY (Payment_ID)
    REFERENCES Payment_Details (Payment_ID)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);

INSERT INTO Ride_Table VALUES
(31,31,11,'2021-9-20 9:35:00','2021-9-20 9:55:00',2,5,'memphis','mississipi',1200 )
,(32,32,12,'2021-12-23 8:35:00','2021-12-23 8:55:00',2,5,'memphis','mississipi',1201 )
,(33,33,13,'2021-7-9 9:35:00','2021-7-9 9:55:00',2,5,'memphis','mississipi',1202 )
,(34,34,14,'2021-5-25 8:35:00','2021-5-25 8:55:00',2,5,'memphis','mississipi',1203)
,(35,35,15,'2022-4-5 6:35:00','2022-4-5 6:55:00',2,5,'memphis','mississipi',1204)
,(36,36,16,'2022-3-29 7:35:00','2022-3-29 7:55:00',2,5,'memphis','mississipi',1205)
,(37,37,17,'2022-1-17 9:35:00','2022-1-17 9:55:00',2,5,'memphis','mississipi',1206)
,(38,38,18,'2022-1-17 10:35:00','2022-1-17 10:55:00',2,5,'memphis','mississipi',1207)
,(39,39,19,'2022-1-17 9:35:00','2022-1-17 9:55:00',2,5,'memphis','mississipi',1208)
,(40,40,20,'2022-1-17 12:35:00','2022-1-17 12:55:00',2,5,'memphis','mississipi',1209)
,(41,41,1,'2022-1-17 10:35:00','2022-1-17 10:55:00',2,5,'memphis','mississipi',1210)
,(12,12,12,'2021-3-15 11:35:00','2021-3-15 11:55:00',2,5,'memphis','mississipi',1211 )
,(13,13,13,'2021-4-25 12:35:00','2021-4-25 12:55:00',2,5,'memphis','mississipi',1212 )
,(14,14,14, '2021-10-25 10:35:00','2021-10-25 10:55:00',2,5,'memphis','mississipi',1213 )
,(15,15,15,'2021-11-25 9:35:00','2021-11-25 9:55:00',2,5,'memphis','mississipi',1214 )
,(16,16,16,'2021-1-25 11:35:00','2021-1-25 11:55:00',2,5,'memphis','mississipi',1215)
,(17,17,17,'2021-2-5 12:35:00','2021-2-5 12:55:00',2,5,'memphis','mississipi',1216)
,(18,18,18,'2021-11-5 7:35:00','2021-11-5 7:55:00',2,5,'memphis','mississipi',1217)
,(19,19,19,'2021-5-25 9:25:00','2021-5-25 9:45:00',2,5,'memphis','mississipi',1218)
,(20,20,20,'2021-9-3 9:10:00','2021-9-3 9:20:00',2,5,'memphis','mississipi',1219)
,(21,21,1,'2021-10-2 8:50:00','2021-10-2 9:5:00',2,5,'memphis','mississipi',1220)
,(22,22,2, '2021-12-25 9:35:00','2021-12-25 9:55:00',2,5,'memphis','mississipi',1221)
,(23,23,3, '2021-2-2 9:35:00','2021-2-2 9:55:00',2,5,'memphis','mississipi',1222)
,(24,24,4, '2022-7-5 9:35:00','2022-7-5 9:55:00',2,5,'memphis','mississipi',1223)
,(11,11,11,'2021-6-7 10:35:00','2021-6-7 10:55:00',2,5,'memphis','mississipi',1224)
,(26,26,6, '2021-10-25 9:35:00','2021-10-25 9:55:00',2,5,'memphis','mississipi',1225)
,(27,27,7,'2022-12-5 9:35:00','2022-12-5 9:45:00',2,5,'memphis','mississipi',1226)
,(28,28,8, '2021-10-5 9:35:00','2021-10-5 9:55:00',2,5,'memphis','mississipi',1227)
,(29,29,9, '2021-9-25 9:35:00','2021-9-25 9:55:00',2,5,'memphis','mississipi',1228)
,(30,30,10,'2021-10-25 9:35:00','2021-10-25 9:55:00',2,5,'memphis','mississipi',1229)
,(1,1,1,'2020-12-25 10:35:00','2020-12-25 10:55:00',2,5,'memphis','mississipi',1230)
,(2,2,2,'2020-12-28 09:35:00','2020-12-28 09:55:00',2,5,'memphis','mississipi',1231)
,(3,3,3,'2023-12-27 08:35:00','2023-12-27 08:55:00',2,5,'memphis','mississipi',1232)
,(4,4,4,'2021-1-1 10:35:00','2021-1-1 10:55:00',2,5,'memphis','mississipi',1233)
,(53,4,4,'2021-1-1 10:55:00','2021-1-1 11:20:00',2,5,'memphis','mississipi',1234)
,(6,6,6,'2021-1-3 7:35:00','2021-1-3 7:55:00',2,5,'memphis','mississipi',1235)
,(7,7,7,'2021-2-4 10:35:00','2021-2-4 10:55:00',2,5,'memphis','mississipi',1236)
,(8,8,8,'2021-1-4 5:35:00','2021-1-4 5:55:00',2,5,'memphis','mississipi',1237)
,(9,9,9,'2021-4-4 9:35:00','2021-4-4 9:55:00',2,5,'memphis','mississipi',1238)
,(10,10,10,'2021-5-5 8:35:00','2021-5-5 8:55:00',2,5,'memphis','mississipi',1239)
,(42,42,2,'2022-1-17 9:15:00','2022-1-17 9:25:00',2,5,'memphis','mississipi',1240)
,(43,43,3,'2023-1-17 10:25:00','2023-1-17 10:35:00',2,5,'memphis','mississipi',1241)
,(44,44,4,'2023-1-17 8:15:00','2023-1-17 9:25:00',2,5,'memphis','mississipi',1242)
,(52,44,4,'2023-1-17 8:15:00','2023-1-17 9:25:00',2,5,'memphis','mississipi',1243)
,(46,46,6,'2023-1-17 10:05:00','2023-1-17 10:55:00',2,5,'memphis','mississipi',1244)
,(47,47,7,'2023-1-17 11:35:00','2023-1-17 11:55:00',2,5,'memphis','mississipi',1245)
,(48,48,8,'2023-1-17 9:35:00','2023-1-17 9:55:00',2,5,'memphis','mississipi',1246)
,(49,49,9,'2023-1-17 10:35:00','2023-1-17 10:55:00',2,5,'memphis','mississipi',1247)
,(50,50,10,'2023-1-17 12:35:00','2023-1-17 12:55:00',2,5,'memphis','mississipi',1248)
,(51,3,3,'2023-1-7 06:03:00','2023-12-27 08:55:00',2,5,'memphis','mississipi',1249)
,(54,3,3,'2023-2-17 04:15:00','2023-12-27 08:55:00',2,5,'memphis','mississipi',1250)
,(55,3,3,'2023-3-15 06:40:00','2023-12-27 08:55:00',2,5,'memphis','mississipi',1251)
,(56,3,3,'2023-4-12 02:35:00','2023-12-27 08:55:00',2,5,'memphis','mississipi',1252)
,(57,3,3,'2023-5-27 03:39:00','2023-12-27 08:55:00',2,5,'memphis','mississipi',1253)


USE all_joining
CREATE TABLE class(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR (50),
	mobile VARCHAR(11)
	);
	INSERT INTO class(NAME,mobile) VALUES 
	('sagar','01234'),('sagar1','01355'),('sagar2','01455'),('sagar3','01855'),
	('sagar1','01395');
	SELECT * FROM class
CREATE TABLE class1(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
	student_id INT NOT NULL,
	address VARCHAR(60),
	batch VARCHARACTER(66),
	FOREIGN KEY (student_id) REFERENCES class (id)
	);
INSERT INTO class1 (student_id,address,batch)
	VALUES(1,'gazipur','56 A'),
	(2,'uttara','56 c'),
	(5,'dhaka','56 B');
SELECT * FROM class1	;
SELECT * FROM class;

//total joining//
SELECT t1.id,t1.NAME,t1.mobile,t2.address,t2.batch FROM  
class AS t1,class1 AS t2  
WHERE t1.id=t2.student_id;	

//INNER JOIN//
SELECT t1.*,t2.* FROM class AS t1 INNER JOIN class1 AS t2 ON t1.id=t2.student_id;

//LEFT JOIN//
SELECT t1.*,t2.* FROM class AS t1 LEFT JOIN class1 AS t2 ON t1.id=t2.student_id;

//RIGHT JOIN//
SELECT t1.*,t2.* FROM class AS t1 RIGHT JOIN class1 AS t2 ON t1.id=t2.student_id;

//NATURAL JOIN//
SELECT * FROM class NATURAL JOIN class1;

		
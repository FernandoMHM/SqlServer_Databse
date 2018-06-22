/******************************************************************************/
/*                                                                            */
/*  Fernando M. Hernández Millet    #Est. Y00-41-8050	                      */
/*                                                                            */
/*  Cristian E. Millet Guzmán       #Est. Y00-44-4501                         */
/*                                                                            */
/*  Dariel Y. Vidal Cotto			#Est. Y00-48-5088		                  */
/*                                                                            */
/*  Gym_Membership - Insert Data											  */
/*                                                                            */                        
/******************************************************************************/



Use Gym_Membership
Go

--1/Customer Data
--The height is in cm.
INSERT INTO MEMBERS VALUES('Santana', 'Javier', '12-SEP-1995', 'M', '152.4'); --1

INSERT INTO MEMBERS VALUES('Guzman', 'Harrison','15-AUG-1980', 'M', '182.88'); --2

INSERT INTO MEMBERS VALUES('Gubbel', 'Felix','30-DEC-1992', 'M', '170.92') ; --3

INSERT INTO MEMBERS VALUES('Viera', 'Pedro','08-OCT-1975', 'M', '143.04'); --4

INSERT INTO MEMBERS VALUES('Gascot', 'Daniel','07-JAN-1990', 'M', '213.36'); --5

INSERT INTO MEMBERS VALUES('Ferrer', 'Paola', '05-MAY-1988', 'F', '156.40'); --6

INSERT INTO MEMBERS VALUES('Jimenez', 'Carla','10-JUN-1997', 'F', '153.56') ; --7

INSERT INTO MEMBERS VALUES('Caraballo', 'Gabriela','12-JUL-1991', 'F', '140.70'); --8

INSERT INTO MEMBERS VALUES('Vidal', 'Daniela','07-MAY-1975', 'F', '200.23') ; --9

INSERT INTO MEMBERS VALUES('Velez', 'Stephanie', '07-FEB-1970', 'F', '160.50'); --10



--2/Student Data
INSERT INTO STUDENT VALUES(1, 'Computer Science', 15); --1

INSERT INTO STUDENT VALUES(3, 'Mechanical Engineering', 14); --2

INSERT INTO STUDENT VALUES(5, 'Biology', 12); --3

INSERT INTO STUDENT VALUES(7, 'Business Administration', 17); --4



--3/Employee Data
INSERT INTO EMPLOYEE VALUES(2, 'Faculty'); --1

INSERT INTO EMPLOYEE VALUES(4, 'Administration'); --2

INSERT INTO EMPLOYEE VALUES(9, 'Faculty'); --3

INSERT INTO EMPLOYEE VALUES(10, 'Administration'); --4



--4/Faculty Data
INSERT INTO FACULTY VALUES(3, 'Professor', 21); --1

INSERT INTO FACULTY VALUES(1, 'Instructor', 15); --2



--5/Administration Data
INSERT INTO ADMINISTRATION VALUES(2, 'Admissions Officer'); --1

INSERT INTO ADMINISTRATION VALUES(4, 'Orientation Officer'); --2



--6/Visitor Data
INSERT INTO VISITOR VALUES(6, 'Burger King Manager'); --1

INSERT INTO VISITOR VALUES(8, 'Actor'); --2



--7/Visitor Payment Data
INSERT INTO VISITORS_PAYMENT VALUES(2, 'Yes', 19.99, '16-JUN-2018'); --1

INSERT INTO VISITORS_PAYMENT VALUES(1, 'No', 0.00, '02-JUL-2018'); --2



--8/Progress Record Data
--The weight it's in lb.
INSERT INTO PROGRESS_RECORD VALUES(1, '01-MAY-2018', '1:00 PM','01-MAY-2018', '3:00 PM', '30-AUG-2017', 160, 'Lost Weight'); --1

INSERT INTO PROGRESS_RECORD VALUES(2, '01-MAY-2018', '11:00 AM','01-MAY-2018', '12:00 PM', '26-JAN-2018', 192, 'Lost Weight'); --2

INSERT INTO PROGRESS_RECORD VALUES(3, '02-MAY-2018', '5:00 PM','02-MAY-2018', '8:00 PM', '14-FEB-2017', 178, 'Lost Weight'); --3

INSERT INTO PROGRESS_RECORD VALUES(4, '04-MAY-2018', '5:00 AM','04-MAY-2018', '7:00 AM', '02-MAY-2018', 98, 'No Change'); --4

INSERT INTO PROGRESS_RECORD VALUES(5, '05-MAY-2018', '11:30 AM','05-MAY-2018', '3:00 PM', '17-SEP-2015', 253, 'Gain Weight'); --5

INSERT INTO PROGRESS_RECORD VALUES(6, '06-MAY-2018', '6:00 AM','06-MAY-2018', '8:30 AM', '22-OCT-2013', 162, 'Gain Weight'); --6

INSERT INTO PROGRESS_RECORD VALUES(7, '08-MAY-2018', '1:00 PM','08-MAY-2018', '3:00 PM', '01-MAR-2018', 127, 'Lost Weight'); --7

INSERT INTO PROGRESS_RECORD VALUES(8, '08-MAY-2018', '6:00 PM','08-MAY-2018', '8:30 PM', '19-NOV-2017', 110, 'Lost Weight'); --8

INSERT INTO PROGRESS_RECORD VALUES(9, '10-MAY-2018', '1:00 PM','10-MAY-2018', '3:00 PM', '15-APR-2018', 200, 'No Change'); --9

INSERT INTO PROGRESS_RECORD VALUES(10, '10-MAY-2018', '1:00 PM','10-MAY-2018', '3:00 PM', '09-APR-2017', 157, 'Lost Weight'); --10
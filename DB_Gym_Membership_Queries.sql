/******************************************************************************/
/*                                                                            */
/*  Fernando M. Hernández Millet    #Est. Y00-41-8050	                      */
/*                                                                            */
/*  Cristian E. Millet Guzmán       #Est. Y00-44-4501                         */
/*                                                                            */
/*  Dariel Y. Vidal Cotto			#Est. Y00-48-5088		                  */
/*                                                                            */
/*  Gym_Membership - Queries												  */
/*                                                                            */                        
/******************************************************************************/



Use Gym_Membership
Go


--Select Instructions
SELECT EMPLOYEE.EmployeeID, FACULTY.AcademicRange, FACULTY.CoursesByCredits
FROM EMPLOYEE
INNER JOIN FACULTY
ON EMPLOYEE.EmployeeID = FACULTY.EmployeeID; 

SELECT VISITOR.VisitorID, VISITOR.Profession, VISITORS_PAYMENT.PaymentDue, 
	   VISITORS_PAYMENT.PaymentBalance, VISITORS_PAYMENT.PaymentDate
FROM VISITOR
INNER JOIN VISITORS_PAYMENT
ON VISITOR.VisitorID = VISITORS_PAYMENT.VisitorID;

SELECT MEMBERS.MemberID, MEMBERS.FirstName,MEMBERS.LastName, PROGRESS_RECORD.MemberWeight
FROM   MEMBERS
INNER JOIN PROGRESS_RECORD
ON MEMBERS.MemberID = PROGRESS_RECORD.MemberID
WHERE Gender='F' AND LastName LIKE 'V%';

SELECT STUDENT.StudentID, MEMBERS.FirstName, MEMBERS.LastName, STUDENT.EnrolledMayor, STUDENT.EnrolledCredits
FROM MEMBERS
INNER JOIN STUDENT
ON MEMBERS.MemberID = STUDENT.MemberID
WHERE EnrolledMayor = 'Computer Science' OR EnrolledCredits = '17';



--Update Instructions
UPDATE PROGRESS_RECORD
SET EntryDate = '10-MAY-2018', EntryTime = '4:00 PM', DepartureDate = '10-MAY-2018', DepartureTime = '7:00 PM'
WHERE MemberID = 1 OR EntryDate = '01-MAY-2018';

UPDATE STUDENT
SET EnrolledMayor = 'Chemistry', EnrolledCredits = '18'
WHERE StudentID = 1 AND EnrolledMayor = 'Computer Science' OR EnrolledCredits = 12;

UPDATE VISITORS_PAYMENT
 SET PaymentDue = 'Yes', PaymentBalance = 0.00, PaymentDate = '16-JUL-2018'
 WHERE VisitorID = 2 AND PaymentID = 1;

 UPDATE FACULTY
  SET AcademicRange = 'Professor', CoursesByCredits = 24
  WHERE FacultyID = 2 AND EmployeeID = 1;



--Delete Instructions
DELETE
 FROM PROGRESS_RECORD
 WHERE MemberID = 5;

DELETE
 FROM MEMBERS
 WHERE LastName= 'Gascot';



--Create Table View
CREATE VIEW Progress_Sheet AS
SELECT *
 FROM PROGRESS_RECORD;

CREATE VIEW Members_List AS
SELECT *
 FROM MEMBERS;


--Calculate Average 
SELECT AVG(MemberWeight) AS AverageWeight
 FROM PROGRESS_RECORD; 


--Calculate Number of Participants
SELECT COUNT(MemberID) AS QtyOfMembers
 FROM MEMBERS; 
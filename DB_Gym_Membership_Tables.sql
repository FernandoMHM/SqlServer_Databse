/******************************************************************************/
/*                                                                            */
/*  Fernando M. Hernández Millet    #Est. Y00-41-8050	                      */
/*                                                                            */
/*  Cristian E. Millet Guzmán       #Est. Y00-44-4501                         */
/*                                                                            */
/*  Dariel Y. Vidal Cotto			#Est. Y00-48-5088		                  */
/*                                                                            */
/*  Gym_Membership - Create Tables											  */
/*                                                                            */                        
/******************************************************************************/



Use Gym_Membership
Go

--1/Members Table
CREATE TABLE MEMBERS(
	  MemberID	     		Int								NOT NULL IDENTITY (1, 1),
	  LastName				nvarchar(25)					NOT NULL,
	  FirstName				nvarchar(25)					NOT NULL,
	  DOB					Date							NOT NULL,
	  Gender				nvarchar(1)						NOT NULL,
	  Height				nvarchar(10)					NOT NULL,
	  CONSTRAINT			MEMBERS_PK						PRIMARY KEY(MemberID),

      );


--2/Student Table
CREATE TABLE STUDENT(
	  StudentID				Int								NOT NULL IDENTITY (1, 1),
	  MemberID				Int								NOT NULL,
	  EnrolledMayor			nvarchar(30)					NOT NULL,
	  EnrolledCredits		Int								NOT NULL,
	  CONSTRAINT			STUDENT_PK						PRIMARY KEY(StudentID),
	  CONSTRAINT			M_S__FK							FOREIGN KEY(MemberID)
								   REFERENCES MEMBERS(MemberID)
									   ON UPDATE NO ACTION
									   ON DELETE CASCADE,
	  ); 


--3/Employee Table
CREATE TABLE EMPLOYEE(
	  EmployeeID			Int						NOT NULL IDENTITY(1, 1),
	  MemberID				Int						NOT NULL,
	  EmployeeType          nvarchar(25)			NOT NULL,
	  			
	  CONSTRAINT			EMPLOYEE_PK				PRIMARY KEY(EmployeeID),
	  CONSTRAINT			M_E_FK					FOREIGN KEY(MemberID)
								   REFERENCES MEMBERS (MemberID)
									   ON UPDATE NO ACTION
									   ON DELETE CASCADE,
	  );


--4/Faculty Table
CREATE TABLE FACULTY(
	  FacultyID				Int								NOT NULL IDENTITY (1, 1),
	  EmployeeID			Int								NOT NULL,
	  AcademicRange			nvarchar(20)					NOT NULL,
	  CoursesByCredits		Int       						NOT NULL,
	  CONSTRAINT			FACULTY_PK						PRIMARY KEY(FacultyID),
	  CONSTRAINT			E_F_FK							FOREIGN KEY(EmployeeID)
								   REFERENCES EMPLOYEE (EmployeeID)
									   ON UPDATE NO ACTION
									   ON DELETE CASCADE,

      );


--5/Administration Table
CREATE TABLE ADMINISTRATION(
	  AdmiID				Int								NOT NULL IDENTITY (1, 1),
	  EmployeeID			Int								NOT NULL,
	  AdmPosition			nvarchar(30)					NOT NULL,
	  CONSTRAINT			ADMINISTRATION_PK				PRIMARY KEY (AdmiID),
	  CONSTRAINT			E_A_FK							FOREIGN KEY(EmployeeID)
								   REFERENCES EMPLOYEE (EmployeeID)
									   ON UPDATE NO ACTION
									   ON DELETE CASCADE,

      );


--6/Visitor Table
CREATE TABLE VISITOR(
	  VisitorID				Int						NOT NULL IDENTITY (1, 1),
	  MemberID				Int						NOT NULL,
	  Profession			nvarchar(30)			NOT NULL,
	  CONSTRAINT			VISITOR_PK				PRIMARY KEY(VisitorID),
	  CONSTRAINT			M_V_FK					FOREIGN KEY(MemberID)
								   REFERENCES MEMBERS (MemberID)
									   ON UPDATE NO ACTION
									   ON DELETE CASCADE,
      );


--7/Visitor Payment Table
CREATE TABLE VISITORS_PAYMENT(
	  PaymentID				Int						NOT NULL IDENTITY (1, 1),
	  VisitorID				Int						NOT NULL,
	  PaymentDue			nvarchar(3)				NOT NULL,
	  PaymentBalance		smallmoney				NOT NULL,
	  PaymentDate			Date					NOT NULL,
	  CONSTRAINT			V_P_PK					PRIMARY KEY(PaymentID),
	  CONSTRAINT			V_P_VISITOR_FK			FOREIGN KEY(VisitorID)
								   REFERENCES VISITOR(VisitorID)
	                                   ON UPDATE NO ACTION
	                                   ON DELETE NO ACTION,
	  CONSTRAINT			V_P_PaymentDue			CHECK (PaymentDue IN
									      ('Yes', 'No'))

      );


--8/Physical Profile
CREATE TABLE PROGRESS_RECORD(
	  ProgressRecordID		Int						NOT NULL IDENTITY (1, 1),
	  MemberID				Int						NOT NULL,
	  EntryDate				Date					NOT NULL,
	  EntryTime				time					NOT NULL,
	  DepartureDate			Date					NOT NULL,
	  DepartureTime			time					NOT NULL,
	  RegistrationDate      Date					NOT NULL,
	  MemberWeight			Int						NOT NULL,
	  Comment				nvarchar(200)			NOT NULL,
	  CONSTRAINT			P_R_PK					PRIMARY KEY(ProgressRecordID),
	  CONSTRAINT			P_R_MEMBERS_FK			FOREIGN KEY(MemberID)
								   REFERENCES MEMBERS(MemberID)
									   ON UPDATE NO ACTION
									   ON DELETE NO ACTION
	  );
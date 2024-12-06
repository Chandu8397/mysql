CREATE DATABASE NecStudentData;

USE NecStudentData;

/* Creating course table & Inserting data*/

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    fees float NOT NULL
);

INSERT INTO Courses VALUES(301, 'Computer Science', 50000.00);
INSERT INTO Courses VALUES(302, 'Information technology', 40000);
INSERT INTO Courses VALUES(303, 'Mechanical Engineering', 15000);
INSERT INTO Courses VALUES(304, 'Electrical Engineering', 25000);
INSERT INTO Courses VALUES(305, 'Civil Engineering', 20000);

SELECT * FROM Courses;


/*Creating Student Table*/
CREATE TABLE Students (
    RollNo INT PRIMARY KEY,
    FName VARCHAR(50) NOT NULL,
    LName VARCHAR(50) NOT NULL,
    Phone VARCHAR(15) UNIQUE NOT NULL,
    CourseID INT,
    Email VARCHAR(100) UNIQUE NOT NULL,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


/*Inserting Values*/
INSERT INTO Students VALUES (1, 'Chandu', 'Reddy', '9963468326', 301, 'chandureddy123@example.com');
INSERT INTO Students VALUES (2, 'Sai', 'Reddy', '987654321', 303, 'saireddy321@example.com');
INSERT INTO Students VALUES (3, 'Ajay', 'Reddy', '7893355095', 304, 'ajayreddy999@example.com');
INSERT INTO Students VALUES (4, 'Honey', 'Prasanna', '9640987678', 302, 'Honeyprasanna123@example.com');
INSERT INTO Students VALUES (5, 'Trishul', 'Reddy', '9948123456', 305, 'trishulreddy123@example.com');
INSERT INTO Students VALUES (6, 'Siva', 'shankar', '9703969523', 303, 'sivashankar456@example.com');
INSERT INTO Students VALUES (7, 'nandhi', 'eshwar', '9912324252', 304, 'nandhieswar789@example.com');
INSERT INTO Students VALUES (8, 'nithin', 'Reddy', '8185969206', 302, 'nithinreddy678@example.com');
INSERT INTO Students VALUES (9, 'Sathyam', 'Singh', '888999777', 301, 'satyamsingh888@example.com');
INSERT INTO Students VALUES (12, 'Abhi', 'Ram', '7654321987', 305, 'abhiram134@example.com');
INSERT INTO Students VALUES (11, 'Rohit', 'Varma', '9877892345', 305, 'rohit543@example.com');
INSERT INTO Students VALUES (10, 'siddharth', 'Reddy', '2314536750', 301,'siddarthreddy451@example.com');
INSERT INTO Students VALUES (13, 'Maresh', 'Rao', '4512334567', 304,'maresh234@example.com');
INSERT INTO Students VALUES (14, 'Rajesh', 'samala', '126789456', 302,'rajeshsamala@example.com');
INSERT INTO Students VALUES (15, 'yashwanth', 'Reddy', '0864225783', 303,'yashwanth745@example.com');
INSERT INTO Students VALUES (16, 'Harsha', 'deep', '2244668800', 302,'harshadeep000@example.com');

SELECT * FROM Students;

/*Creating a Faculty table*/
CREATE TABLE Faculty(
    Faculty_id INT PRIMARY KEY,
    Fname VARCHAR(100) NOT NULL,
    Designation VARCHAR(100),
    Qualification VARCHAR(100),
    phone_no VARCHAR(15) UNIQUE,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
    );

/*Inserting Faculty details*/ 
INSERT INTO Faculty VALUES(50, 'Dr.Rashekhar', 'Professor', 'PhD in Computer Science', '9440688957', 302);
INSERT INTO Faculty VALUES(51, 'Dr.Dilipkumar', 'Asst.Professor', 'PhD in Cybersecurity', '9912627200', 301);
INSERT INTO Faculty VALUES(52, 'Dr.Rameshbabu', 'Associate Professor', 'PhD in InformationScience', '8185678567', 304);
INSERT INTO Faculty VALUES(53, 'Dr.Thrishul', 'Professor', 'PhD in DataScience', '7896785431', 305);
INSERT INTO Faculty VALUES(54, 'Dr.MohanNair', 'Asst.Professor', 'PhD in Artificial Intelligence', '8008708142', 303);

SELECT * FROM Faculty;


/*Creating a Books Table*/
CREATE TABLE Books(
    Book_ID INT PRIMARY KEY,
    BOokName VARCHAR(100) UNIQUE,
    Author VARCHAR(100),
    Publisher VARCHAR(100),
    Price FLOAT,
    Qty INT
 );  
 
/*Inserting Book Details*/

INSERT INTO Books VALUES (1, 'Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press', 59.99, 10);

INSERT INTO Books VALUES (2, 'Digital Design', 'M. Morris Mano', 'Prentice Hall', 79.99, 5);

INSERT INTO Books VALUES (3, 'Signals and Systems', 'Alan V. Oppenheim', 'Prentice Hall', 89.99, 8);

INSERT INTO Books VALUES (4, 'Computer Networks', 'Andrew S. Tanenbaum', 'Pearson', 69.99, 12);

INSERT INTO Books VALUES (5, 'Operating System Concepts', 'Abraham Silberschatz', 'Wiley', 64.99, 7);

INSERT INTO Books VALUES (6, 'Database System Concepts', 'Silberschatz, Korth, Sudarshan', 'McGraw-Hill', 74.99, 9);

INSERT INTO Books VALUES (7, 'Microelectronics', 'Jacob Millman', 'McGraw-Hill', 89.99, 6);

INSERT INTO Books VALUES (8, 'Control Systems Engineering', 'Norman S. Nise', 'Wiley', 79.99, 5);

INSERT INTO Books VALUES (9, 'Fluid Mechanics', 'Frank M. White', 'McGraw-Hill', 89.99, 10);

INSERT INTO Books VALUES (10, 'Structural Analysis', 'Russell C. Hibbeler', 'Pearson', 79.99, 8);

INSERT INTO Books VALUES (11, 'Engineering Mechanics: Dynamics', 'J.L. Meriam', 'Wiley', 69.99, 7);

INSERT INTO Books VALUES (12, 'Thermodynamics: An Engineering Approach', 'Yunus Çengel', 'McGraw-Hill', 74.99, 10);

INSERT INTO Books VALUES (13, 'Software Engineering', 'Ian Sommerville', 'Addison-Wesley', 64.99, 9);

INSERT INTO Books VALUES (14, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 'Prentice Hall', 99.99, 5);

INSERT INTO Books VALUES (15, 'Computer Architecture', 'David A. Patterson', 'Morgan Kaufmann', 89.99, 8);

INSERT INTO Books VALUES (16, 'Engineering Mechanics: Statics', 'J.L. Meriam', 'Wiley', 69.99, 6);

INSERT INTO Books VALUES (17, 'Circuit Analysis', 'William H. Hayt', 'McGraw-Hill', 79.99, 7);

INSERT INTO Books VALUES (18, 'Data Structures and Algorithm Analysis', 'Mark Allen Weiss', 'Addison-Wesley', 64.99, 5);

INSERT INTO Books VALUES (19, 'Web Development with Node and Express', 'Evan Hahn', 'O\'Reilly Media', 39.99, 10);

INSERT INTO Books VALUES (20, 'Engineering Mechanics: Statics and Dynamics', 'R.C. Hibbeler', 'Pearson', 79.99, 9);

SELECT * FROM books;

/*Creating Library Table*/
CREATE TABLE Library (
    LibraryId INT PRIMARY KEY,
    Book_ID INT,
    IssueDate DATE,
    RETURNDate DATE,
    RollNo INT,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
    FOREIGN KEY (RollNo) REFERENCES Students(RollNO)
    );
    
INSERT INTO Library  VALUES (1, 3, '2024-01-15', '2024-02-15', 1);

INSERT INTO Library  VALUES (2, 1, '2024-03-01', '2024-04-01', 3);

INSERT INTO Library  VALUES (3, 7, NOW(), '2024-05-20', 5);

INSERT INTO Library  VALUES (4, 5, '2024-02-10', '2024-03-10', 7);

INSERT INTO Library  VALUES (5, 9, '2024-04-15', NOW(), 9);

INSERT INTO Library  VALUES (6, 6, '2024-03-20', '2024-06-20', 11);

INSERT INTO Library  VALUES (7, 10, '2024-05-01', '2024-05-30', 13);

INSERT INTO Library  VALUES (8, 8, '2024-06-01', '2024-07-01', 15);

INSERT INTO Library  VALUES (9, 4, '2024-02-20', '2024-03-20', 16);

INSERT INTO Library  VALUES (10, 2, NOW(), '2024-04-30', 8);

SELECT * FROM Library;

/*Using Joins*/
SELECT Fname,Email,Book_ID,IssueDate,ReturnDate FROM Students INNER JOIN Library ON Students.RollNo=library.RollNo;
SELECT Fname,Email,Book_ID,IssueDate,ReturnDate FROM Students LEFT JOIN Library ON Students.RollNo=library.RollNo;
SELECT Fname,Email,Book_ID,IssueDate,ReturnDate FROM Students Right JOIN Library ON Students.RollNo=library.RollNo;

/*Using GroupBy*/

SELECT courses.CousreName, COUNT(Students.RollNo) AS studentsCOUNT
FROM courses
JOIN students ON courses.CourseID = students.CourseID
GROUP BY courses.CousreName;


/*Joining Tables*/

SELECT RollNo,Fname,BOokName,IssueDate FROM students INNER JOIN Library ON students.RollNo=library.LibraryId;





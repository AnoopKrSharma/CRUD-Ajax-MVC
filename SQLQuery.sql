CREATE DATABASE MVCDB;

Go

USE MVCDB;

GO

CREATE TABLE dbo.Employee (
	EmployeeID INT identity NOT NULL
	,Name NVARCHAR(50)
	,Age INT
	,STATE NVARCHAR(50)
	,Country NVARCHAR(50)
	,CONSTRAINT PK_Employee PRIMARY KEY (EmployeeID)
	) 
	
GO

--Select Employees
CREATE PROCEDURE SelectEmployee
AS
BEGIN
	SELECT *
	FROM Employee;
END 

GO

--Insert and Update Employee
CREATE PROCEDURE InsertUpdateEmployee (
	@Id INTEGER
	,@Name NVARCHAR(50)
	,@Age INTEGER
	,@State NVARCHAR(50)
	,@Country NVARCHAR(50)
	,@Action VARCHAR(10)
	)
AS
BEGIN
	IF @Action = 'Insert'
	BEGIN
		INSERT INTO Employee (
			Name
			,Age
			,[State]
			,Country
			)
		VALUES (
			@Name
			,@Age
			,@State
			,@Country
			);
	END

	IF @Action = 'Update'
	BEGIN
		UPDATE Employee
		SET Name = @Name
			,Age = @Age
			,[State] = @State
			,Country = @Country
		WHERE EmployeeID = @Id;
	END
END 

GO

--Delete Employee
CREATE PROCEDURE DeleteEmployee (@Id INTEGER)
AS
BEGIN
	DELETE Employee
	WHERE EmployeeID = @Id;
END
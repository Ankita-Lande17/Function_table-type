CREATE TYPE TableEmployees1 AS TABLE
(
    FirstName varchar(MAX),
    LastName varchar(MAX),
	City varchar(50),
	[State] varchar(50),
	DateOfBirth date
)

CREATE PROCEDURE UspInsertNewEmployee(@EmployeeDetails [TableEmployees1])
AS
BEGIN
	
	SET NOCOUNT ON;
	
	--INSERT INTO Employee (FirstName, LastName, City, [State], DOB)
	--SELECT * FROM @EmployeeDetails
	DECLARE @Employeedetail AS [TableEmployees1];
    INSERT INTO @Employeedetail
    SELECT 'Kumar','sanu','pune','Maharashtra','1992-04-23'UNION ALL
    SELECT 'Sarika','Auti','Mumbai','punjab','2000-04-23'
    EXEC UspInsertNewEmployee @Employeedetail;
    SELECT * FROM Employee
	
  END
 GO

 EXEC UspInsertNewEmployee


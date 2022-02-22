
CREATE FUNCTION EmployeeRecord()
RETURNS TABLE
AS
RETURN(SELECT
	VALUE Position
FROM
	EmployeeDetail
	CROSS APPLY STRING_SPLIT(Position, ' '));



SELECT * FROM EmployeeRecord()



CREATE PROCEDURE UspEmployeeInformation

AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM EmployeeRecord()
END
GO


EXEC UspEmployeeInformation

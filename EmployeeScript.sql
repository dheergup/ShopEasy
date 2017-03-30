CREATE TABLE Employee_115022
(
	EmpID	INT		PRIMARY KEY,
	EmpName VARCHAR(30),
	Phone	CHAR(10),
	Email	VARCHAR(20),
	Location VARCHAR(20)
)

GO
CREATE PROC usp_InsertEmployee_115022
(
	@EmpID		INT,
	@EmpName	VARCHAR(30),
	@Phone		CHAR(10),
	@Email		VARCHAR(20),
	@Location	VARCHAR(20)
)
AS
BEGIN
	INSERT INTO Employee_115022(EmpID, EmpName, Phone, Email, Location)
	VALUES (@EmpID, @EmpName, @Phone, @Email, @Location)
END
GO

CREATE PROC usp_UpdateEmployee_115022
(
	@EmpID		INT,
	@EmpName	VARCHAR(30),
	@Phone		CHAR(10),
	@Email		VARCHAR(20),
	@Location	VARCHAR(20)
)
AS
BEGIN
	UPDATE Employee_115022
	SET EmpName = @EmpName,
		Phone = @Phone,
		Email = @Email,
		Location = @Location
	WHERE EmpID = @EmpID
END

GO
CREATE PROC usp_DeleteEmployee
(
	@EmpID	INT
)
AS
BEGIN
	DELETE FROM Employee_115022 WHERE EmpID = @EmpID
END

GO
CREATE PROC usp_DisplayEmployee
AS
BEGIN
	SELECT * FROM Employee_115022
END
GO

CREATE PROC usp_SearchEmployee
(
	@EmpID	INT
)
AS
BEGIN
	SELECT * FROM Employee_115022 WHERE EmpID = @EmpID
END
GO

CREATE TABLE LoginUser_115022
(
	UserName	VARCHAR(10),
	Password	VARCHAR(10)
)
INSERT INTO LoginUser_115022 (UserName, Password)
VALUES ('admin', 'admin')
GO

CREATE PROC usp_ValidateLogin
(
	@User	VARCHAR(10),
	@Password VARCHAR(10)
)
AS
BEGIN
	SELECT UserName FROM LoginUser_115022 
	WHERE UserName = @User AND Password = @Password
END

INSERT INTO Employee_115022 Values(101, 'Robert', '9087654321', 'robert@cg.com', 'Mumbai')
USE Example

IF(NOT EXISTS(SELECT * FROM sys.Tables WHERE Name = 'Users'))
BEGIN
	CREATE TABLE Users(
		UserId INT NOT NULL PRIMARY KEY IDENTITY(1,1)
		,UserName VARCHAR(20) NOT NULL
		,Password VARCHAR(10) NOT NULL
		,Active BIT NOT NULL DEFAULT(1)
	)

END
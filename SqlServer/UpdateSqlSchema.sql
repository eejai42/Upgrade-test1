
DECLARE @ObjectName NVARCHAR(100)

    
    
    -- COUNT: 4
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'PhotoId' AND Object_ID = Object_ID(N'Photo'))
BEGIN
        ALTER TABLE [dbo].[Photo] ADD [PhotoId] UNIQUEIDENTIFIER NOT NULL;
END

    
    
    
    
    -- COUNT: 4
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'Photo'))
BEGIN
        ALTER TABLE [dbo].[Photo] ADD [Name] NVARCHAR(100) NOT NULL;
END

    
ELSE
    BEGIN 


        ALTER TABLE [dbo].[Photo] ALTER COLUMN [Name] NVARCHAR(100) NOT NULL;

    

	END

    
    
    
    
    -- COUNT: 4
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Description' AND Object_ID = Object_ID(N'Photo'))
BEGIN
        ALTER TABLE [dbo].[Photo] ADD [Description] NVARCHAR(100) NOT NULL;
END

    
ELSE
    BEGIN 


        ALTER TABLE [dbo].[Photo] ALTER COLUMN [Description] NVARCHAR(100) NOT NULL;

    

	END

    
    
    
    
    -- COUNT: 4
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'UserId' AND Object_ID = Object_ID(N'Photo'))
BEGIN
        ALTER TABLE [dbo].[Photo] ADD [UserId] UNIQUEIDENTIFIER NULL;
END

    
ELSE
    BEGIN 


        ALTER TABLE [dbo].[Photo] ALTER COLUMN [UserId] UNIQUEIDENTIFIER NULL;

    

	END

    
    
    
    
    -- COUNT: 3
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'UserId' AND Object_ID = Object_ID(N'User'))
BEGIN
        ALTER TABLE [dbo].[User] ADD [UserId] UNIQUEIDENTIFIER NOT NULL;
END

    
    
    
    
    -- COUNT: 3
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'User'))
BEGIN
        ALTER TABLE [dbo].[User] ADD [Name] NVARCHAR(100) NOT NULL;
END

    
ELSE
    BEGIN 


        ALTER TABLE [dbo].[User] ALTER COLUMN [Name] NVARCHAR(100) NOT NULL;

    

	END

    
    
    
    
    -- COUNT: 3
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Description' AND Object_ID = Object_ID(N'User'))
BEGIN
        ALTER TABLE [dbo].[User] ADD [Description] NVARCHAR(100) NOT NULL;
END

    
ELSE
    BEGIN 


        ALTER TABLE [dbo].[User] ALTER COLUMN [Description] NVARCHAR(100) NOT NULL;

    

	END

    
    
    
    
    -- COUNT: 4
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'RatingId' AND Object_ID = Object_ID(N'Rating'))
BEGIN
        ALTER TABLE [dbo].[Rating] ADD [RatingId] UNIQUEIDENTIFIER NOT NULL;
END

    
    
    
    
    -- COUNT: 4
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'Rating'))
BEGIN
        ALTER TABLE [dbo].[Rating] ADD [Name] NVARCHAR(100) NOT NULL;
END

    
ELSE
    BEGIN 


        ALTER TABLE [dbo].[Rating] ALTER COLUMN [Name] NVARCHAR(100) NOT NULL;

    

	END

    
    
    
    
    -- COUNT: 4
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Description' AND Object_ID = Object_ID(N'Rating'))
BEGIN
        ALTER TABLE [dbo].[Rating] ADD [Description] NVARCHAR(100) NOT NULL;
END

    
ELSE
    BEGIN 


        ALTER TABLE [dbo].[Rating] ALTER COLUMN [Description] NVARCHAR(100) NOT NULL;

    

	END

    
    
    
    
    -- COUNT: 4
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'PhotoId' AND Object_ID = Object_ID(N'Rating'))
BEGIN
        ALTER TABLE [dbo].[Rating] ADD [PhotoId] UNIQUEIDENTIFIER NULL;
END

    
ELSE
    BEGIN 


        ALTER TABLE [dbo].[Rating] ALTER COLUMN [PhotoId] UNIQUEIDENTIFIER NULL;

    

	END

    
    
    
    
    -- COUNT: 3
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'AppId' AND Object_ID = Object_ID(N'App'))
BEGIN
        ALTER TABLE [dbo].[App] ADD [AppId] UNIQUEIDENTIFIER NOT NULL;
END

    
    
    
    
    -- COUNT: 3
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'App'))
BEGIN
        ALTER TABLE [dbo].[App] ADD [Name] NVARCHAR(100) NOT NULL;
END

    
ELSE
    BEGIN 


        ALTER TABLE [dbo].[App] ALTER COLUMN [Name] NVARCHAR(100) NOT NULL;

    

	END

    
    
    
    
    -- COUNT: 3
IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Description' AND Object_ID = Object_ID(N'App'))
BEGIN
        ALTER TABLE [dbo].[App] ADD [Description] NVARCHAR(100) NOT NULL;
END

    
ELSE
    BEGIN 


        ALTER TABLE [dbo].[App] ALTER COLUMN [Description] NVARCHAR(100) NOT NULL;

    

	END

    
    
    

SELECT *
FROM (SELECT 'true' AS Success) AS Results
FOR XML AUTO
                   

    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO
    
    
      -- TABLE: Photo
      -- TABLE: User
      -- TABLE: Rating
      -- TABLE: App
      /*
      -- CREATE DATABASE
      IF NOT EXISTS (SELECT * from sys.databases WHERE name = 'Project Name')
      BEGIN
          CREATE DATABASE [Project Name];
      END
        GO
        
     USE [Project Name];
     */
      
      
        -- TABLE: Photo
        -- ****** Object:  Table [dbo].[Photo]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Photo]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Photo] (
          [PhotoId] UNIQUEIDENTIFIER NOT NULL,
          [Name] NVARCHAR(100) NOT NULL,
          [Description] NVARCHAR(100) NOT NULL,
          [UserId] UNIQUEIDENTIFIER NULL,
        
        CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED
          (
            [PhotoId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: User
        -- ****** Object:  Table [dbo].[User]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[User] (
          [UserId] UNIQUEIDENTIFIER NOT NULL,
          [Name] NVARCHAR(100) NOT NULL,
          [Description] NVARCHAR(100) NOT NULL,
        
        CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED
          (
            [UserId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: Rating
        -- ****** Object:  Table [dbo].[Rating]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rating]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Rating] (
          [RatingId] UNIQUEIDENTIFIER NOT NULL,
          [Name] NVARCHAR(100) NOT NULL,
          [Description] NVARCHAR(100) NOT NULL,
          [PhotoId] UNIQUEIDENTIFIER NULL,
        
        CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED
          (
            [RatingId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: App
        -- ****** Object:  Table [dbo].[App]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[App]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[App] (
          [AppId] UNIQUEIDENTIFIER NOT NULL,
          [Name] NVARCHAR(100) NOT NULL,
          [Description] NVARCHAR(100) NOT NULL,
        
        CONSTRAINT [PK_App] PRIMARY KEY CLUSTERED
          (
            [AppId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO


              -- ****** KEYS FOR Table [dbo].[Photo]
          -- Primary Key
          IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Photo_PhotoId]') AND type = 'D')
          BEGIN
            ALTER TABLE [dbo].[Photo] ADD  CONSTRAINT [DF_Photo_PhotoId]  DEFAULT (newid()) FOR [PhotoId]
          END
          GO
        
          -- FK for UserId :: 1 :: Photo :: User
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Photo_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Photo]'))
            ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_User] FOREIGN KEY([UserId])
            REFERENCES [dbo].[User] (UserId)
          GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Photo_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Photo]'))
            ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_User]
            GO
          

              -- ****** KEYS FOR Table [dbo].[User]
          -- Primary Key
          IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_User_UserId]') AND type = 'D')
          BEGIN
            ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_UserId]  DEFAULT (newid()) FOR [UserId]
          END
          GO
        

              -- ****** KEYS FOR Table [dbo].[Rating]
          -- Primary Key
          IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Rating_RatingId]') AND type = 'D')
          BEGIN
            ALTER TABLE [dbo].[Rating] ADD  CONSTRAINT [DF_Rating_RatingId]  DEFAULT (newid()) FOR [RatingId]
          END
          GO
        
          -- FK for PhotoId :: 0 :: Rating :: Photo
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Photo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
            ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Photo] FOREIGN KEY([PhotoId])
            REFERENCES [dbo].[Photo] (PhotoId)
          GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Photo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
            ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Photo]
            GO
          

              -- ****** KEYS FOR Table [dbo].[App]
          -- Primary Key
          IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_App_AppId]') AND type = 'D')
          BEGIN
            ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF_App_AppId]  DEFAULT (newid()) FOR [AppId]
          END
          GO
        


            SELECT 'Successful' as Value
            FROM (SELECT NULL AS FIELD) as Result
            FOR XML AUTO

          
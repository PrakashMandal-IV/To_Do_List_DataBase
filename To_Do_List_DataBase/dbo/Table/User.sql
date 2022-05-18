CREATE TABLE [dbo].[Users] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [UserName]  NVARCHAR (MAX) NOT NULL,
    [FirstName] NVARCHAR (MAX) NOT NULL,
    [LastName]  NVARCHAR (MAX) NOT NULL,
    [Password]  NVARCHAR (MAX) NOT NULL,
    [CreatedAt] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
);


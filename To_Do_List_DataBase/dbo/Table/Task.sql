CREATE TABLE [dbo].[Task] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Title]       NVARCHAR (MAX) NOT NULL,
    [WhatToDo]    NVARCHAR (MAX) NOT NULL,
    [CreatedAt]   DATETIME2 (7)  NOT NULL,
    [IsCompleted] BIT            NOT NULL,
    [UserId]      INT            NOT NULL,
    CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Task_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Task_UserId]
    ON [dbo].[Task]([UserId] ASC);


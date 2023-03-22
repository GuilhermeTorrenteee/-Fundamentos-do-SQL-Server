CREATE OR ALTER VIEW VwCourses AS
Select 
    [Course].[Id],
    [Course].[Tag],
    [Course].[Title],
    [Course].[Url],
    [Course].[Summary],
    [Course].[CreateDate],
    [Course].[Title] AS [Category],
    [Author].[Name] AS [Author]
FROM
    [Course]
    INNER JOIN [Category] ON [Course].[CategoryID] = [Category].[Id]
    INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id]
WHERE
    [Active] = 1

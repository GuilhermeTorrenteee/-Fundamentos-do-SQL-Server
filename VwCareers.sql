CREATE OR ALTER VIEW VwCareer AS

SELECT
    [Career].[Id],
    [Career].[Title],
    [Career].[Url],
    Count([Id])  AS [Courses]
FROM
    [Career]
    INNER JOIN [CareerItem] On [CareerItem].[CareerId] = [Career].[Id]
GROUP BY 
    [Career].[Id],
    [Career].[Title],
    [Career].[Url]

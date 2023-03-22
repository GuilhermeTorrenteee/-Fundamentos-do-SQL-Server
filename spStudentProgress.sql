CREATE OR ALTER PROCEDURE spStudentProgress(
    @StudentId UNIQUEIDENTIFIER
)
As

    SELECT
        [Course].[Title] AS [Course],   
        [Student].[Name] As [Student],  
        [StudentCourse].[Progress],
        [StudentCourse].[LastUpdateDate]

    FROM
        [StudentCourse]
        INNER JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
        INNER JOIN [Course] ON [StudentCourse].[CourseId] = [Course].[Id]

    WHERE
        [StudentCourse].[StudentId] = @StudentId
        AND [StudentCourse].[Progress] <100
        AND [StudentCourse].[Progress] >0
    ORDER BY    
        [StudentCourse].[LastUpdateDate] DESC
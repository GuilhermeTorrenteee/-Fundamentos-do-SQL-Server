CREATE OR ALTER PROCEDURE spDeleteStudent (
    @StudentId UNIQUEIDENTIFIER
)
AS
    BEGIN TRANSACTION
        DELETE FROM
            [StudentCourse]
        WHERE
            [StudentId] = @StudentId

        DELETE FROM 
            [Student]
        WHERE 
            [Id]= '2a0c280c-3bba-4eca-8b65-0cba79c642f9'


    COMMIT
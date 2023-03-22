SELECT * FROM [Course]
SELECT * FROM [Student]
SELECT * FROM [StudentCourse]

INSERT INTO
    [Student]
VALUES(
'2a0c280c-3bba-4eca-8b65-0cba79c642f9',
'André Baltieri',
'teste@balta.io',
'12313131313',
'123123',
Null,
    GETDATE()
)

INSERT INTO
    [StudentCourse]
VALUES(
    '5f5a33f8-4ff3-7e10-cc6e-3fa000000000',
    '2a0c280c-3bba-4eca-8b65-0cba79c642f9',
    50,
    0,
    '2023-03-13 06:15:40',
    GETDATE()

)

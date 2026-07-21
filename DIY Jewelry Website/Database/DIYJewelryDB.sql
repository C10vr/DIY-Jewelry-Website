CREATE TABLE userTable
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    EmailAddress NVARCHAR(100) NOT NULL,
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(100) NOT NULL,
    UserType INT NOT NULL DEFAULT 1
);

INSERT INTO userTable
(FullName, EmailAddress, Username, Password, UserType)
VALUES
('Admin', 'admin@diy.com', 'Admin', 'Admin123', 2);
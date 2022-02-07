CREATE DATABASE db1;
GO

USE db1
GO

CREATE TYPE my_type FROM int;
GO

SELECT count(*) FROM sys.types WHERE name = 'my_type';
GO

USE master;
GO

-- my_type should not be visible here
SELECT count(*) FROM sys.types WHERE name = 'my_type';
GO

CREATE TYPE my_type1 FROM int;
GO

SELECT count(*) FROM sys.types WHERE name = 'my_type1';
GO

USE db1
GO

SELECT count(*) FROM sys.types WHERE name = 'my_type1';
GO

DROP TYPE my_type;
GO

USE master;
GO

DROP DATABASE db1;
GO

DROP TYPE my_type1;
GO
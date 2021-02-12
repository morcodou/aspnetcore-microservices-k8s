----------------------------------------------------------------------------
--- DB USER CREATION
----------------------------------------------------------------------------
USE master;
GO
CREATE LOGIN [globo_dbuser] WITH PASSWORD=N'P(ssw0rd0123)', CHECK_EXPIRATION=OFF, CHECK_POLICY=ON;
GO


USE GloboTicketDiscountDB;
GO
CREATE USER [globo_dbuser] FOR LOGIN [globo_dbuser];
GO
EXEC sp_addrolemember N'db_owner', [globo_dbuser];
GO

USE GloboTicketEventCatalogDb;
GO
CREATE USER [globo_dbuser] FOR LOGIN [globo_dbuser];
GO
EXEC sp_addrolemember N'db_owner', [globo_dbuser];
GO

USE GloboTicketMarketingDb;
GO
CREATE USER [globo_dbuser] FOR LOGIN [globo_dbuser];
GO
EXEC sp_addrolemember N'db_owner', [globo_dbuser];
GO

USE GloboTicketOrderDb;
GO
CREATE USER [globo_dbuser] FOR LOGIN [globo_dbuser];
GO
EXEC sp_addrolemember N'db_owner', [globo_dbuser];
GO

USE GloboTicketShoppingBasketDb;
GO
CREATE USER [globo_dbuser] FOR LOGIN [globo_dbuser];
GO
EXEC sp_addrolemember N'db_owner', [globo_dbuser];
GO
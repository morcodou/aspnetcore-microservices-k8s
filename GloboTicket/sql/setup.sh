# Wait for SQL Server to be started and then run the sql script
./wait-for-it.sh globosql:1433 --timeout=0 --strict -- sleep 5s && \
/opt/mssql-tools/bin/sqlcmd -S localhost -i EventCatalogDB-create.sql -U sa -P "$MSSQL_SA_PASSWORD"
/opt/mssql-tools/bin/sqlcmd -S localhost -i MarketingDB-create.sql -U sa -P "$MSSQL_SA_PASSWORD"
/opt/mssql-tools/bin/sqlcmd -S localhost -i OrderDB-create.sql -U sa -P "$MSSQL_SA_PASSWORD"
/opt/mssql-tools/bin/sqlcmd -S localhost -i Shoppingbasket-create.sql -U sa -P "$MSSQL_SA_PASSWORD"
/opt/mssql-tools/bin/sqlcmd -S localhost -i TicketDiscountDB-create.sql -U sa -P "$MSSQL_SA_PASSWORD"
/opt/mssql-tools/bin/sqlcmd -S localhost -i Globo_DBUser-create.sql -U sa -P "$MSSQL_SA_PASSWORD"
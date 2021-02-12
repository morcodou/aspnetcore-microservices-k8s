FROM mcr.microsoft.com/mssql/server 

ARG PROJECT_DIR=/tmp/globomantics
RUN mkdir -p $PROJECT_DIR
WORKDIR $PROJECT_DIR
COPY sql/EventCatalogDB-create.sql ./
COPY sql/MarketingDB-create.sql ./
COPY sql/OrderDB-create.sql ./
COPY sql/Shoppingbasket-create.sql ./
COPY sql/TicketDiscountDB-create.sql ./
COPY sql/wait-for-it.sh ./
COPY sql/entrypoint.sh ./
COPY sql/setup.sh ./

CMD ["/bin/bash", "entrypoint.sh"]
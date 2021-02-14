# External
docker build -f .\External.PaymentGateway\Dockerfile -t morcodou/globoticket.external.paymentgateway .
docker push morcodou/globoticket.external.paymentgateway:latest

# Frontends
docker build -f .\GloboTicket.Client\Dockerfile -t morcodou/globoticket.web .
docker push morcodou/globoticket.web:latest

docker build -f .\GloboTicket.Web.Bff\Dockerfile -t morcodou/globoticket.web.bff .
docker push morcodou/globoticket.web.bff:latest

# Gateway
docker build -f .\GloboTicket.Gateway.WebBff\Dockerfile -t morcodou/globoticket.gateway.webbff .
docker push morcodou/globoticket.gateway.webbff:latest

# Services
docker build -f .\GloboTicket.Services.Discount\Dockerfile -t morcodou/globoticket.services.discount .
docker push morcodou/globoticket.services.discount:latest

docker build -f .\GloboTicket.Services.EventCatalog\Dockerfile -t morcodou/globoticket.services.eventcatalog .
docker push morcodou/globoticket.services.eventcatalog:latest

docker build -f .\GloboTicket.Services.Marketing\Dockerfile -t morcodou/globoticket.services.marketing .
docker push morcodou/globoticket.services.marketing:latest

docker build -f .\GloboTicket.Services.Order\Dockerfile -t morcodou/globoticket.services.order .
docker push morcodou/globoticket.services.order:latest

docker build -f .\GloboTicket.Services.Payment\Dockerfile -t morcodou/globoticket.services.payment .
docker push morcodou/globoticket.services.payment:latest

docker build -f .\GloboTicket.Services.ShoppingBasket\Dockerfile -t morcodou/globoticket.services.shoppingbasket .
docker push morcodou/globoticket.services.shoppingbasket:latest


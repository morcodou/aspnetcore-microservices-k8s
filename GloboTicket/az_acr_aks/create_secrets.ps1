$ACR_NAME=''
$ACR_UNAME=''
$ACR_PASSWD=''

Write-Host $ACR_NAME
Write-Host $ACR_UNAME
Write-Host $ACR_PASSWD

kubectl create secret generic discount-db --from-literal=connectionstring="Data Source=tcp:svc-globoticketdb,1434;Initial Catalog=GloboTicketDiscountDB;Integrated Security=False;User ID=sa;Password=P(ssw0rd0123);Connect Timeout=60;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;"
kubectl create secret generic eventcatalog-db --from-literal=connectionstring="Data Source=tcp:svc-globoticketdb,1434;Initial Catalog=GloboTicketEventCatalogDb;Integrated Security=False;User ID=sa;Password=P(ssw0rd0123);Connect Timeout=60;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;"
kubectl create secret generic marketing-db --from-literal=connectionstring="Data Source=tcp:svc-globoticketdb,1434;Initial Catalog=GloboTicketMarketingDb;Integrated Security=False;User ID=sa;Password=P(ssw0rd0123);Connect Timeout=60;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;"
kubectl create secret generic ordering-db --from-literal=connectionstring="Data Source=tcp:svc-globoticketdb,1434;Initial Catalog=GloboTicketOrderDb;Integrated Security=False;User ID=sa;Password=P(ssw0rd0123);Connect Timeout=60;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;"
kubectl create secret generic shoppingbasket-db --from-literal=connectionstring="Data Source=tcp:svc-globoticketdb,1434;Initial Catalog=GloboTicketShoppingBasketDb;Integrated Security=False;User ID=sa;Password=P(ssw0rd0123);Connect Timeout=60;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;"
kubectl create secret docker-registry acr-secret --docker-server=$ACR_NAME --docker-username=$ACR_UNAME --docker-password=$ACR_PASSWD --docker-email=ignorethis@email.com

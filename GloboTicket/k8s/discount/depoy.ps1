kubectl create secret generic discount-db --from-literal=connectionstring="Data Source=tcp:svc-globoticketdb,1434;Initial Catalog=GloboTicketDiscountDB;Integrated Security=False;User ID=sa;Password=P(ssw0rd0123);Connect Timeout=60;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;"
kubectl apply -f .\discount\discount.yaml
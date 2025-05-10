
Create or Alter view vwVendas_INTERNET AS 
Select 
	 fis.SalesOrderNumber as 'Ordem de Vendas',
	 fis.OrderDate as 'Data do Pedido',
	 fis.OrderQuantity as 'Qtdade do Pedido',
	 fis.TotalProductCost as 'Custo Total do Pedido',
	 fis.SalesAmount as 'Qtdade de Vendas',
	 dc.FirstName +'   '+LastName as 'Nome Completo',
	Gender as 'Sexo',
	SalesTerritoryCountry as 'País',
	dpc.EnglishProductCategoryName as 'Nome do Produto'
from 
	FactInternetSales fis
INNER JOIN DimProduct dp ON  fis.ProductKey=dp.ProductKey
	INNER JOIN DimProductSubcategory dps ON dp.ProductSubcategoryKey=dps.ProductSubcategoryKey
		INNER JOIN DimProductCategory dpc ON dps.ProductCategoryKey=dpc.ProductCategoryKey 
INNER JOIN DimCustomer dc ON fis.CustomerKey=dc.CustomerKey
INNER JOIN DimSalesTerritory dst on fis.SalesTerritoryKey=dst.SalesTerritoryKey
where  year(OrderDate)=2013

go 

select * from vwVendas_INTERNET 
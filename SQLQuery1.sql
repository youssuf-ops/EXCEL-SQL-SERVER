

--Alterando o banco de dados e atualizando no EXCEL 

BEGIN TRANSACTION T1 

UPDATE FactInternetSales 
SET OrderQuantity=25
Where ProductKey = 361 --- Categoria Bike 

COMMIT TRANSACTION T1 

SELECT * FROM FactInternetSales  











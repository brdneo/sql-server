-- Este código seleciona o ID do produto e o nome do produto da tabela de produto
SELECT
	ProductKey,
	ProductName
FROM
	DimProduct

-- Esse código seleciona toda as colunas da tabela DimStore
SELECT * 
FROM DimStore
WHERE GeographyKey LIKE '6%'

-- Esse código seleciona as 80 primeiras linhas da tabela DimStore
SELECT TOP(80)
	StoreKey, 
	StoreName, 
	StorePhone 
FROM 
	DimStore

-- Esse código seleciona as 10% primeiras linhas da tabela DimCustomer
SELECT TOP(10) PERCENT
	*
FROM
	DimCustomer
WHERE
	FirstName LIKE '[A-Z]%' AND MiddleName IS NULL
	ORDER BY FirstName ASC
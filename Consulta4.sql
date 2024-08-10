select * from DimEmployee
where Gender = 'F' and DepartmentName = 'Finance'

select BrandName, ColorName, UnitPrice from DimProduct
where BrandName = 'Contoso' and ColorName = 'Red' and UnitPrice >= 100 and UnitPrice <= 1000

select * from DimProduct
where (BrandName = 'Fabrikam' or BrandName = 'Litware' or ColorName = 'Black') and size is null

select * from DimSalesTerritory
where SalesTerritoryGroup = 'Europe' and not SalesTerritoryCountry = 'Italy'

-- aula de where in

select * from DimProduct
where ColorName not in ('silver', 'blue', 'white', 'red', 'black')

select * from DimEmployee
where DepartmentName in ('production', 'marketing', 'engineering')

-- aula de where like (filtro por texto)

select * from DimProduct
where ProductName like '%Mp3 Player%'

select * from DimProduct
where ProductDescription like 'type%'

-- aula de between

select * from DimProduct
where UnitPrice not between 0 and 1000

select count(*) from DimEmployee
where HireDate between '2000-01-01' and '2000-01-31'

-- aula de null (vazios)

select count(*) from DimCustomer
where CompanyName is not null
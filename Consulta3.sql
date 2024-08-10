-- aula de order by

select top(100)
	*
from
	DimStore
where
	EmployeeCount is not null
order by
	EmployeeCount desc


select top(10)
	productname,
	unitcost,
	Weight
from
	DimProduct
order by
	UnitCost desc,
	Weight desc

-- aula de where

select
	ProductName Produto,
	UnitPrice Preço
from
	DimProduct
where
	UnitPrice > 1000 and UnitPrice < 2000
order by
	UnitPrice desc


select
	*
from
	DimProduct
where
	BrandName = 'fabrikam' and ColorName = 'Black' and Size is null

select
	*
from
	DimCustomer
where
	BirthDate >= '1970-12-31'
order by
	BirthDate desc


select
	*
from
	DimCustomer
where
	BirthDate like '$1970'
select
	*
from
	DimProduct

select
	distinct ColorName
from
	DimProduct

select
	distinct DepartmentName
from
	DimEmployee


select
	ProductName as 'Nome do Produto',
	BrandName as 'Marca',
	ColorName as 'Cor'
from
	DimProduct


select
	*
from
	DimCustomer
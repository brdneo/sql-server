-- aula da função SUM

select
	count(*)
from
	FactSales
where
	SalesQuantity is not null

select
	sum(SalesQuantity) as 'Total Vendido',
	sum(ReturnQuantity) as 'Total Devolvido'
from
	FactSales

-- aula de distinct + count
select
	count(distinct ColorName)
from
	dimproduct

-- aula da função MIN e MAX

select
	max(unitprice)
from
	DimProduct

select
	min(unitprice)
from
	DimProduct

select
	max(unitcost) as 'Custo Maximo',
	min(unitcost) as 'Custo Minimo'
from
	DimProduct

-- aula da função AVG

select
	avg(yearlyincome) as 'Media Anual de Salario'
from
	DimCustomer
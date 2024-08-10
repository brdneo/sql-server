-- group by parte 1

select
	BrandName as 'Marcas',
	count(*) as 'Total'
from
	DimProduct
group by
	BrandName

-- group by parte 2

select
	StoreType,
	sum(employeecount)
from
	DimStore
group by StoreType

select
	Brandname as 'Produto',
	AVG(UnitCost) as 'Media de Custo'
from
	DimProduct
group by
	BrandName

SELECT 
	ClassName, 
	AVG(UnitPrice) as 'Média de preço',
	MAX(UnitPrice) as 'Máximo preço'
FROM
	DimProduct
GROUP BY
	ClassName

-- aula de group by + order by
SELECT
	StoreType,
	SUM(EmployeeCount) as Total
FROM
	DimStore
GROUP BY
	StoreType
ORDER BY
	Total desc;


WITH StoreEmployeeCounts AS (
    SELECT
        StoreType,
        SUM(EmployeeCount) AS TotalEmployeeCount
    FROM
        DimStore
    GROUP BY
        StoreType
)
SELECT
    StoreType,
    TotalEmployeeCount
FROM
    StoreEmployeeCounts
ORDER BY
    TotalEmployeeCount DESC;


SELECT
    StoreType,
    SUM(EmployeeCount) AS TotalEmployeeCount
FROM
    DimStore
GROUP BY
    StoreType
HAVING
    SUM(EmployeeCount) <> 100
ORDER BY
    TotalEmployeeCount DESC;


-- aula de group by e where

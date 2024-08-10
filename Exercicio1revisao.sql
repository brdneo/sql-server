/*Você é responsável por controlar os dados de clientes e de produtos da sua empresa.
O que você precisará fazer é confirmar se:*/

/*a.Existem 2.517 produtos cadastrados na base e, se não tiver, você deverá reportar ao seu gestor para saber se existe alguma defasagem no controle dos produtos.*/

select
	*
from
	DimProduct

/*b.Até o mês passado, a empresa tinha um total de 19.500 clientes na base de controle. Verifique se esse número aumentou ou reduziu.*/

select
	*
from
	DimCustomer

/*Você trabalha no setor de marketing da empresa Contoso e acaba de ter uma ideia de oferecerdescontos especiais para os clientes no dia de seus aniversários. Para isso, você vai precisarlistar todos os clientes e as suas respectivas datas de nascimento, além de um contato.*/

/*a)Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabeladimCustomer.*/

select
	CustomerKey,
	FirstName,
	EmailAddress,
	BirthDate
from
	DimCustomer

/*b)Renomeie as colunas dessa tabela usando o alias (comando AS).*/

select
	CustomerKey as Codigo,
	FirstName as Nome,
	EmailAddress as Email,
	BirthDate as Aniversario
from
	DimCustomer

-- 3.A Contoso está comemorando aniversário de inauguração de 10 anos e pretende fazer uma ação de premiação para os clientes. A empresa quer presentear os primeiros clientes desdea inauguração.

-- Você foi alocado para levar adiante essa ação. Para isso, você terá que fazer o seguinte:

-- a)A Contoso decidiu presentear os primeiros 100 clientes da história com um vale compras de R$ 10.000. Utilize um comando em SQL para retornar uma tabela com os primeiros 100 primeiros clientes da tabela dimCustomer (selecione todas as colunas).

select top(100)
	*
from
	DimCustomer
where
	DateFirstPurchase is not null
order by
	DateFirstPurchase

-- b)A Contoso decidiu presentear os primeiros 20% de clientes da história com um vale compras de R$ 2.000. Utilize um comando em SQL para retornar 10% das linhas da sua tabela dimCustomer (selecione todas as colunas).

select top(20) percent
	*
from
	DimCustomer

-- c)Adapte o código do item a) para retornar apenas as 100 primeiras linhas, mas apenas as colunas FirstName, EmailAddress, BirthDate.

select top(100)
	FirstName,
	EmailAddress,
	BirthDate
from
	DimCustomer

-- d)Renomeie as colunas anteriores para nomes em português.

select top(100)
	FirstName Nome,
	EmailAddress Email,
	BirthDate 'Data de Aniversario'
from
	DimCustomer

-- A empresa Contoso precisa fazer contato com os fornecedores de produtos para repor o estoque. Você é da área de compras e precisa descobrir quem são esses fornecedores.

-- Utilize um comando em SQL para retornar apenas os nomes dos fornecedores na tabela dimProduct e renomeie essa nova coluna da tabela.

select distinct
	Manufacturer as Fornecedor
from
	DimProduct

-- 5. O seu trabalho de investigação não para. Você precisa descobrir se existe algum produto registrado na base de produtos que ainda não tenha sido vendido. Tente chegar nessa informação.
-- Obs: caso tenha algum produto que ainda não tenha sido vendido, você não precisa descobrir qual é, é suficiente saber se teve ou não algum produto que ainda não foi vendido.

select distinct
	ProductKey
from
	FactSales

SELECT count(*)
FROM DimProduct
LEFT JOIN FactSales ON DimProduct.ProductKey = FactSales.ProductKey
WHERE FactSales.ProductKey IS NULL;

SELECT CASE
           WHEN EXISTS (
               SELECT 1
               FROM DimProduct p
               LEFT JOIN FactSales s ON p.ProductKey = s.ProductKey
               WHERE s.ProductKey IS NULL
           )
           THEN 'Sim'
           ELSE 'Não'
       END AS ProdutosNaoVendidos;


select count(*) from FactSales
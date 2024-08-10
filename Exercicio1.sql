/* Existem 2.517 produtos cadastrados na base e, se não tiver, você deverá reportar ao seu gestor para saber se existe alguma defasagem no controle dos produtos. */

select
	*
from
	DimProduct


/* Até o mês passado, a empresa tinha um total de 19.500 clientes na base de controle. Verifique se esse número aumentou ou reduziu. */

select
	*
from
	DimCustomer


/* Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabela dimCustomer. Renomeie as colunas dessa tabela usando o alias (comando AS). */
select 
	CustomerKey as 'Código',
	FirstName as 'Nome',
	EmailAddress as 'E-mail',
	BirthDate as 'Nascimento'
from
	DimCustomer


-- Teste
select distinct
	FirstName
from
	DimCustomer


/* Utilize um comando em SQL para retornar uma tabela com os primeiros 100 primeiros clientes da tabela dimCustomer (selecione todas as colunas). */
select
	top (100) *
from
	DimCustomer


/* Utilize um comando em SQL para retornar 10% das linhas da sua tabela dimCustomer */
select top(20) percent
	*
from
	DimCustomer



/* Adapte o código do item a) para retornar apenas as 100 primeiras linhas, mas apenas as colunas FirstName, EmailAddress, BirthDate. */
select top (100)
	FirstName as 'Nome',
	EmailAddress as 'Email',
	BirthDate as 'Nascimento'
from
	DimCustomer


/* Utilize um comando em SQL para retornar apenas os nomes dos fornecedores na tabela dimProduct e renomeie essa nova coluna da tabela. */

select 
	distinct
		Manufacturer as 'Produtor'
from
	DimProduct

/* Você precisa descobrir se existe algum produto registrado na base de produtos que ainda não tenha sido vendido. Tente chegar nessa informação. */

select distinct ProductKey from FactSales
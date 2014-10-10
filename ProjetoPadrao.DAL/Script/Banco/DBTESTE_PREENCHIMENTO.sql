-- Tabela de Avaliação
select * from dbTeste.dbo.TAB_AVALIACAO

insert into dbTeste.dbo.TAB_AVALIACAO
values ('Bom', 'Contém um enrredo interessante, não houve atraso na entrega.')

-- Tabela de Categoria
select * from dbTeste.dbo.TAB_CATEGORIA

insert into dbTeste.dbo.TAB_CATEGORIA
values ('Ação', 'Filme com cenas de adrenalina')

-- Tabela de Classificação
select * from dbTeste.dbo.TAB_CLASSIFICACAO


insert into dbTeste.dbo.TAB_CLASSIFICACAO
values ('Livre', 'Classificação para todas as idades', '#0F0', 'Verde')

-- Tabela de Autor
select * from dbTeste.dbo.CAD_AUTOR

insert into dbTeste.dbo.CAD_AUTOR
values ('Vinicius de Moraes',
		Convert(date,'19/10/1913', 103),
		Convert(date,'09/06/1980',103),
		'', 
		'',
		99484898, 
		021)

-- Tabela de Editora

select * from dbTeste.dbo.CAD_EDITORA

insert into dbTeste.dbo.CAD_EDITORA
values ('Novatec',
	'info@novatec.com',
	'www.novatec.com.br',
	CONVERT(date,'12/01/1988',103),
	29596529,
	011
	)

-- Tabela de 


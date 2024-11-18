select 
	p.id as id_pessoa,
	p.nome,
	p.idade,
	e.rua,
	e.cidade,
	e.estado,
	e.cep
from
	pessoa p
join 
	enderecos e on p.id = e.id_pessoa;

select 
	p.id as id_pessoa,
	p.nome,
	p.idade,
	c.tipo as tipo_contato,
	c.detalhe as detalhe_contato
from
	pessoa p
join
	contato c on p.id = c.id_pessoa;

select 
	p.id as id_pessoa,
	p.nome,
	p.idade,
	e.rua,
	e.cidade,
	e.estado,
	e.cep,
	c.tipo as tipo_contato,
	c.detalhe as detalhe_contato
from
	pessoa p
join
	enderecos e on p.id = e.id_pessoa
join
	contato c on p.id = c.id_pessoa;
	

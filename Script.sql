create database tropa_cc

create table minha_tabela (
	id serial primary key,
	nome varchar(100),
	idade INT
);

alter table minha_tabela rename to pessoa;

create table pessoa (
	id serial primary key,
	nome varchar(100),
	idade int
);

create table enderecos (
	id serial primary key,
	id_pessoa int references pessoa(id) on delete cascade,
	rua varchar(100),
	cidade varchar(50),
	estado varchar(50),
	cep varchar(10)
);

insert into pessoa(nome, idade) values ('João Silva', 30),
insert into pessoa(nome, idade) values ('Maria Oliveira',  35),
insert into pessoa(nome, idade) values ('Carlos Souza', 45),
insert into pessoa(nome, idade) values ('Ana Costa', 50);

insert into enderecos(rua, cidade, estado, cep) values ('Pelotas 83', Vila Mariana, São Paulo, São Paulo, 58995-000),
insert into enderecos(rua, cidade, estado, cep) values ('Governador Valadares', São Paulo, São Paulo, 58995-000),
insert into enderecos(rua, cidade, estado, cep) values ('Praça dos Enfartados', Mogi das Cruzes, São Paulo, 08850-100),
insert into enderecos(rua, cidade, estado, cep) values ('Travessia Na Paz do Teu Sorriso', Iguatemi, São Paulo, 08850-100);

select * from pessoa;

select * from enderecos;

create table contato (
	id serial primary key,
	id_pessoa int references pessoa(id) on delete cascade,
	tipo varchar(50),
	detalhe varchar(100)
);

select * from contato;

insert into contato(id_pessoa, tipo, detalhe) values
(1, 'Telefone', '(11) 98765-4321'),
(1, 'Email', 'maria.silva@example.com'),
(2, 'Celular', '(21) 91234-5678'),
(3, 'Telefone', '(71) 99876-5432'),
(4, 'Email', 'carla.souza@example.com');

update pessoa 
set idade = 32
where id = 3

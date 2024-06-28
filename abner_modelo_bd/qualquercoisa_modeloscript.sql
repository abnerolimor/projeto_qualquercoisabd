create database qualquercoisa;

use qualquercoisa;

create table funcionarios(
pk int not null auto_increment, primary key(pk),
nome varchar(255) not null,
login varchar(255) not null
);

create table produto(
pk int not null auto_increment, primary key(pk),
nome varchar(255) not null,
valor int not null
);

create table venda(
	pk int not null auto_increment, primary key(pk),
	produto varchar(255) not null,
	operador varchar(255) not null,
	data_venda date not null,
	horario date not null,
	funcionario_fk int not null, foreign key(funcionario_fk) references funcionario(pk),
	produto_fk int not null, foreign key(produto_fk) references produto(pk)
);
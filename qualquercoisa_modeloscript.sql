create database qualquercoisa;

use qualquercoisa;

create table funcionario(
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
	data_venda date not null,
	horario date not null,
	funcionario_fk int not null, foreign key(funcionario_fk) references funcionario(pk),
	produto_fk int not null, foreign key(produto_fk) references produto(pk) 
    );
    
    create table pix (
		pk int not null auto_increment, primary key(pk),
		aluno_nome varchar(255) not null,
        aluno_turma varchar(255) not null,
        venda_fk int not null, foreign key( venda_fk) references  venda(pk) 
    );
    
    create table caixa (
		pk int not null auto_increment, primary key(pk),
        nome varchar(255),
		venda_fk int not null, foreign key( venda_fk) references  venda(pk) 
        );
        
        create table historico_venda (
				pk int not null auto_increment, primary key(pk),
				data_venda date not null,
				valor int not null,
				venda_fk int not null, foreign key( venda_fk) references  venda(pk),
				funcionario_fk int not null, foreign key(funcionario_fk) references funcionario(pk)
        );
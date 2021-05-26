create database bushido;
use bushido;

create table Cadastro(
	idCadastro int primary key auto_increment,
    nome varchar(45),
    cpf char(11) unique key,
    cep char(8),
    idade date,
    arteMarcial varchar(45),
    email varchar(45),
    login varchar(45),
    senha varchar(45)
    );
    
create table Treinos(
	idTreino int primary key auto_increment,
    nome varchar(20),
    descricao varchar(800),
    fkCadastro int,
    foreign key (fkCadastro) references Cadastro(idCadastro)
);
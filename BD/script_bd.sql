create database ProjetoIndividual;
use ProjetoIndividual;

create table Cadastro(
	idCadastro int primary key auto_increment,
    nome varchar(45),
    idade date,
    arteMarcial varchar(45),
    CEP char(8) );
    
create table Usuario(
	idUsuario int primary key auto_increment,
    usuario varchar(45),
    senha varchar(45),
    fkCadastro int,
    foreign key (fkCadastro) references Cadastro(idCadastro)
);

create table PlanoTreino(
	idPlanoTreino int primary key auto_increment,
    nomeTreino varchar(45),
    descricao varchar(90),
    fkUsuario int,
    foreign key (fkUsuario) references Usuario(idUsuario)
);
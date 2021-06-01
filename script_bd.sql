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

create table Comentario(
	idComentario int primary key auto_increment,
    descricao varchar(114),
    fkCadastro int,
    foreign key (fkCadastro) references Cadastro(idCadastro)
);

create table admin(
	idAdmin int primary key auto_increment,
    usuario varchar(45),
    senha varchar(45)
);



insert into cadastro values(null,'Eduardo Dantas de Oliveira','50340978856','03805030','2001-01-06','Muay-thai','dantaseduardo147@gmail.com','dantas_eduardo','852147'),
						   (null,'Jorge Miguel','50340978857','03805031','2001-01-06','Kung-fu','jorge147@gmail.com','jorginho','852147'),
                           (null,null,null,null,'2000-01-06','Muay-thai',null,null,null),
                           (null,null,null,null,'1999-01-06','Muay-thai',null,null,null),
                           (null,null,null,null,'1998-01-06','Muay-thai',null,null,null),
                           (null,null,null,null,'1996-01-06','Muay-thai',null,null,null),
                           (null,null,null,null,'2000-01-06','Kung-fu',null,null,null),
                           (null,null,null,null,'1999-01-06','Kung-fu',null,null,null),
                           (null,null,null,null,'1998-01-06','Kung-fu',null,null,null),
                           (null,null,null,null,'1996-01-06','Kung-fu',null,null,null),
                           (null,null,null,null,'2000-01-06','Taekwondo',null,null,null),
                           (null,null,null,null,'1999-01-06','Taekwondo',null,null,null),
                           (null,null,null,null,'1998-01-06','Taekwondo',null,null,null),
                           (null,null,null,null,'1996-01-06','Taekwondo',null,null,null);
                           
insert into comentario values(null,'Teste comentario',1),
							 (null,'Teste comentario2',1),
							 (null,'Teste comentario3',2),
							 (null,'Teste comentario4',2);
                             
insert into treinos values(null,'Costas/Triceps','40x,Desenvolvimento frente/tras,-,40x,Remada,-,40x,Elevação frontal/lateral,-,40x,Rosca francesa,-,30x,Pike,-,30x,Flexão diamante,-,30x,Extensão de tríceps,-,,Alongamento,40min,',1),
						  (null,'Perna','60x,Agachamento,-,60x,Extensora,-,60x,Abdominal nórdico,30s,60x,Lunge,-,3x,Resistência,1min,-,Alongamento,40min,',1),
						  (null,'Peito/biceps','40x,Supino,-,40x,Crusifixo,-,40x,Rosca,-,40x,Rosca concentrada,-,30x,Flexão aberta,-,30x,Flexão fechada,-,2x,Corda,5min,-,Alongamento,40min,',1),
						  (null,'Abdominal','30x,Curto,-,30x,Abdominal,-,30x,Elevação de perna,-,3x,Ponte,30s,',1);
                          
insert into admin values(null,'adm','852147');

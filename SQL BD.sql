create database Aula2;
use Aula2;

create table Cargo(
cod_cargo int auto_increment primary key,
nome_cargo varchar(70) not null
);

create table Funcionario(
	cod_func int auto_increment primary key,
    cod_cargo int,
    nome_func varchar(70),
    salario_func decimal(10,2),
    rg_func int,
    foreign key (cod_cargo) references Cargo(cod_cargo)
);

create table Dependente(
	cod_dep int auto_increment primary key,
    cod_func int,
    nome_dep varchar(50),
    foreign key (cod_func) references Funcionario(cod_func)
);

insert into Cargo (nome_cargo) values 
("Presidente"),
("Gerente"),
("Supervisor"),
("Revisor"),
("Redator")
; 

insert into Funcionario(cod_cargo, nome_func, salario_func, rg_func) values
(5, "Luiz Pereira", 3000.00, 27291905),
(5, "Antonio Almeida", 3000.00, 15970247),
(3, "Donizete Ribeiro", 2800.00, 27151908),
(3, "Gabriela Moura", 4700.00, 255279145),
(2, "Emilio Duarte", 5000.00, 17278246),
(1,"Carolina Ferreira", 9000.00, 18154578);

insert into Dependente(cod_func, nome_dep) values
(1, "Mariana Leme"),
(1, "Camila Leme"),
(1, "Josival Leme"),
(2, "Clovis Almeida"),
(2, "Durval Almeida"),
(5, "Fabiana Duarte"),
(5, "Joana Duarte");

select * from Cargo;
select * from Funcionario;
select * from Dependente;

select Cargo.nome_cargo, Funcionario.nome_func
From Cargo inner join Funcionario
On Cargo.cod_cargo=Funcionario.cod_cargo;

select Cargo.nome_cargo, Funcionario.nome_func
from Cargo left outer join Funcionario
on Cargo.cod_cargo=Funcionario.cod_cargo;

drop table geek if exists cascade;
drop sequence seq if exists;

create table geek(
	id numeric not null,
	nom varchar(255) not null,
	prenom varchar(255) not null,
	email varchar(255) not null,
	sexe varchar(255) not null,
	primary key (id)
);

insert into geek (id,nom,prenom,email,sexe) values(1,'Pierre','Paul','jacques@hotmail.fr','M');
insert into geek (id,nom,prenom,email,sexe) values(2,'Dupont','Kévin','kevv71@live.fr','M');
insert into geek (id,nom,prenom,email,sexe) values(3,'Dufour','Camille','camy69@voila.fr','F');
insert into geek (id,nom,prenom,email,sexe) values(4,'Etangsalé','Dylan','dyl71@hotmail.fr','M');


create sequence seq start with 5;
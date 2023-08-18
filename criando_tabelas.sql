create database oficina;
use oficina;

-- drop database oficina;

create table bank(
	idBank int primary key auto_increment,
    Bname varchar(45),
    Bnum_conta char(14),
    Baddress varchar(255)
);

create table person(
	idPerson int auto_increment,
    Pname varchar(45),
    Lname varchar(45),
    Paddress varchar(45),
    idDriver_license char(15),
    primary key (idPerson, idDriver_license)
);

create table company(
	idCompany int primary key auto_increment,
    Cname varchar(45),
    Caddress varchar(200)
);


create table clients_dono(
	idDono int auto_increment,
    idDbank int,
    idDperson int,
    idDcompany int,
    primary key (idDono, idDbank, idDperson, idDcompany),
    constraint fk_bank foreign key (idDbank) references bank(idBank),
    constraint fk_person foreign key(idDperson) references person(idPerson),
    constraint fk_company foreign key (idDcompany) references company(idCompany)
);

desc clients_dono;






create table vehicles(
	idVehicles int primary key auto_increment,
    Vname varchar(45),
    Vmodel varchar(45),
    Vyear int    
);

create table vehicles_registred(
	idVehicles_registred int auto_increment,
    type_vehicle enum('Carro', 'Moto') not null,
    idRVehicles int,
    primary key (idVehicles_registred, idRVehicles),
    constraint fk_vehicle foreign key (idRVehicles) references vehicles(idVehicles)
);

create table vehicle_oficina(
	idRegistredVehicle int auto_increment,
    idVOVehicles int,
    idVOficina int,
    placa char(15),
    primary key (idRegistredVehicle, idVOVehicles),   
    constraint fk_VOregistred foreign key (idVOVehicles) references vehicles_registred(idVehicles_registred)
);

create table oficina(
	idOficina int auto_increment,
    idClient  int,
    period_repair char(10),
    idOVehicle int,
    primary key (idOficina, idOVehicle),
    constraint fk_clients foreign key (idClient) references clients_dono(idDono),
    constraint fk_OVehicle foreign key (idOVehicle) references vehicle_oficina(idRegistredVehicle)
);


desc clients_dono;
show tables;
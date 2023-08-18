use oficina;

select * from vehicles;


-- Como mostrar a relação dos carros dos clients, mostrando o tipo e ordenado pelo ano?
select Pname , idDriver_license ,type_vehicle, Vname , Vmodel , Vyear from person p
				inner join vehicles c ON p.idPerson = c.idVehicles
                inner join vehicles_registred o ON idVehicles_registred = p.idPerson
                order by Vyear;

-- Como motrar todas as informações completas sobre o dono do veículo e as informações do veículo?
select * from person p, vehicles v where p.idPerson = v.idVehicles;

-- Nome do cliente e a placa do veículo
select concat(Pname, ' ', Lname) as complete_name, placa from person p, vehicle_oficina v
		where p.idPerson = v.idRegistredVehicle
		order by p.idPerson;
        
-- Como mostrar informações sobre o cliente? Nome, nome_banco, conta, nome_compania
select Pname, Bname, Bnum_conta, Cname from person p
			inner join bank b on p.idPerson = b.idBank
            inner join company c on idCompany = p.idPerson;
            
-- Como mostrar a oficina?
select Pname, type_vehicle, Vmodel, period_repair  from oficina o inner join person p on p.idPerson = o.idClient
						inner join vehicles v on v.idVehicles = p.idPerson
                        inner join vehicles_registred r on r.idVehicles_registred = v.idVehicles;
                        
-- Having
select Vyear from vehicles
group by Vyear
having Vyear > 2010; 


-- Como contar quantos carros e motos tenho registrado?
select type_vehicle, count(*) from vehicles_registred
group by type_vehicle;

-- Como contar quantas motos tenho no registro?
select type_vehicle, count(*) from vehicles_registred
group by type_vehicle
having type_vehicle = 'Moto';


select Pname , idDriver_license ,type_vehicle, Vname , Vmodel , Vyear, placa from person p
				inner join vehicles c ON p.idPerson = c.idVehicles
                inner join vehicles_registred o ON idVehicles_registred = p.idPerson
                inner join vehicle_oficina on idRegistredVehicle = c.idVehicles
                order by Vyear;
 
select * from vehicles_registred;
desc person;
desc company;
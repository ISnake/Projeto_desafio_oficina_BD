use oficina;

-- idBank, Bname, Bnum_conta, Baddress
insert into bank (Bname, Bnum_conta, Baddress)
		values ('Santander', '91918282', 'rua centro ubatuba SP'),
			   ('Caixa', '01013344', 'rua alvorada recanto SP'),
               ('Nubank', '55443322', 'rua internet matrix');
               
-- select * from bank;
                
-- idPerson, Pname, Paddress, idDriver_license
insert into person (Pname, Lname, Paddress, idDriver_license)
		values ('João', 'Greg','rua jota - vila matilde - Rio de Janeiro - RJ', 'driver1'),
			   ('Leonardo', 'M', 'rua dos games - guarujá - SP', 'driver2'),
               ('Gustavo', 'Pem','rua das esmeraldas - nova york - EUA', 'driver3'),
               ('ISnake', 'Soldier', 'rua da guerra - Lisboa - Portugal', 'driver4');

-- idCompany, Cname, Caddress
insert into company (Cname, Caddress)
		values ('Asterix', 'rua ficticia, 200'),
			   ('Obelix', 'rua dos bosques, 231');

-- idVehicles, Vname, Vmodel, Vyear
insert into vehicles (Vname, Vmodel, Vyear)
		values ('Fusca', 'Volkswagen', '2009'),
			   ('Kombi', 'Volkswagen', '2023'),
			   ('Kawasaki 650', 'Ninja', '2019'),
               ('Nissan', 'Skyline', '1990');

-- idVehicles_registred, type_vehicle, idRVehicles
insert into vehicles_registred (type_vehicle, idRVehicles)
		values  ('Carro', '1'),
                ('Carro', '3'),
                ('Moto', '2'),
                ('Carro','4');

-- idDono, idDbank, idDperson, idDcompany
insert into clients_dono (idDbank, idDperson, idDcompany)
		values  ('1', '2', '1'),
				('3', '1', '1'),
				('2', '3', '2'),
                ('3', '4', '2');

-- idRegistredVehicle, idVOVehicles, idVOficina
insert into vehicle_oficina (idVOVehicles, idVOficina, placa)
		values  ('1', '1', 'XYXY-XYXY'),
				('2', '2', 'ZGZG-ZGZG'),
				('3', '3', 'KLKL-KLKL'),
                ('4', '4', 'TRTR-TRTR');

-- idOficina, idClient, period_repair, idOVehicle
insert into oficina (idClient, period_repair, idOVehicle)
		values  ('3', '10 dias', '1'),
				('2', '20 dias', '2'),
				('1', '15 dias', '3'),
                ('4', '25 dias', '4');

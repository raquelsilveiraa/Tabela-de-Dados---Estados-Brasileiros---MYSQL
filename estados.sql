create database if not exists aulas;

use aulas;


# apaga tudo - estrutura e os dados
drop table estados;



create table estados(
uf                 char(50),
populacao        bigint,
densidade        float,
matriculas_ef    int,
idh                float,
rendimento        int
);

describe estados;
truncate estados;

INSERT INTO estados VALUES
('Acre',894470,4.47,157646,0.6629999999999999,890),
("Alagoas",3351543,112.33,490587,0.631,731),
('Amapá',861773,4.69,136185,0.708,880),
('Amazonas',4207714,2.23,705007,0.674,842),
('Bahia',14930634,24.82,2034711,0.66,913),
('Ceará',9187103,56.76,1198116,0.682,942),
("Distrito Federal",3055149,444.66,377622,0.8240000000000001,2686),
("Espírito Santo",4064052,76.25,502059,0.74,1477),
('Goiás',7113540,17.65,877593,0.735,1306),
('Maranhão',7114598,19.81,1178949,0.639,636),
("Mato Grosso",3526220,3.36,471613,0.725,1403),
("Mato Grosso do Sul",2809394,6.86,404114,0.7290000000000001,1514),
("Minas Gerais",21292666,33.41,2511483,0.731,1358),
('Pará',8690745,6.07,1439788,0.6459999999999999,807),
('Paraíba',4039277,66.7,556248,0.6579999999999999,929),
('Paraná',11516840,52.4,1427218,0.7490000000000001,1621),
('Pernambuco',9616621,89.62,1301930,0.6729999999999999,970),
('Piauí',3281480,12.4,480126,0.6459999999999999,827),
("Rio de Janeiro",17366189,365.23,2003315,0.7609999999999999,1882),
("Rio Grande do Norte",3534165,59.99,467629,0.684,1057),
("Rio Grande do Sul",11422973,37.96,1298736,0.746,1843),
('Rondônia',1796460,6.58,269626,0.69,1136),
('Roraima',631181,2.01,96582,0.7070000000000001,1044),
("Santa Catarina",7252502,65.27,851993,0.774,1769),
("São Paulo",46289333,166.23,5367614,0.7829999999999999,1946),
('Sergipe',2318822,94.36,331297,0.665,980),
('Tocantins',1590248,4.98,246183,0.6990000000000001,1056);

#Ordenação
SELECT uf, FORMAT(populacao, 0) AS 'População', densidade,  
        FORMAT(matriculas_ef,0) AS 'Matrículas',
        FORMAT(idh, 3) AS 'IDH', FORMAT(rendimento, 0) AS 'Rendimento' 
 FROM estados
 WHERE idh >= 0.7 and rendimento > 900
 order by rendimento desc;
 
 delete from estados
 where uf= 'Santa Catarina';
 
 
 

USE eShopPCKomponenty

INSERT INTO dbo.PCKompotent
(
 nazovKomponentu,kodKompomentu,značka,typKomponentu,váha,pocet,suma
)
VALUES
(
    'GeForce GTX 1660',1,'MSI','Grafická karta',1.30, 10,324
),
(
    'GeForce RTX 3070 Ti',2, 'MSI','Grafická karta', 2,23,432
),
(
    'PULSE Radeon RX 6600',3,'AMD','Grafická karta',1.45,29,299
),
(
    'Radeon RX 6900 X', 4, 'AMD', 'Grafická karta', 2.3,2,221
),
(
    'AMD Ryzen 5 5600X', 5, 'AMD', 'Procesor', 0.1,29,238
),
(
    'AMD Ryzen 7 5800X', 6, 'AMD', 'Procesor', 0.1,100,429
),
(
    'Intel Core i7-12700K', 7, 'Intel','Procesor',0.1,120,399
),
(
    'Intel Core i5-10400F', 8, 'Intel','Procesor',0.1,10,299
),
(
   'FURY 8 GB DDR4 3200 MHz',9, 'Kingston', 'RAM', 0.2 ,30,80
),
(
    'Patriot 8 GB DDR3 1600 MHz',10,'Patriot','RAM',0.2,129,60
)
GO
-- '',11,'','',1
INSERT INTO dbo.PCKompotent
(
    nazovKomponentu,kodKompomentu,značka,typKomponentu,váha,pocet,suma
)
VALUES
(
    'ARCTIC Freezer 34 eSports DUO Grey',11,'ACTIC','Chladič na procesor',1,100,14
),
(
    'Noctua NH-U12A chromax. black',12,'Noctua','Chladič na procesor',1,200,23
),
(
    'NOCTUA NH-D15',13,'Noctua','Chladič na procesor',1,100,19
),
(
    'ARCTIC Liquid Freezer II 360',14,'ARCTIC','Vodné chladenie',2,23,59
),
(
    'NOCTUA NF-F12 industrialPPC-3000 PWM',15,'NOCTUA','Ventilátor do PC',1,100,122
),
(
    'NOCTUA NF-A4x20 FLX',16,'NOCTUA','Ventilátor do PC',1,33,129
),
(
    'GIGABYTE P650B - 650W',17,'GIGABYTE','PC zdroj',1,22,119
),
(
    'Seasonic Focus GX 850 Gold',18,'Seasonic','PC zdroj',1,100,159
),
(
    'Corsair HX1200',19,'Corsair','PC zdroj',1,39,226
),
(
    'EVGA 850 GQ Power Supply',20,'EVGA','PC zdroj',1,20,109
),
(
    'Corsair RM850 (2021)',21,'Corsair','PC zdroj',1,39,121
),
(
    'IK Multimedia iRig HD 2',22,'IK','Zvuková karta',1,40,89
),
(
    'MSI MAG B550 TOMAHAWK',23,'MSI','Základná doska',1,100,146
),
(
    'ASUS TUF X570-PLUS GAMING',24,'ASUS','Základná doska',1,20,214
),
(
    'MSI MAG Z690 TOMAHAWK WIFI DDR4',25,'MSI','Základná doska',1,10,303
)

INSERT INTO dbo.PCKompotent
(
 nazovKomponentu,kodKompomentu,značka,typKomponentu,váha,pocet,suma
)
VALUES
(
    'GeForce GTX 1950 7GB',1,'MSI','Grafická karta',1.30, 10,424
)
DELETE FROM PCKompotent WHERE id_komponentu>0

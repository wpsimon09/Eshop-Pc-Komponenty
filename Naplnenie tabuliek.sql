USE eShopPCKomponenty

INSERT INTO dbo.PCKompotent
(
 nazovKomponentu,kodKompomentu,značka,typKomponentu,váha
)
VALUES
(
    'GeForce GTX 1660',001,'MSI','Grafická karta',1.30
),
(
    'GeForce RTX 3070 Ti',002, 'MSI','Grafická karta', 2
),
(
    'PULSE Radeon RX 6600',003,'AMD','Grafická karta',1.45
),
(
    'Radeon RX 6900 X', 004, 'AMD', 'Grafická karta', 2.3
),
(
    'AMD Ryzen 5 5600X', 005, 'AMD', 'Procesor', 0.1
),
(
    'AMD Ryzen 7 5800X', 006, 'AMD', 'Procesor', 0.1
),
(
    'Intel Core i7-12700K', 007, 'Intel','Procesor',0.1
),
(
    'Intel Core i5-10400F', 008, 'Intel','Procesor',0.1
),
(
   'FURY 8 GB DDR4 3200 MHz',008, 'Kingston', 'RAM', 0.2 
),
(
    'Patriot 8 GB DDR3 1600 MHz',009,'Patriot','RAM',0.2
)
GO
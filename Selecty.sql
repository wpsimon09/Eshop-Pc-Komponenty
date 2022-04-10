use eShopPCKomponenty

SELECT nazovKomponentu,značka,pocet,suma from dbo.PCKompotent WHERE typKomponentu ='PC zdroj' order BY suma ASC
SELECT nazovKomponentu,značka,typKomponentu,pocet,suma from dbo.PCKompotent where značka = 'MSI' order by typKomponentu asc
SELECT meno, priezvisko, ulica,mesto, PSC from dbo.Uzivatel WHERE mesto like 'P%' order by mesto asc
go 

CREATE 
VIEW [Uzivatelia a ich objednavky]
as SELECT dbo.Objednvaka.id_objednavky,Uzivatel.meno,Uzivatel.priezvisko from Objednvaka
INNER JOIN Uzivatel on Objednvaka.id_uzivatel = Uzivatel.id_uzivatel
go

CREATE 
VIEW [Objednavky a ich polozky]
as SELECT dbo.Objednvaka.id_objednavky, dbo.PCKompotent.nazovKomponentu, dbo.PCKompotent.typKomponentu from Objednvaka
INNER JOIN PCKompotent on Objednvaka.id_komponentu = PCKompotent.id_komponentu
go

CREATE 
VIEW [Objednavky a ich suma]
as SELECT dbo.Objednvaka.id_objednavky,dbo.PCKompotent.nazovKomponentu, dbo.Objednvaka.Pocet, dbo.PCKompotent.suma from Objednvaka
INNER JOIN PCKompotent on Objednvaka.id_komponentu = PCKompotent.id_komponentu 
go

SELECT *FROM [Uzivatelia a ich objednavky]

SELECT* FROM [Objednavky a ich polozky]

SELECT*FROM [Objednavky a ich suma]
GO

CREATE PROCEDURE UzivateliaSbydliskomVpoprade
as 
SELECT meno,priezvisko,PSC from dbo.Uzivatel
where mesto = 'Poprad'
go  

EXEC UzivateliaSbydliskomVpoprade

go

CREATE PROCEDURE ObjednavkySSumouVäčšiouAko100
AS
SELECT *from [Objednavky a ich suma] where suma > 100 order by suma ASC
GO

EXEC ObjednavkySSumouVäčšiouAko100
go

CREATE TRIGGER ZobrazeniePriInserteAZapisanieDoLogu
ON dbo.PCKompotent
AFTER INSERT
AS
BEGIN
INSERT INTO dbo.ServerLog
(
    text,datum
)
VALUES
( 
    'Insertované hodnoty do tabulky PC komponent',GETDATE()
)
SELECT *FROM dbo.PCKompotent
SELECT *FROM dbo.ServerLog
END
GO

CREATE TRIGGER ZobrazeniePriInserteObjednavkyAZapisanieDoLogu
ON dbo.Objednvaka
AFTER INSERT
AS
BEGIN
INSERT INTO dbo.ServerLog
(
    text,datum
)
VALUES
( 
    'Insertované hodnoty do tabulky Objednavky',GETDATE()
)
SELECT *FROM dbo.Objednvaka
SELECT *FROM dbo.ServerLog
END
GO

 



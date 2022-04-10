CREATE DATABASE eShopPCKomponenty

DROP TABLE SkladovaKarta

USE eShopPCKomponenty

CREATE TABLE PCKompotent
(
    id_komponentu               INTEGER             IDENTITY,
    nazovKomponentu             varchar(100)        not null,
    kodKompomentu               CHAR (4)            not null,
    značka                      VARCHAR(100)        not null,
    typKomponentu               VARCHAR             not null,
    váha                        DECIMAL             not null,
    CONSTRAINT pk_komponentu    PRIMARY KEY(id_komponentu)
)

ALTER TABLE PCKompotent ALTER COLUMN typKomponentu VARCHAR(100) not null
ALTER TABLE PCKompotent ADD pocet int NULL
ALTER TABLE PCKompotent ALTER COLUMN suma INT not NULL

CREATE TABLE Uzivatel
(
    id_uzivatel                 INTEGER             IDENTITY,
    meno                        VARCHAR(50)         not null,
    priezvisko                  VARCHAR(50)         not null,
    ulica                       VARCHAR(50)         not null,
    cisloDomu                   INTEGER             not null,
    mesto                       VARCHAR(50)         not null,
    PSC                         INTEGER             not null,
    email                       VARCHAR(40)         not null,
    TelCislo                    INT                 not null,
    CONSTRAINT pk_uzivatel      PRIMARY KEY(id_uzivatel)
)

CREATE TABLE Objednvaka
(
    id_objednavky               INTEGER             IDENTITY,
    id_komponentu               int                 not null,
    id_uzivatel                 int                 not null,
    id_sklad                    int                 not null,
    suma                        money               not null,

    CONSTRAINT pk_objednavka   PRIMARY KEY (id_objednavky),
    CONSTRAINT fk_komponent    FOREIGN KEY (id_komponentu) REFERENCES PCKompotent(id_komponentu),
    CONSTRAINT fk_uzivatel     FOREIGN KEY (id_uzivatel)   REFERENCES Uzivatel(id_uzivatel),
)

CREATE TABLE ServerLog
(
    id_logu                     INTEGER             IDENTITY,
    text                        VARCHAR(200)        not null,
    datum                       DATE                not null,
    constraint pk_lok PRIMARY KEY  (id_logu)
)

ALTER TABLE Objednvaka alter COLUMN KodKarty VARCHAR(20) null
ALTER TABLE Objednvaka ADD Platba int not null --1 karta || 2 dobierka 
ALTER TABLE Objednvaka ADD CisloKarty int null
ALTER TABLE Objednvaka ADD Platnost CHAR(5) null
ALTER TABLE Objednvaka ADD KodKarty CHAR(3) null
ALTER TABLE Objednvaka ADD Pocet int not null

alter table Objednvaka DROP COLUMN suma

select*from PCKompotent
SELECT*from Uzivatel

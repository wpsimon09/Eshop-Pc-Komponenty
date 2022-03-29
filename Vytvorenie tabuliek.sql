CREATE DATABASE eShopPCKomponenty

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

CREATE TABLE SkladovaKarta
(
    id_karty                    INTEGER             IDENTITY,
    id_komponentu               INTEGER             not null,
    mnozstvo                    INTEGER             not null,
    MernaJednota                VARCHAR(5)          not null,
    SumaNaMernuJednotku         INTEGER             not null,
    constraint pk_karty         PRIMARY KEY (id_karty),
    CONSTRAINT fk_komponentu    FOREIGN KEY(id_komponentu) REFERENCES PCKompotent(id_komponentu)
)


CREATE TABLE Sklad
(
    id_skladu                   INTEGER             IDENTITY,
    id_karty                    INTEGER             not null,
    Ulica                       VARCHAR(40)         not null,
    Cislo                       INTEGER             not null,
    Mesto                       VARCHAR(30)         not null,
    PSC                         INTEGER             not null,
    Kapacita                    int                 not null,
    CONSTRAINT pk_skladu        PRIMARY KEY(id_skladu),
    CONSTRAINT fk_karty         FOREIGN KEY(id_karty) REFERENCES SkladovaKarta(id_karty)
)

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
    CONSTRAINT fk_sklad        FOREIGN KEY (id_sklad) REFERENCES Sklad(id_skladu)
)

ALTER TABLE Objednvaka ADD Platba int not null --1 karta || 2 dobierka 
ALTER TABLE Objednvaka ADD CisloKarty int null
ALTER TABLE Objednvaka ADD Platnost CHAR(5) null
ALTER TABLE Objednvaka ADD KodKarty CHAR(3) null

GO

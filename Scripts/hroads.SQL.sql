CREATE DATABASE SENAI_HROADS_MANHA_20;
GO

USE SENAI_HROADS_MANHA_20;
GO

CREATE TABLE Classe(
	IdClasse INT PRIMARY KEY IDENTITY(1,1),
	NomeClasse VARCHAR(30) NOT NULL UNIQUE
);
GO


CREATE TABLE TipoHabilidade(
	IdTipoHab INT PRIMARY KEY IDENTITY(1,1),
	NomeTipoHab VARCHAR(12) NOT NULL
);
GO

CREATE TABLE Habilidade(
	IdHabilidade INT PRIMARY KEY IDENTITY(1,1),
	IdTipoHab INT ForEIGN KEY REFERENCES TipoHabilidade(IdTipoHab),
	NomeHab VARCHAR(30) NOT NULL UNIQUE
);
GO

CREATE TABLE ClassHab(
	IdClassHab INT PRIMARY KEY IDENTITY(1,1),
	IdClasse INT FOREIGN KEY REFERENCES Classe(IdClasse),
	IdHabilidade INT FOREIGN KEY REFERENCES Habilidade(IdHabilidade)
);

CREATE TABLE Personagem(
	IdPersonagem INT PRIMArY KEY IDENTITY(1,1),
	IdClasse INT FOREIGN KEY REFERENCES Classe(IdClasse),
	Nome VARCHAR(20) NOT NULL,
	MVida TINYINT NOT NULL,
	MMana TINYINT NOT NULL,
	DataAtt DATE NOT NULL,
	DataCriacao DATE NOT NULL
);
GO
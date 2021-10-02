CREATE DATABASE SPMEDICAL
GO

USE SPMEDICAL
GO

CREATE TABLE TIPO_USUARIO(
	idTipoUsuario INT PRIMARY KEY IDENTITY,
	tituloUsuario VARCHAR(30) UNIQUE NOT NULL
);
GO

CREATE TABLE USUARIO(
	idUsuario INT PRIMARY KEY IDENTITY ,
	idTipoUsuario INT FOREIGN KEY REFERENCES TIPO_USUARIO(idTipoUsuario),
	nomeUsuario VARCHAR (55) UNIQUE NOT NULL,
	email VARCHAR (225) UNIQUE NOT NULL,
	senha CHAR (45) NOT NULL
);
GO

CREATE TABLE PACIENTE(
	idPaciente INT PRIMARY KEY IDENTITY,
	idUsuario INT FOREIGN KEY REFERENCES USUARIO(idUsuario),
	dataDeNascimento DATE NOT NULL,
	rg VARCHAR (13) UNIQUE NOT NULL,
	cpf VARCHAR (11) UNIQUE NOT NULL,
	telefone VARCHAR (15) UNIQUE,
	endereco VARCHAR (230) NOT NULL
);
GO


CREATE TABLE CLINICA(
	idClinica INT PRIMARY KEY IDENTITY,
	nomeClinica VARCHAR (25) NOT NULL,
	endereco VARCHAR (75) UNIQUE NOT NULL,
	funcionamento TIME,
	cnpj VARCHAR (25) UNIQUE NOT NULL,
	razaoSocial VARCHAR (50) NOT NULL
)
GO

CREATE TABLE ESPECIALIDADE(
	idEspecialidade INT PRIMARY KEY IDENTITY,
	nomeEspecialidade VARCHAR (50) UNIQUE NOT NULL,
);
GO

CREATE TABLE MEDICO(
	idMedico INT PRIMARY KEY IDENTITY,
	idUsuario INT FOREIGN KEY REFERENCES USUARIO(idUsuario),
	idClinica INT FOREIGN KEY REFERENCES CLINICA(idClinica),
	idEspecialidade INT FOREIGN KEY REFERENCES ESPECIALIDADE(idEspecialidade),
	crm VARCHAR (25) NOT NULL UNIQUE
);
GO

CREATE TABLE SITUACAO(
	idSituacao INT PRIMARY KEY IDENTITY,
	descricaoSituacao VARCHAR (50) NOT NULL,
);
GO

CREATE TABLE CONSULTA(
	idConsulta INT PRIMARY KEY IDENTITY,
	idMedico INT FOREIGN KEY REFERENCES MEDICO(idMedico),
	idUsuario INT FOREIGN KEY REFERENCES USUARIO(idUsuario),
	idSituacao INT FOREIGN KEY REFERENCES SITUACAO(idSituacao),
	dataConsulta DATE NOT NULL,
	horario TIME NOT NULL,
	descricaoConsulta VARCHAR (275)
);
GO


USE SPMEDICAL
GO

INSERT INTO TIPO_USUARIO(tituloUsuario)
VALUES
	('Médico'),
	('Paciente'),
	('Administrador')
GO

INSERT INTO USUARIO(idTipoUsuario, nomeUsuario, email, senha)
VALUES
    (2, 'Tiao', 'tiamo@gmail.com', 'tiao'),
	(2, 'Arlindo', 'lindodemais@gmail.com', 'lindao'),
	(2, 'Felipe', 'felizeape@gmail.com', 'felipinho02'),
	(2, 'Laura', 'laurinha@gmail.com', 'lauralinda1'),
	(2, 'Mião', 'Miao@hotmail.com', 'miauuuu'),
	(1, 'Bruno', 'bruno@gmail.com', 'brunossz'),
	(1, 'Michael Jackson', 'iri@gmail.com', 'auuuuuuuuu'),
	(1, 'Keanu Reeves', 'keninhu@outlook.com', 'umtapanagostosa'),
	(1, 'Lorena Silva', 'lorena@gmail.com', 'lorena123')
GO

INSERT INTO PACIENTE (idUsuario, dataDeNascimento, telefone, rg, cpf, endereco)
VALUES 
    (1, '13/10/1983', '11 3456-7654', '72637420-9', '94839859000', 'Rua Salvador Corrêa 945- Aclimação, São Paulo, 13222-000'),
	(5, '27/08/1975', '11 7656-6377', '28761687-2', '91305348010', 'Rua Paraupava 1235- Belenzinho, São Paulo, 52465-380'),
	(6, '21/03/1972', '11 95436-8769', '34873261-1', '79799299004', 'Rua Coronel Diogo, 945 - Jardim da Gloria, São Paulo, 07964-001'),
	(7, '05/03/2018', '', '54566266-8', '723747432-8', 'Rua Davi Hume, 333- Vila Universal, Barueri - SP, 06407-350')
GO

INSERT INTO CLINICA (nomeClinica, endereco, funcionamento, cnpj, razaoSocial)
VALUES
('Clinica AiToDodoi', 'Rua Paracatu, Parque Imperial 756- São Paulo,SP, 04302021', '', 'XX. XXX. XXX/0001-XX.','cuidar das pessoas')
GO

INSERT INTO ESPECIALIDADE (nomeEspecialidade)
VALUES
	('Acupuntura'),
	('Anestesiologia'),
	('Angiologia'),
	('Cardiologia'),
	('Cirurgia Cardiovascular'),
	('Cirurgia da Mão'),
	('Cirurgia do Aparelho Digestivo'),
	('Cirurgia Geral'),
	('Cirurgia Pediátrica'),
	('Cirurgia Plástica'),
	('Cirurgia Torácica'),
	('Cirurgia Vascular'),
	('Dermatologia'),
	('Radioterapia'),
	('Urologia'),
	('Pediatria'),
	('Psiquiatria')
GO

INSERT INTO MEDICO (idUsuario, idClinica, idEspecialidade, crm)
VALUES
	(6, 1, 4,'78987-SP'),
	(7, 1, 13,'13123-SP'),
	(8, 1, 17,'93460-SP'),
	(9, 1, 1, '24839-SP')
GO

INSERT INTO SITUACAO (descricaoSituacao)
VALUES
	('Realizada'),
	('Agendada'),
	('Cancelada')
GO

INSERT INTO CONSULTA (idMedico, idUsuario, idSituacao, dataConsulta, horario, descricaoConsulta)
VALUES
	(3, 4, 1, '20/01/2020', '17:00', ''),
	(2, 1, 3, '06/01/2020', '14:00', ''),
	(2, 5, 1, '04/02/2020', '11:00', ''),
	(2, 4, 1, '26/02/2004', '09:00', ''),
	(1, 3, 3, '07/02/2022', '13:00', ''),
	(3, 2, 2, '08/03/2020', '15:00', ''),
	(1, 1, 2, '09/07/2022', '08:00', '')
GO

SELECT * FROM CONSULTA
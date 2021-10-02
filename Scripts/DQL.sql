USE SPMEDICAL
GO

SELECT * FROM USUARIO

SELECT * FROM PACIENTE

SELECT * FROM MEDICO

SELECT * FROM CONSULTA

SELECT * FROM ESPECIALIDADE


SELECT COUNT(idMedico)
FROM MEDICO
WHERE idEspecialidade = 4
GO



CREATE PROCEDURE P_Idade
AS  
SELECT  nomeUsuario, DATEDIFF(YEAR, (dataDeNascimento), GETDATE()) AS 'Idade'
FROM PACIENTE
INNER JOIN USUARIO
ON paciente.idUsuario = usuario.idUsuario
GO

EXEC P_Idade;
GO

SELECT  nomeUsuario 'Nome', FORMAT (dataDeNascimento, 'dd-MM-yyyy') 'Data Nascimento' FROM PACIENTE
INNER JOIN USUARIO
ON usuario.idUsuario = paciente.idUsuario

SELECT COUNT(idUsuario) 'Quantidade de usuários' FROM usuario;
GO
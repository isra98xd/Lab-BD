--JOINS--

SELECT idDisp, telefono, nomb_emp
FROM Telefonos 
INNER JOIN Empleadoos on Telefonos.idPer = Empleadoos.idPer

SELECT nombreDisp,telefono
FROM TipoTelefonos 
INNER JOIN Telefonos on TipoTelefonos.idDisp = Telefonos.idDisp

SELECT nombre_cli, rfc
FROM Clientes 
LEFT JOIN RFC on Clientes.idPer = RFC.idPer

SELECT nom_prov, rfc
FROM Proveedores 
LEFT JOIN RFC on Proveedores.idPer = RFC.idPer

SELECT idProv,nom_prov,telefono
FROM Proveedores
RIGHT JOIN Telefonos on Proveedores.idPer = Telefonos.idPer

SELECT nombre_cli,telefono
FROM Clientes
RIGHT JOIN Telefonos on Clientes.idPer = Telefonos.idPer

SELECT idProv,nom_prov,calle,colonia,pais
FROM Proveedores
FULL JOIN Direccion on Proveedores.idPer = Direccion.idPer

SELECT nomb_emp, pais
FROM Empleadoos
FULL JOIN Direccion on Empleadoos.idPer = Direccion.idPer

--SELECT INTO--
SELECT * into PersonaBackup1 from Personas

--SUBCONSULTA
SELECT * From Empleadoos where sueldo_emp = (select sueldo_emp = 0 )


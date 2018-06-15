--5 VISTAAS--
CREATE VIEW TELEFONOS_EMPLEADOOS AS 
SELECT telefono, nomb_emp 
FROM Telefonos
 INNER JOIN Empleadoos on Telefonos.idPer = Empleadoos.idPer

CREATE VIEW Direccion_EMPLEADOOS AS 
SELECT calle,colonia,pais nomb_emp 
FROM Direccion
INNER JOIN Empleadoos on Direccion.idPer = Empleadoos.idPer

 
CREATE CLIENTES_INFO AS 
SELECT id_cli,nombre_cli, rfc, calle
FROM Clientes 
LEFT JOIN RFC on Clientes.idPer = RFC.idPer
LEFT JOIN Direccion on Clientes.idPer = Direccion.idPer

CREATE CLIENTES_TELEFONOS AS 
SELECT id_cli,nombre_cli,telefono
FROM Clientes 
LEFT JOIN Telefonos on Clientes.idPer = Telefonos.idPer

CREATE VIEW INFO_PROOOV AS
SELECT idProv,nom_prov,telefono,correo, calle, colonia, pais
FROM Proveedores
RIGHT JOIN Telefonos on Proveedores.idPer = Telefonos.idPer
RIGHT JOIN Direccion on Proveedores.idPer = Direccion.idPer



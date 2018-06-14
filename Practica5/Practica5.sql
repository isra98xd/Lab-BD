--WHERE--

select id_cli,idRfc from clientes
where nombre_cli = 'omar'

select nom_prov, id_direccion from proveedores
where nom_prov = 'ramon'

select id_cli,idRfc from clientes
where apellido1_cli = 'rodriguez'

select id_cli,idRfc from clientes
where apellido2_cli = 'Briones'

select id_cli,idRfc from clientes
where id_cli = 4

--TOP--

select top 2 id_direccion, idTel from Proveedores

select top 4 id_cli,idRfc from clientes

select top 6 id_direccion from Empleadoos

select top 8 idPer from personas

select top 10 idProv, nom_prov from proveedores

--HAVING--

select idProv from Proveedores
group by idProv 
having idProv > 3

select id_cli from clientes
group by id_cli
having id_cli < 6

select id_emp from Empleadoos
group by id_emp
having id_emp > 9

select idPer from personas 
group by idPer
having idPer < 12

select id_direccion from proveedores
group by id_direccion
having id_direccion > 15


--GROUP BY--

select nom_prov, id_direccion from Proveedores
group by nom_prov ;

select id_cli,idRfc from clientes
group by id_cli;

select id_emp, sexo from Empleadoos
group by id_emp;

select idPer, idTipoPersona from personas 
group by idTipoPersona;

select idProv, nom_prov from proveedores
group by idProv;
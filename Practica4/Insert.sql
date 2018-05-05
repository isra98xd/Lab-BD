--INSERT TIPO TELEFONOS--
INSERT INTO TipoTelefonos(idDisp,nombreDisp)
values(NEWID(),'Telefono Fijo')

INSERT INTO TipoTelefonos(idDisp,nombreDisp)
values(NEWID(),'Celular')

INSERT INTO TipoTelefonos(idDisp,nombreDisp)
values(NEWID(),'Fax')

--INSERT TIposPersona--
INSERT INTO TIposPersona(idTipoPersona,TipoPersona)
VALUES (NEWID(),'Cliente')

INSERT INTO TIposPersona(idTipoPersona,TipoPersona)
VALUES (NEWID(),'Provedor')

INSERT INTO TIposPersona(idTipoPersona,TipoPersona)
VALUES (NEWID(),'Empleado')

--INSERT PERSONAS--
INSERT INTO Personas(idPer,idTipoPersona)
values(NEWID(),'BE2D89AD-1CD2-4DE9-ABC7-4B00E773C692')
INSERT INTO Personas(idPer,idTipoPersona)
values(NEWID(),'BE2D89AD-1CD2-4DE9-ABC7-4B00E773C692')
INSERT INTO Personas(idPer,idTipoPersona)
values(NEWID(),'BE2D89AD-1CD2-4DE9-ABC7-4B00E773C692')
INSERT INTO Personas(idPer,idTipoPersona)
values(NEWID(),'BE2D89AD-1CD2-4DE9-ABC7-4B00E773C692')
INSERT INTO Personas(idPer,idTipoPersona)
values(NEWID(),'BE2D89AD-1CD2-4DE9-ABC7-4B00E773C692')
INSERT INTO Personas(idPer,idTipoPersona)
values(NEWID(),'BE2D89AD-1CD2-4DE9-ABC7-4B00E773C692')
INSERT INTO Personas(idPer,idTipoPersona)
values(NEWID(),'BE2D89AD-1CD2-4DE9-ABC7-4B00E773C692')
INSERT INTO Personas(idPer,idTipoPersona)
values(NEWID(),'BE2D89AD-1CD2-4DE9-ABC7-4B00E773C692')
INSERT INTO Personas(idPer,idTipoPersona)
values(NEWID(),'BE2D89AD-1CD2-4DE9-ABC7-4B00E773C692')
INSERT INTO Personas(idPer,idTipoPersona)
values(NEWID(),'BE2D89AD-1CD2-4DE9-ABC7-4B00E773C692')


--INSERT DE RFC--
INSERT INTO RFC(idRfc,idPer,rfc)
values(NEWID(),'B589BFB6-930B-4251-BFEE-028C52B63AE3','REWS1242')

INSERT INTO RFC(idRfc,idPer,rfc)
values(NEWID(),'39A3870A-78EF-45CD-BD3E-05B2336BBB57','MZ4345')

INSERT INTO RFC(idRfc,idPer,rfc)
values(NEWID(),'D3E3307F-9791-4A1E-A94C-19A4094AA7B6','QEE427')

INSERT INTO RFC(idRfc,idPer,rfc)
values(NEWID(),'9D32218B-D8D3-4E30-89D4-1E8E5FA0BB5E','MTY532')

INSERT INTO RFC(idRfc,idPer,rfc)
values(NEWID(),'AB798184-D9AD-40A0-8F99-2421EA43631B','WERS1442')

INSERT INTO RFC(idRfc,idPer,rfc)
values(NEWID(),'727AC4FF-48EE-43A8-9594-4D011A3947C5','QWER432')

INSERT INTO RFC(idRfc,idPer,rfc)
values(NEWID(),'D40A9F0A-201C-4838-84AA-53DA5E74F63A','MFGB6545')

INSERT INTO RFC(idRfc,idPer,rfc)
values(NEWID(),'A9570A25-D619-4FE4-9D58-7F65C07C9A8E','JHBG654')

INSERT INTO RFC(idRfc,idPer,rfc)
values(NEWID(),'140AF268-7825-4361-A53E-BDFE33D1A1C6','MJNBG7654')

INSERT INTO RFC(idRfc,idPer,rfc)
values(NEWID(),'D41A5B95-CD39-462A-A86D-FE23BACF499B','ÑLOKJ543')

--INSERT DIRECCIONES--
INSERT INTO Direccion(id_direccion,idPer,pais,estado,ciudad,colonia,calle,numInterior,numExterior)
values(NEWID(),'B589BFB6-930B-4251-BFEE-028C52B63AE3','Mexico','Nuevo Leon','Monterrey','Mirador','Del adoquin','123','546')

INSERT INTO Direccion(id_direccion,idPer,pais,estado,ciudad,colonia,calle,numInterior,numExterior)
values(NEWID(),'140AF268-7825-4361-A53E-BDFE33D1A1C6','Mexico','Nuevo Leon','Monterrey','Balcones','Portes Gil','098','8765')

INSERT INTO Direccion(id_direccion,idPer,pais,estado,ciudad,colonia,calle,numInterior,numExterior)
values(NEWID(),'D41A5B95-CD39-462A-A86D-FE23BACF499B','Mexico','Nuevo Leon','Monterrey','Independencia','Mario benedeti','546','46')

INSERT INTO Direccion(id_direccion,idPer,pais,estado,ciudad,colonia,calle,numInterior,numExterior)
values(NEWID(),'39A3870A-78EF-45CD-BD3E-05B2336BBB57','Mexico','Nuevo Leon','Monterrey','Del Sol','Soledad','6757','56')

INSERT INTO Direccion(id_direccion,idPer,pais,estado,ciudad,colonia,calle,numInterior,numExterior)
values(NEWID(),'D3E3307F-9791-4A1E-A94C-19A4094AA7B6','Mexico','Nuevo Leon','Monterrey','Emiliano Zapata','Atalaya','645','345')

INSERT INTO Direccion(id_direccion,idPer,pais,estado,ciudad,colonia,calle,numInterior,numExterior)
values(NEWID(),'9D32218B-D8D3-4E30-89D4-1E8E5FA0BB5E','Mexico','Nuevo Leon','Monterrey','Mirador','Benedeti','456','345')

INSERT INTO Direccion(id_direccion,idPer,pais,estado,ciudad,colonia,calle,numInterior,numExterior)
values(NEWID(),'AB798184-D9AD-40A0-8F99-2421EA43631B','Mexico','Nuevo Leon','Monterrey','Balcones','anahuac','234','0789')

INSERT INTO Direccion(id_direccion,idPer,pais,estado,ciudad,colonia,calle,numInterior,numExterior)
values(NEWID(),'727AC4FF-48EE-43A8-9594-4D011A3947C5','Mexico','Nuevo Leon','Monterrey','Independencia','acueducto','354','234')

INSERT INTO Direccion(id_direccion,idPer,pais,estado,ciudad,colonia,calle,numInterior,numExterior)
values(NEWID(),'D40A9F0A-201C-4838-84AA-53DA5E74F63A','Mexico','Nuevo Leon','Monterrey','Del Sol','Sendero','654','234')

INSERT INTO Direccion(id_direccion,idPer,pais,estado,ciudad,colonia,calle,numInterior,numExterior)
values(NEWID(),'A9570A25-D619-4FE4-9D58-7F65C07C9A8E','Mexico','Nuevo Leon','Monterrey','Emiliano Zapata','Aurora','453','0879')


INSERT INTO Clientes(id_cli,nombre_cli,apellido1_cli,apellido2_cli,id_direccion,idPer,idTel,idRfc)
values(NEWID(),'MARCOS','ALATORRE','RODRIGUEZ','5FBE08EA-AE58-42D8-8386-29AFA084C0CF',NEWID(),NEWID(),'DCA7FEF4-2622-4D84-9E42-03EABF4F781A')

INSERT INTO Clientes(id_cli,nombre_cli,apellido1_cli,apellido2_cli,id_direccion,idPer,idTel,idRfc)
values(NEWID(),'GABRIEL','ALATORRE','RODRIGUEZ','62202373-E915-4B30-86C4-4448402DD505',NEWID(),NEWID(),'7B03B497-4AB5-4FEF-9F1B-05C9C03F2E67')

INSERT INTO Clientes(id_cli,nombre_cli,apellido1_cli,apellido2_cli,id_direccion,idPer,idTel,idRfc)
values(NEWID(),'ISRAEL','ALATORRE','RODRIGUEZ','0532BDB2-90D8-488E-9BC6-58079E689020',NEWID(),NEWID(),'0662467A-DFC3-4EC9-9B63-29EA4DADE056')

INSERT INTO Clientes(id_cli,nombre_cli,apellido1_cli,apellido2_cli,id_direccion,idPer,idTel,idRfc)
values(NEWID(),'LEONEL','ALATORRE','RODRIGUEZ','14681A9F-8718-4031-98E7-5FFBD92D7956',NEWID(),NEWID(),'0BEB907E-0EF0-451C-B251-5B9EFA43E765')

INSERT INTO Clientes(id_cli,nombre_cli,apellido1_cli,apellido2_cli,id_direccion,idPer,idTel,idRfc)
values(NEWID(),'MIGUEL','ALATORRE','RODRIGUEZ','11BA125E-CD0C-4224-AB93-69958E8316F4',NEWID(),NEWID(),'22F6E34B-14BE-4C7A-AB76-75755179DB80')

INSERT INTO Telefonos(idTel,idDisp,telefono)
values(NEWID(),'14947840-96DD-4987-8945-7A4DD13E5885','65765456')
INSERT INTO Telefonos(idTel,idDisp,telefono)
values(NEWID(),'14947840-96DD-4987-8945-7A4DD13E5885','9878998')
INSERT INTO Telefonos(idTel,idDisp,telefono)
values(NEWID(),'14947840-96DD-4987-8945-7A4DD13E5885','575645')
INSERT INTO Telefonos(idTel,idDisp,telefono)
values(NEWID(),'14947840-96DD-4987-8945-7A4DD13E5885','12333256')
INSERT INTO Telefonos(idTel,idDisp,telefono)
values(NEWID(),'14947840-96DD-4987-8945-7A4DD13E5885','87656546')

INSERT INTO Telefonos(idTel,idDisp,telefono)
values(NEWID(),'14947840-96DD-4987-8945-7A4DD13E5885','765434567')
INSERT INTO Telefonos(idTel,idDisp,telefono)
values(NEWID(),'14947840-96DD-4987-8945-7A4DD13E5885','65434567')
INSERT INTO Telefonos(idTel,idDisp,telefono)
values(NEWID(),'14947840-96DD-4987-8945-7A4DD13E5885','87654567')
INSERT INTO Telefonos(idTel,idDisp,telefono)
values(NEWID(),'14947840-96DD-4987-8945-7A4DD13E5885','34565456')
INSERT INTO Telefonos(idTel,idDisp,telefono)
values(NEWID(),'14947840-96DD-4987-8945-7A4DD13E5885','234567654')
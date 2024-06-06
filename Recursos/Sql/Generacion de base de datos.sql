
CREATE TABLE Almacenes
( 
	Almacen_ID           integer IDENTITY ( 1,1 ) ,
	Carga_ID             integer  NOT NULL ,
	Despacho_ID          integer  NOT NULL ,
	Seccion_ID           integer  NULL 
)
go



ALTER TABLE Almacenes
	ADD CONSTRAINT XPKAlmacenes PRIMARY KEY  CLUSTERED (Almacen_ID ASC)
go



CREATE TABLE Asignaciones
( 
	Asignacion_ID        integer IDENTITY ( 1,1 ) ,
	Nombre_de_Desginacion varchar(40)  NOT NULL ,
	Nivel_de_Acceso      numeric(1)  NOT NULL 
)
go



ALTER TABLE Asignaciones
	ADD CONSTRAINT XPKAsignaciones PRIMARY KEY  CLUSTERED (Asignacion_ID ASC)
go



CREATE TABLE Banderas
( 
	Bandera_ID           integer IDENTITY ( 1,1 ) ,
	Designacion_Bandera  varchar(30)  NOT NULL 
)
go



ALTER TABLE Banderas
	ADD CONSTRAINT XPKBander PRIMARY KEY  CLUSTERED (Bandera_ID ASC)
go



CREATE TABLE Bitacoras
( 
	Bitacora_ID          integer IDENTITY ( 1,1 ) ,
	Fecha_de_entrada     datetime  NOT NULL ,
	Nota                 varchar(200)  NOT NULL ,
	Ciudades_ID          integer  NOT NULL 
)
go



ALTER TABLE Bitacoras
	ADD CONSTRAINT XPKBitacoras PRIMARY KEY  CLUSTERED (Bitacora_ID ASC)
go



CREATE TABLE Buques
( 
	Buque_ID             integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	Contenedor_ID        integer  NOT NULL ,
	Carga_ID             integer  NOT NULL ,
	Nombre               varchar(20)  NOT NULL ,
	Ciudades_destino     integer  NULL ,
	Ciudad_Origen        integer  NOT NULL ,
	Inspeccion_Ingreso   integer  NULL ,
	OMI_ID               char(18)  NULL ,
	Bandera_ID           integer  NULL ,
	Solicitud_Atraco     integer  NULL 
)
go



ALTER TABLE Buques
	ADD CONSTRAINT XPKBuques PRIMARY KEY  CLUSTERED (Buque_ID ASC)
go



CREATE TABLE Cargas
( 
	Carga_ID             integer IDENTITY ( 1,1 ) ,
	Peso                 decimal(2)  NOT NULL ,
	Descripcion          varchar(80)  NOT NULL ,
	Empresa_ID           integer  NULL ,
	Procedencia          integer  NULL 
)
go



ALTER TABLE Cargas
	ADD CONSTRAINT XPKCargas PRIMARY KEY  CLUSTERED (Carga_ID ASC)
go



CREATE TABLE Cargos_Imputados
( 
	Delitos_ID           integer IDENTITY ( 1,1 ) ,
	Lista_Cargos         varchar(200)  NOT NULL ,
	Fecha_Emision_Detencion datetime  NOT NULL 
)
go



ALTER TABLE Cargos_Imputados
	ADD CONSTRAINT XPKCargos_Imputados PRIMARY KEY  CLUSTERED (Delitos_ID ASC)
go



CREATE TABLE Certificado_Arqueo
( 
	Arqueo_ID            integer IDENTITY ( 1,1 ) ,
	Tamaño               decimal(2)  NOT NULL ,
	Tonelaje             decimal(2)  NOT NULL ,
	Capacidad_Carga      decimal(2)  NOT NULL 
)
go



ALTER TABLE Certificado_Arqueo
	ADD CONSTRAINT XPKCertificado_Arqueo PRIMARY KEY  CLUSTERED (Arqueo_ID ASC)
go



CREATE TABLE Choferes
( 
	Chofer_ID            integer IDENTITY ( 1,1 ) ,
	Nombre               varchar(20)  NOT NULL ,
	Edad                 numeric(2)  NOT NULL ,
	Identificacion       varchar(20)  NOT NULL 
)
go



ALTER TABLE Choferes
	ADD CONSTRAINT XPKChoferes PRIMARY KEY  CLUSTERED (Chofer_ID ASC)
go



CREATE TABLE Contenedores
( 
	Contenedor_ID        integer IDENTITY ( 1,1 ) ,
	Peso                 decimal(2)  NOT NULL ,
	Descripcion          varchar(80)  NOT NULL ,
	Empresa_ID           integer  NULL ,
	Procedencia          integer  NULL 
)
go



ALTER TABLE Contenedores
	ADD CONSTRAINT XPKContenedores PRIMARY KEY  CLUSTERED (Contenedor_ID ASC)
go



CREATE TABLE Cuidades
( 
	Ciudades_ID          integer IDENTITY ( 1,1 ) ,
	Nombre_Ciudad        varchar(20)  NOT NULL ,
	Pais_ID              integer  NOT NULL 
)
go



ALTER TABLE Cuidades
	ADD CONSTRAINT XPKCuidades PRIMARY KEY  CLUSTERED (Ciudades_ID ASC)
go



CREATE TABLE Datos_Personas
( 
	Datos_ID             integer IDENTITY ( 1,1 ) ,
	Fecha_de_Nacimineto  datetime  NOT NULL ,
	Nombre_Apellidos     char(18)  NULL ,
	Pais_ID              integer  NULL ,
	Equipaje_ID          integer  NULL ,
	Edad_Campo_Calculado numeric(2)  NOT NULL 
)
go



ALTER TABLE Datos_Personas
	ADD CONSTRAINT XPKDatos_Personas PRIMARY KEY  CLUSTERED (Datos_ID ASC)
go



CREATE TABLE Efectivos_de_Orden
( 
	Agente_ID            integer IDENTITY ( 1,1 ) ,
	Identificacion_Policial char(18)  NULL ,
	Datos_ID             integer  NULL 
)
go



ALTER TABLE Efectivos_de_Orden
	ADD CONSTRAINT XPKEfectivos_de_Orden PRIMARY KEY  CLUSTERED (Agente_ID ASC)
go



CREATE TABLE Empresas
( 
	Empresa_ID           integer IDENTITY ( 1,1 ) ,
	Nombre_Empresa       varchar(20)  NOT NULL ,
	Rubro_Empresa_ID     integer  NOT NULL 
)
go



ALTER TABLE Empresas
	ADD CONSTRAINT XPKEmpresas PRIMARY KEY  CLUSTERED (Empresa_ID ASC)
go



CREATE TABLE Equipajes
( 
	Equipaje_ID          integer IDENTITY ( 1,1 ) ,
	Descripcion          varchar(20)  NOT NULL ,
	Peso                 decimal(2)  NOT NULL 
)
go



ALTER TABLE Equipajes
	ADD CONSTRAINT XPKEquipajes PRIMARY KEY  CLUSTERED (Equipaje_ID ASC)
go



CREATE TABLE Identificacion_OMI
( 
	OMI_ID               char(18)  NOT NULL ,
	Arqueo_ID            integer  NOT NULL 
)
go



ALTER TABLE Identificacion_OMI
	ADD CONSTRAINT XPKIdentificacion_OMI PRIMARY KEY  CLUSTERED (OMI_ID ASC)
go



CREATE TABLE Inspecciones
( 
	Inspeccion_ID        integer IDENTITY ( 1,1 ) ,
	Fecha_y_hora         datetime  NOT NULL ,
	Resultados           varchar(80)  NOT NULL ,
	Requiza_ID           integer  NULL ,
	Tipo_Inspec_ID       integer  NOT NULL ,
	Inspector_ID         integer  NOT NULL ,
	Agente_ID            integer  NOT NULL 
)
go



ALTER TABLE Inspecciones
	ADD CONSTRAINT XPKInspecciones_de_Ingreso PRIMARY KEY  CLUSTERED (Inspeccion_ID ASC)
go



CREATE TABLE Inspectores
( 
	Inspector_ID         integer IDENTITY ( 1,1 ) ,
	Datos_ID             integer  NOT NULL ,
	Identificacion_Fiscal varchar(20)  NOT NULL 
)
go



ALTER TABLE Inspectores
	ADD CONSTRAINT XPKInspectores PRIMARY KEY  CLUSTERED (Inspector_ID ASC)
go



CREATE TABLE Modelos_Vehiculo
( 
	Modelo_ID            integer IDENTITY ( 1,1 ) ,
	Denominacion_Modelo  varchar(20)  NOT NULL 
)
go



ALTER TABLE Modelos_Vehiculo
	ADD CONSTRAINT XPKModelos_ PRIMARY KEY  CLUSTERED (Modelo_ID ASC)
go



CREATE TABLE Muelle
( 
	Muelle_ID            integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	Nombre               varchar(20)  NOT NULL 
)
go



ALTER TABLE Muelle
	ADD CONSTRAINT XPKPuertos PRIMARY KEY  CLUSTERED (Muelle_ID ASC)
go



CREATE TABLE Nacionalidad
( 
	Duracion_de_estadia  varchar(20)  NULL ,
	Pasaporte            varbinary  NULL ,
	Pais_ID              integer  NOT NULL ,
	Ciudades_ID          integer  NOT NULL 
)
go



ALTER TABLE Nacionalidad
	ADD CONSTRAINT XPKNacionalidad PRIMARY KEY  CLUSTERED (Pais_ID ASC)
go



CREATE TABLE Operacion_Despachos
( 
	Despacho_ID          integer IDENTITY ( 1,1 ) ,
	Terminal_Salida      integer  NOT NULL ,
	Terminal_Ingreso     integer  NULL ,
	Identifiacion        char(18)  NULL ,
	Vehiculo_ID          integer  NULL ,
	Inspeccion_Salida    integer  NULL 
)
go



ALTER TABLE Operacion_Despachos
	ADD CONSTRAINT XPKDespachos PRIMARY KEY  CLUSTERED (Despacho_ID ASC)
go



CREATE TABLE Operaciones_Muelle
( 
	Atraco_ID            integer IDENTITY ( 1,1 ) ,
	Muelle_ID            integer  NOT NULL ,
	Buque_ID             integer  NOT NULL ,
	Descripcion          varchar(80)  NOT NULL ,
	Fecha_y_hora         datetime  NOT NULL ,
	Solicitud_Salida     integer  NULL 
)
go



ALTER TABLE Operaciones_Muelle
	ADD CONSTRAINT XPKOperaciones PRIMARY KEY  CLUSTERED (Atraco_ID ASC,Muelle_ID ASC,Buque_ID ASC)
go



CREATE TABLE Pais
( 
	Pais_ID              integer IDENTITY ( 1,1 ) ,
	Nombre_Pais          varchar(20)  NOT NULL 
)
go



ALTER TABLE Pais
	ADD CONSTRAINT XPKPais PRIMARY KEY  CLUSTERED (Pais_ID ASC)
go



CREATE TABLE Pasajeros
( 
	Identificacion_Pasajero integer IDENTITY ( 1,1 ) ,
	Datos_ID             integer  NOT NULL 
)
go



ALTER TABLE Pasajeros
	ADD CONSTRAINT XPKPasajeros PRIMARY KEY  CLUSTERED (Identificacion_Pasajero ASC)
go



CREATE TABLE Patio_de_Contenedores
( 
	Patio_ID             integer IDENTITY ( 1,1 ) ,
	Contenedor_ID        integer  NOT NULL ,
	Despacho_ID          integer  NOT NULL ,
	Seccion_ID           integer  NULL 
)
go



ALTER TABLE Patio_de_Contenedores
	ADD CONSTRAINT XPKPatio_de_Contenedores PRIMARY KEY  CLUSTERED (Patio_ID ASC)
go



CREATE TABLE Personas_Requizadas
( 
	Requisitoradios_ID   integer IDENTITY ( 1,1 ) ,
	Descripcion_Corporal varchar(20)  NOT NULL ,
	Datos_ID             integer  NOT NULL ,
	Delitos_ID           integer  NOT NULL 
)
go



ALTER TABLE Personas_Requizadas
	ADD CONSTRAINT XPKPersonas_Requizadas PRIMARY KEY  CLUSTERED (Requisitoradios_ID ASC)
go



CREATE TABLE Requizados
( 
	Requiza_ID           integer IDENTITY ( 1,1 ) ,
	Objetos              varchar(120)  NOT NULL ,
	Requisitoradios_ID   integer  NULL 
)
go



ALTER TABLE Requizados
	ADD CONSTRAINT XPKRequizados PRIMARY KEY  CLUSTERED (Requiza_ID ASC)
go



CREATE TABLE Rubros_Empresas
( 
	Rubro_Empresa_ID     integer IDENTITY ( 1,1 ) ,
	Designacion_Rubro    varchar(30)  NOT NULL 
)
go



ALTER TABLE Rubros_Empresas
	ADD CONSTRAINT XPKRubros_Empresas PRIMARY KEY  CLUSTERED (Rubro_Empresa_ID ASC)
go



CREATE TABLE Secciones
( 
	Seccion_ID           integer IDENTITY ( 1,1 ) ,
	Numeracion_Seccion   varchar(4)  NOT NULL 
)
go



ALTER TABLE Secciones
	ADD CONSTRAINT XPKSecciones PRIMARY KEY  CLUSTERED (Seccion_ID ASC)
go



CREATE TABLE Solicitudes
( 
	Solicitud_ID         integer IDENTITY ( 1,1 ) ,
	Hora_Primer_Contacto datetime  NULL ,
	Estado_Aprobacion    varbinary  NOT NULL 
)
go



ALTER TABLE Solicitudes
	ADD CONSTRAINT XPKSolicitudes PRIMARY KEY  CLUSTERED (Solicitud_ID ASC)
go



CREATE TABLE Terminales
( 
	Terminal_ID          integer IDENTITY ( 1,1 ) ,
	Identificacion       varchar(20)  NOT NULL 
)
go



ALTER TABLE Terminales
	ADD CONSTRAINT XPKTerminales PRIMARY KEY  CLUSTERED (Terminal_ID ASC)
go



CREATE TABLE Tipo_de_Inspeccion
( 
	Tipo_Inspec_ID       integer IDENTITY ( 1,1 ) ,
	Designacion_Tipo     varchar(20)  NOT NULL 
)
go



ALTER TABLE Tipo_de_Inspeccion
	ADD CONSTRAINT XPKTipo_de_Inspeccion PRIMARY KEY  CLUSTERED (Tipo_Inspec_ID ASC)
go



CREATE TABLE Tripulacion
( 
	Asignacion_ID        integer  NOT NULL ,
	Identificacion_Tripulante integer IDENTITY ( 1,1 ) ,
	Datos_ID             integer  NOT NULL ,
	Bitacora_ID          integer  NULL 
)
go



ALTER TABLE Tripulacion
	ADD CONSTRAINT XPKTripulacion PRIMARY KEY  CLUSTERED (Identificacion_Tripulante ASC)
go



CREATE TABLE Vehiculos
( 
	Vehiculo_ID          integer IDENTITY ( 1,1 ) ,
	Capacidad            decimal(2)  NOT NULL ,
	Matricula            varchar(20)  NOT NULL ,
	Chofer_ID            integer  NULL ,
	Modelo_ID            integer  NULL ,
	Destino_Vehiculo     integer  NULL 
)
go



ALTER TABLE Vehiculos
	ADD CONSTRAINT XPKVehiculos PRIMARY KEY  CLUSTERED (Vehiculo_ID ASC)
go




ALTER TABLE Almacenes
	ADD CONSTRAINT R_20 FOREIGN KEY (Carga_ID) REFERENCES Cargas(Carga_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Almacenes
	ADD CONSTRAINT R_22 FOREIGN KEY (Despacho_ID) REFERENCES Operacion_Despachos(Despacho_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Almacenes
	ADD CONSTRAINT R_91 FOREIGN KEY (Seccion_ID) REFERENCES Secciones(Seccion_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Bitacoras
	ADD CONSTRAINT R_68 FOREIGN KEY (Ciudades_ID) REFERENCES Cuidades(Ciudades_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Buques
	ADD CONSTRAINT R_9 FOREIGN KEY (Contenedor_ID) REFERENCES Contenedores(Contenedor_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Buques
	ADD CONSTRAINT R_10 FOREIGN KEY (Carga_ID) REFERENCES Cargas(Carga_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Buques
	ADD CONSTRAINT R_35 FOREIGN KEY (Ciudades_destino) REFERENCES Cuidades(Ciudades_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Buques
	ADD CONSTRAINT R_36 FOREIGN KEY (Ciudad_Origen) REFERENCES Cuidades(Ciudades_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Buques
	ADD CONSTRAINT R_70 FOREIGN KEY (Inspeccion_Ingreso) REFERENCES Inspecciones(Inspeccion_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Buques
	ADD CONSTRAINT R_78 FOREIGN KEY (OMI_ID) REFERENCES Identificacion_OMI(OMI_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Buques
	ADD CONSTRAINT R_79 FOREIGN KEY (Bandera_ID) REFERENCES Banderas(Bandera_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Buques
	ADD CONSTRAINT R_81 FOREIGN KEY (Solicitud_Atraco) REFERENCES Solicitudes(Solicitud_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Cargas
	ADD CONSTRAINT R_74 FOREIGN KEY (Empresa_ID) REFERENCES Empresas(Empresa_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Cargas
	ADD CONSTRAINT R_75 FOREIGN KEY (Procedencia) REFERENCES Cuidades(Ciudades_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Contenedores
	ADD CONSTRAINT R_73 FOREIGN KEY (Empresa_ID) REFERENCES Empresas(Empresa_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Contenedores
	ADD CONSTRAINT R_76 FOREIGN KEY (Procedencia) REFERENCES Cuidades(Ciudades_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Cuidades
	ADD CONSTRAINT R_37 FOREIGN KEY (Pais_ID) REFERENCES Pais(Pais_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Datos_Personas
	ADD CONSTRAINT R_54 FOREIGN KEY (Pais_ID) REFERENCES Nacionalidad(Pais_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Datos_Personas
	ADD CONSTRAINT R_55 FOREIGN KEY (Equipaje_ID) REFERENCES Equipajes(Equipaje_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Efectivos_de_Orden
	ADD CONSTRAINT R_61 FOREIGN KEY (Datos_ID) REFERENCES Datos_Personas(Datos_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Empresas
	ADD CONSTRAINT R_72 FOREIGN KEY (Rubro_Empresa_ID) REFERENCES Rubros_Empresas(Rubro_Empresa_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Identificacion_OMI
	ADD CONSTRAINT R_77 FOREIGN KEY (Arqueo_ID) REFERENCES Certificado_Arqueo(Arqueo_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Inspecciones
	ADD CONSTRAINT R_27 FOREIGN KEY (Requiza_ID) REFERENCES Requizados(Requiza_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Inspecciones
	ADD CONSTRAINT R_45 FOREIGN KEY (Tipo_Inspec_ID) REFERENCES Tipo_de_Inspeccion(Tipo_Inspec_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Inspecciones
	ADD CONSTRAINT R_53 FOREIGN KEY (Inspector_ID) REFERENCES Inspectores(Inspector_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Inspecciones
	ADD CONSTRAINT R_62 FOREIGN KEY (Agente_ID) REFERENCES Efectivos_de_Orden(Agente_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Inspectores
	ADD CONSTRAINT R_58 FOREIGN KEY (Datos_ID) REFERENCES Datos_Personas(Datos_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Nacionalidad
	ADD CONSTRAINT R_41 FOREIGN KEY (Pais_ID) REFERENCES Pais(Pais_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Nacionalidad
	ADD CONSTRAINT R_43 FOREIGN KEY (Ciudades_ID) REFERENCES Cuidades(Ciudades_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Operacion_Despachos
	ADD CONSTRAINT R_23 FOREIGN KEY (Terminal_Salida) REFERENCES Terminales(Terminal_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Operacion_Despachos
	ADD CONSTRAINT R_51 FOREIGN KEY (Vehiculo_ID) REFERENCES Vehiculos(Vehiculo_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Operacion_Despachos
	ADD CONSTRAINT R_69 FOREIGN KEY (Inspeccion_Salida) REFERENCES Inspecciones(Inspeccion_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Operacion_Despachos
	ADD CONSTRAINT R_71 FOREIGN KEY (Terminal_Ingreso) REFERENCES Terminales(Terminal_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Operaciones_Muelle
	ADD CONSTRAINT R_2 FOREIGN KEY (Muelle_ID) REFERENCES Muelle(Muelle_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Operaciones_Muelle
	ADD CONSTRAINT R_3 FOREIGN KEY (Buque_ID) REFERENCES Buques(Buque_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Operaciones_Muelle
	ADD CONSTRAINT R_82 FOREIGN KEY (Solicitud_Salida) REFERENCES Solicitudes(Solicitud_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Pasajeros
	ADD CONSTRAINT R_56 FOREIGN KEY (Datos_ID) REFERENCES Datos_Personas(Datos_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Patio_de_Contenedores
	ADD CONSTRAINT R_19 FOREIGN KEY (Contenedor_ID) REFERENCES Contenedores(Contenedor_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Patio_de_Contenedores
	ADD CONSTRAINT R_21 FOREIGN KEY (Despacho_ID) REFERENCES Operacion_Despachos(Despacho_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Patio_de_Contenedores
	ADD CONSTRAINT R_93 FOREIGN KEY (Seccion_ID) REFERENCES Secciones(Seccion_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Personas_Requizadas
	ADD CONSTRAINT R_59 FOREIGN KEY (Datos_ID) REFERENCES Datos_Personas(Datos_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Personas_Requizadas
	ADD CONSTRAINT R_60 FOREIGN KEY (Delitos_ID) REFERENCES Cargos_Imputados(Delitos_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Requizados
	ADD CONSTRAINT R_28 FOREIGN KEY (Requisitoradios_ID) REFERENCES Personas_Requizadas(Requisitoradios_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Tripulacion
	ADD CONSTRAINT R_15 FOREIGN KEY (Asignacion_ID) REFERENCES Asignaciones(Asignacion_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Tripulacion
	ADD CONSTRAINT R_57 FOREIGN KEY (Datos_ID) REFERENCES Datos_Personas(Datos_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Tripulacion
	ADD CONSTRAINT R_67 FOREIGN KEY (Bitacora_ID) REFERENCES Bitacoras(Bitacora_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Vehiculos
	ADD CONSTRAINT R_50 FOREIGN KEY (Chofer_ID) REFERENCES Choferes(Chofer_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Vehiculos
	ADD CONSTRAINT R_64 FOREIGN KEY (Modelo_ID) REFERENCES Modelos_Vehiculo(Modelo_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Vehiculos
	ADD CONSTRAINT R_65 FOREIGN KEY (Destino_Vehiculo) REFERENCES Cuidades(Ciudades_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




CREATE TRIGGER tD_Almacenes ON Almacenes FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Almacenes */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Cargas  Almacenes on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003a71f", PARENT_OWNER="", PARENT_TABLE="Cargas"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="Carga_ID" */
    IF EXISTS (SELECT * FROM deleted,Cargas
      WHERE
        /* %JoinFKPK(deleted,Cargas," = "," AND") */
        deleted.Carga_ID = Cargas.Carga_ID AND
        NOT EXISTS (
          SELECT * FROM Almacenes
          WHERE
            /* %JoinFKPK(Almacenes,Cargas," = "," AND") */
            Almacenes.Carga_ID = Cargas.Carga_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Almacenes because Cargas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Operacion_Despachos  Almacenes on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Operacion_Despachos"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="Despacho_ID" */
    IF EXISTS (SELECT * FROM deleted,Operacion_Despachos
      WHERE
        /* %JoinFKPK(deleted,Operacion_Despachos," = "," AND") */
        deleted.Despacho_ID = Operacion_Despachos.Despacho_ID AND
        NOT EXISTS (
          SELECT * FROM Almacenes
          WHERE
            /* %JoinFKPK(Almacenes,Operacion_Despachos," = "," AND") */
            Almacenes.Despacho_ID = Operacion_Despachos.Despacho_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Almacenes because Operacion_Despachos exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Secciones  Almacenes on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Secciones"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_91", FK_COLUMNS="Seccion_ID" */
    IF EXISTS (SELECT * FROM deleted,Secciones
      WHERE
        /* %JoinFKPK(deleted,Secciones," = "," AND") */
        deleted.Seccion_ID = Secciones.Seccion_ID AND
        NOT EXISTS (
          SELECT * FROM Almacenes
          WHERE
            /* %JoinFKPK(Almacenes,Secciones," = "," AND") */
            Almacenes.Seccion_ID = Secciones.Seccion_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Almacenes because Secciones exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Almacenes ON Almacenes FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Almacenes */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insAlmacen_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Cargas  Almacenes on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00046624", PARENT_OWNER="", PARENT_TABLE="Cargas"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="Carga_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Carga_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cargas
        WHERE
          /* %JoinFKPK(inserted,Cargas) */
          inserted.Carga_ID = Cargas.Carga_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Carga_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Almacenes because Cargas does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Operacion_Despachos  Almacenes on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Operacion_Despachos"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="Despacho_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Despacho_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Operacion_Despachos
        WHERE
          /* %JoinFKPK(inserted,Operacion_Despachos) */
          inserted.Despacho_ID = Operacion_Despachos.Despacho_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Despacho_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Almacenes because Operacion_Despachos does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Secciones  Almacenes on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Secciones"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_91", FK_COLUMNS="Seccion_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Seccion_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Secciones
        WHERE
          /* %JoinFKPK(inserted,Secciones) */
          inserted.Seccion_ID = Secciones.Seccion_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Seccion_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Almacenes because Secciones does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Asignaciones ON Asignaciones FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Asignaciones */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Asignaciones  Tripulacion on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000100c7", PARENT_OWNER="", PARENT_TABLE="Asignaciones"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="Asignacion_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Tripulacion
      WHERE
        /*  %JoinFKPK(Tripulacion,deleted," = "," AND") */
        Tripulacion.Asignacion_ID = deleted.Asignacion_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Asignaciones because Tripulacion exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Asignaciones ON Asignaciones FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Asignaciones */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insAsignacion_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Asignaciones  Tripulacion on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00011c1f", PARENT_OWNER="", PARENT_TABLE="Asignaciones"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="Asignacion_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Asignacion_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Tripulacion
      WHERE
        /*  %JoinFKPK(Tripulacion,deleted," = "," AND") */
        Tripulacion.Asignacion_ID = deleted.Asignacion_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Asignaciones because Tripulacion exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Banderas ON Banderas FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Banderas */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Banderas  Buques on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000ebcd", PARENT_OWNER="", PARENT_TABLE="Banderas"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_79", FK_COLUMNS="Bandera_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Bandera_ID = deleted.Bandera_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Banderas because Buques exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Banderas ON Banderas FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Banderas */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insBandera_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Banderas  Buques on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00010035", PARENT_OWNER="", PARENT_TABLE="Banderas"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_79", FK_COLUMNS="Bandera_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Bandera_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Bandera_ID = deleted.Bandera_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Banderas because Buques exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Bitacoras ON Bitacoras FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Bitacoras */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Bitacoras  Tripulacion on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000224f4", PARENT_OWNER="", PARENT_TABLE="Bitacoras"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="Bitacora_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Tripulacion
      WHERE
        /*  %JoinFKPK(Tripulacion,deleted," = "," AND") */
        Tripulacion.Bitacora_ID = deleted.Bitacora_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Bitacoras because Tripulacion exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Bitacoras on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Bitacoras"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_68", FK_COLUMNS="Ciudades_ID" */
    IF EXISTS (SELECT * FROM deleted,Cuidades
      WHERE
        /* %JoinFKPK(deleted,Cuidades," = "," AND") */
        deleted.Ciudades_ID = Cuidades.Ciudades_ID AND
        NOT EXISTS (
          SELECT * FROM Bitacoras
          WHERE
            /* %JoinFKPK(Bitacoras,Cuidades," = "," AND") */
            Bitacoras.Ciudades_ID = Cuidades.Ciudades_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Bitacoras because Cuidades exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Bitacoras ON Bitacoras FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Bitacoras */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insBitacora_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Bitacoras  Tripulacion on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00028a95", PARENT_OWNER="", PARENT_TABLE="Bitacoras"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="Bitacora_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Bitacora_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Tripulacion
      WHERE
        /*  %JoinFKPK(Tripulacion,deleted," = "," AND") */
        Tripulacion.Bitacora_ID = deleted.Bitacora_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Bitacoras because Tripulacion exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Bitacoras on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Bitacoras"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_68", FK_COLUMNS="Ciudades_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Ciudades_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cuidades
        WHERE
          /* %JoinFKPK(inserted,Cuidades) */
          inserted.Ciudades_ID = Cuidades.Ciudades_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Ciudades_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Bitacoras because Cuidades does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Buques ON Buques FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Buques */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Buques  Operaciones_Muelle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000a79bb", PARENT_OWNER="", PARENT_TABLE="Buques"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="Buque_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Operaciones_Muelle
      WHERE
        /*  %JoinFKPK(Operaciones_Muelle,deleted," = "," AND") */
        Operaciones_Muelle.Buque_ID = deleted.Buque_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Buques because Operaciones_Muelle exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Contenedores  Buques on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contenedores"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="Contenedor_ID" */
    IF EXISTS (SELECT * FROM deleted,Contenedores
      WHERE
        /* %JoinFKPK(deleted,Contenedores," = "," AND") */
        deleted.Contenedor_ID = Contenedores.Contenedor_ID AND
        NOT EXISTS (
          SELECT * FROM Buques
          WHERE
            /* %JoinFKPK(Buques,Contenedores," = "," AND") */
            Buques.Contenedor_ID = Contenedores.Contenedor_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Buques because Contenedores exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cargas  Buques on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cargas"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Carga_ID" */
    IF EXISTS (SELECT * FROM deleted,Cargas
      WHERE
        /* %JoinFKPK(deleted,Cargas," = "," AND") */
        deleted.Carga_ID = Cargas.Carga_ID AND
        NOT EXISTS (
          SELECT * FROM Buques
          WHERE
            /* %JoinFKPK(Buques,Cargas," = "," AND") */
            Buques.Carga_ID = Cargas.Carga_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Buques because Cargas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Buques on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="Ciudades_destino" */
    IF EXISTS (SELECT * FROM deleted,Cuidades
      WHERE
        /* %JoinFKPK(deleted,Cuidades," = "," AND") */
        deleted.Ciudades_destino = Cuidades.Ciudades_ID AND
        NOT EXISTS (
          SELECT * FROM Buques
          WHERE
            /* %JoinFKPK(Buques,Cuidades," = "," AND") */
            Buques.Ciudades_destino = Cuidades.Ciudades_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Buques because Cuidades exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Buques on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="Ciudad_Origen" */
    IF EXISTS (SELECT * FROM deleted,Cuidades
      WHERE
        /* %JoinFKPK(deleted,Cuidades," = "," AND") */
        deleted.Ciudad_Origen = Cuidades.Ciudades_ID AND
        NOT EXISTS (
          SELECT * FROM Buques
          WHERE
            /* %JoinFKPK(Buques,Cuidades," = "," AND") */
            Buques.Ciudad_Origen = Cuidades.Ciudades_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Buques because Cuidades exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Inspecciones  Buques on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Inspecciones"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_70", FK_COLUMNS="Inspeccion_Ingreso" */
    IF EXISTS (SELECT * FROM deleted,Inspecciones
      WHERE
        /* %JoinFKPK(deleted,Inspecciones," = "," AND") */
        deleted.Inspeccion_Ingreso = Inspecciones.Inspeccion_ID AND
        NOT EXISTS (
          SELECT * FROM Buques
          WHERE
            /* %JoinFKPK(Buques,Inspecciones," = "," AND") */
            Buques.Inspeccion_Ingreso = Inspecciones.Inspeccion_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Buques because Inspecciones exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Identificacion_OMI  Buques on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Identificacion_OMI"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_78", FK_COLUMNS="OMI_ID" */
    IF EXISTS (SELECT * FROM deleted,Identificacion_OMI
      WHERE
        /* %JoinFKPK(deleted,Identificacion_OMI," = "," AND") */
        deleted.OMI_ID = Identificacion_OMI.OMI_ID AND
        NOT EXISTS (
          SELECT * FROM Buques
          WHERE
            /* %JoinFKPK(Buques,Identificacion_OMI," = "," AND") */
            Buques.OMI_ID = Identificacion_OMI.OMI_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Buques because Identificacion_OMI exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Banderas  Buques on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Banderas"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_79", FK_COLUMNS="Bandera_ID" */
    IF EXISTS (SELECT * FROM deleted,Banderas
      WHERE
        /* %JoinFKPK(deleted,Banderas," = "," AND") */
        deleted.Bandera_ID = Banderas.Bandera_ID AND
        NOT EXISTS (
          SELECT * FROM Buques
          WHERE
            /* %JoinFKPK(Buques,Banderas," = "," AND") */
            Buques.Bandera_ID = Banderas.Bandera_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Buques because Banderas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Solicitudes  Buques on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Solicitudes"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_81", FK_COLUMNS="Solicitud_Atraco" */
    IF EXISTS (SELECT * FROM deleted,Solicitudes
      WHERE
        /* %JoinFKPK(deleted,Solicitudes," = "," AND") */
        deleted.Solicitud_Atraco = Solicitudes.Solicitud_ID AND
        NOT EXISTS (
          SELECT * FROM Buques
          WHERE
            /* %JoinFKPK(Buques,Solicitudes," = "," AND") */
            Buques.Solicitud_Atraco = Solicitudes.Solicitud_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Buques because Solicitudes exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Buques ON Buques FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Buques */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insBuque_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Buques  Operaciones_Muelle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000c77d2", PARENT_OWNER="", PARENT_TABLE="Buques"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="Buque_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Buque_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Operaciones_Muelle
      WHERE
        /*  %JoinFKPK(Operaciones_Muelle,deleted," = "," AND") */
        Operaciones_Muelle.Buque_ID = deleted.Buque_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Buques because Operaciones_Muelle exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Contenedores  Buques on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contenedores"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="Contenedor_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Contenedor_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Contenedores
        WHERE
          /* %JoinFKPK(inserted,Contenedores) */
          inserted.Contenedor_ID = Contenedores.Contenedor_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Contenedor_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Buques because Contenedores does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cargas  Buques on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cargas"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Carga_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Carga_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cargas
        WHERE
          /* %JoinFKPK(inserted,Cargas) */
          inserted.Carga_ID = Cargas.Carga_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Carga_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Buques because Cargas does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Buques on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="Ciudades_destino" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Ciudades_destino)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cuidades
        WHERE
          /* %JoinFKPK(inserted,Cuidades) */
          inserted.Ciudades_destino = Cuidades.Ciudades_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Ciudades_destino IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Buques because Cuidades does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Buques on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="Ciudad_Origen" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Ciudad_Origen)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cuidades
        WHERE
          /* %JoinFKPK(inserted,Cuidades) */
          inserted.Ciudad_Origen = Cuidades.Ciudades_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Ciudad_Origen IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Buques because Cuidades does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Inspecciones  Buques on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Inspecciones"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_70", FK_COLUMNS="Inspeccion_Ingreso" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Inspeccion_Ingreso)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Inspecciones
        WHERE
          /* %JoinFKPK(inserted,Inspecciones) */
          inserted.Inspeccion_Ingreso = Inspecciones.Inspeccion_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Inspeccion_Ingreso IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Buques because Inspecciones does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Identificacion_OMI  Buques on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Identificacion_OMI"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_78", FK_COLUMNS="OMI_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(OMI_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Identificacion_OMI
        WHERE
          /* %JoinFKPK(inserted,Identificacion_OMI) */
          inserted.OMI_ID = Identificacion_OMI.OMI_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.OMI_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Buques because Identificacion_OMI does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Banderas  Buques on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Banderas"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_79", FK_COLUMNS="Bandera_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Bandera_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Banderas
        WHERE
          /* %JoinFKPK(inserted,Banderas) */
          inserted.Bandera_ID = Banderas.Bandera_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Bandera_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Buques because Banderas does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Solicitudes  Buques on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Solicitudes"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_81", FK_COLUMNS="Solicitud_Atraco" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Solicitud_Atraco)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Solicitudes
        WHERE
          /* %JoinFKPK(inserted,Solicitudes) */
          inserted.Solicitud_Atraco = Solicitudes.Solicitud_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Solicitud_Atraco IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Buques because Solicitudes does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Cargas ON Cargas FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Cargas */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Cargas  Buques on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0004095e", PARENT_OWNER="", PARENT_TABLE="Cargas"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Carga_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Carga_ID = deleted.Carga_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cargas because Buques exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cargas  Almacenes on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cargas"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="Carga_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Almacenes
      WHERE
        /*  %JoinFKPK(Almacenes,deleted," = "," AND") */
        Almacenes.Carga_ID = deleted.Carga_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cargas because Almacenes exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Empresas  Cargas on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Empresas"
    CHILD_OWNER="", CHILD_TABLE="Cargas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="Empresa_ID" */
    IF EXISTS (SELECT * FROM deleted,Empresas
      WHERE
        /* %JoinFKPK(deleted,Empresas," = "," AND") */
        deleted.Empresa_ID = Empresas.Empresa_ID AND
        NOT EXISTS (
          SELECT * FROM Cargas
          WHERE
            /* %JoinFKPK(Cargas,Empresas," = "," AND") */
            Cargas.Empresa_ID = Empresas.Empresa_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Cargas because Empresas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Cargas on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Cargas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="Procedencia" */
    IF EXISTS (SELECT * FROM deleted,Cuidades
      WHERE
        /* %JoinFKPK(deleted,Cuidades," = "," AND") */
        deleted.Procedencia = Cuidades.Ciudades_ID AND
        NOT EXISTS (
          SELECT * FROM Cargas
          WHERE
            /* %JoinFKPK(Cargas,Cuidades," = "," AND") */
            Cargas.Procedencia = Cuidades.Ciudades_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Cargas because Cuidades exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Cargas ON Cargas FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Cargas */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCarga_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Cargas  Buques on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0004d8df", PARENT_OWNER="", PARENT_TABLE="Cargas"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Carga_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Carga_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Carga_ID = deleted.Carga_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cargas because Buques exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cargas  Almacenes on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cargas"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="Carga_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Carga_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Almacenes
      WHERE
        /*  %JoinFKPK(Almacenes,deleted," = "," AND") */
        Almacenes.Carga_ID = deleted.Carga_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cargas because Almacenes exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Empresas  Cargas on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Empresas"
    CHILD_OWNER="", CHILD_TABLE="Cargas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="Empresa_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Empresa_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Empresas
        WHERE
          /* %JoinFKPK(inserted,Empresas) */
          inserted.Empresa_ID = Empresas.Empresa_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Empresa_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Cargas because Empresas does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Cargas on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Cargas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="Procedencia" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Procedencia)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cuidades
        WHERE
          /* %JoinFKPK(inserted,Cuidades) */
          inserted.Procedencia = Cuidades.Ciudades_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Procedencia IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Cargas because Cuidades does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Cargos_Imputados ON Cargos_Imputados FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Cargos_Imputados */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Cargos_Imputados  Personas_Requizadas on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001196e", PARENT_OWNER="", PARENT_TABLE="Cargos_Imputados"
    CHILD_OWNER="", CHILD_TABLE="Personas_Requizadas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_60", FK_COLUMNS="Delitos_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Personas_Requizadas
      WHERE
        /*  %JoinFKPK(Personas_Requizadas,deleted," = "," AND") */
        Personas_Requizadas.Delitos_ID = deleted.Delitos_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cargos_Imputados because Personas_Requizadas exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Cargos_Imputados ON Cargos_Imputados FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Cargos_Imputados */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insDelitos_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Cargos_Imputados  Personas_Requizadas on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00013839", PARENT_OWNER="", PARENT_TABLE="Cargos_Imputados"
    CHILD_OWNER="", CHILD_TABLE="Personas_Requizadas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_60", FK_COLUMNS="Delitos_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Delitos_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Personas_Requizadas
      WHERE
        /*  %JoinFKPK(Personas_Requizadas,deleted," = "," AND") */
        Personas_Requizadas.Delitos_ID = deleted.Delitos_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cargos_Imputados because Personas_Requizadas exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Certificado_Arqueo ON Certificado_Arqueo FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Certificado_Arqueo */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Certificado_Arqueo  Identificacion_OMI on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001111a", PARENT_OWNER="", PARENT_TABLE="Certificado_Arqueo"
    CHILD_OWNER="", CHILD_TABLE="Identificacion_OMI"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_77", FK_COLUMNS="Arqueo_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Identificacion_OMI
      WHERE
        /*  %JoinFKPK(Identificacion_OMI,deleted," = "," AND") */
        Identificacion_OMI.Arqueo_ID = deleted.Arqueo_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Certificado_Arqueo because Identificacion_OMI exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Certificado_Arqueo ON Certificado_Arqueo FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Certificado_Arqueo */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insArqueo_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Certificado_Arqueo  Identificacion_OMI on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000133ca", PARENT_OWNER="", PARENT_TABLE="Certificado_Arqueo"
    CHILD_OWNER="", CHILD_TABLE="Identificacion_OMI"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_77", FK_COLUMNS="Arqueo_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Arqueo_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Identificacion_OMI
      WHERE
        /*  %JoinFKPK(Identificacion_OMI,deleted," = "," AND") */
        Identificacion_OMI.Arqueo_ID = deleted.Arqueo_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Certificado_Arqueo because Identificacion_OMI exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Choferes ON Choferes FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Choferes */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Choferes  Vehiculos on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000e673", PARENT_OWNER="", PARENT_TABLE="Choferes"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="Chofer_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Vehiculos
      WHERE
        /*  %JoinFKPK(Vehiculos,deleted," = "," AND") */
        Vehiculos.Chofer_ID = deleted.Chofer_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Choferes because Vehiculos exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Choferes ON Choferes FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Choferes */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insChofer_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Choferes  Vehiculos on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00010613", PARENT_OWNER="", PARENT_TABLE="Choferes"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="Chofer_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Chofer_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Vehiculos
      WHERE
        /*  %JoinFKPK(Vehiculos,deleted," = "," AND") */
        Vehiculos.Chofer_ID = deleted.Chofer_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Choferes because Vehiculos exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Contenedores ON Contenedores FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Contenedores */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Contenedores  Buques on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00047725", PARENT_OWNER="", PARENT_TABLE="Contenedores"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="Contenedor_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Contenedor_ID = deleted.Contenedor_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Contenedores because Buques exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Contenedores  Patio_de_Contenedores on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contenedores"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="Contenedor_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Patio_de_Contenedores
      WHERE
        /*  %JoinFKPK(Patio_de_Contenedores,deleted," = "," AND") */
        Patio_de_Contenedores.Contenedor_ID = deleted.Contenedor_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Contenedores because Patio_de_Contenedores exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Empresas  Contenedores on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Empresas"
    CHILD_OWNER="", CHILD_TABLE="Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="Empresa_ID" */
    IF EXISTS (SELECT * FROM deleted,Empresas
      WHERE
        /* %JoinFKPK(deleted,Empresas," = "," AND") */
        deleted.Empresa_ID = Empresas.Empresa_ID AND
        NOT EXISTS (
          SELECT * FROM Contenedores
          WHERE
            /* %JoinFKPK(Contenedores,Empresas," = "," AND") */
            Contenedores.Empresa_ID = Empresas.Empresa_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Contenedores because Empresas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Contenedores on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_76", FK_COLUMNS="Procedencia" */
    IF EXISTS (SELECT * FROM deleted,Cuidades
      WHERE
        /* %JoinFKPK(deleted,Cuidades," = "," AND") */
        deleted.Procedencia = Cuidades.Ciudades_ID AND
        NOT EXISTS (
          SELECT * FROM Contenedores
          WHERE
            /* %JoinFKPK(Contenedores,Cuidades," = "," AND") */
            Contenedores.Procedencia = Cuidades.Ciudades_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Contenedores because Cuidades exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Contenedores ON Contenedores FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Contenedores */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insContenedor_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Contenedores  Buques on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00053385", PARENT_OWNER="", PARENT_TABLE="Contenedores"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="Contenedor_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Contenedor_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Contenedor_ID = deleted.Contenedor_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Contenedores because Buques exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Contenedores  Patio_de_Contenedores on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contenedores"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="Contenedor_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Contenedor_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Patio_de_Contenedores
      WHERE
        /*  %JoinFKPK(Patio_de_Contenedores,deleted," = "," AND") */
        Patio_de_Contenedores.Contenedor_ID = deleted.Contenedor_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Contenedores because Patio_de_Contenedores exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Empresas  Contenedores on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Empresas"
    CHILD_OWNER="", CHILD_TABLE="Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="Empresa_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Empresa_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Empresas
        WHERE
          /* %JoinFKPK(inserted,Empresas) */
          inserted.Empresa_ID = Empresas.Empresa_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Empresa_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Contenedores because Empresas does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Contenedores on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_76", FK_COLUMNS="Procedencia" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Procedencia)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cuidades
        WHERE
          /* %JoinFKPK(inserted,Cuidades) */
          inserted.Procedencia = Cuidades.Ciudades_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Procedencia IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Contenedores because Cuidades does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Cuidades ON Cuidades FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Cuidades */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Cuidades  Buques on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00079cdc", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="Ciudades_destino" */
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Ciudades_destino = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cuidades because Buques exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Buques on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="Ciudad_Origen" */
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Ciudad_Origen = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cuidades because Buques exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Nacionalidad on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Nacionalidad"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="Ciudades_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Nacionalidad
      WHERE
        /*  %JoinFKPK(Nacionalidad,deleted," = "," AND") */
        Nacionalidad.Ciudades_ID = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cuidades because Nacionalidad exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Vehiculos on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="Destino_Vehiculo" */
    IF EXISTS (
      SELECT * FROM deleted,Vehiculos
      WHERE
        /*  %JoinFKPK(Vehiculos,deleted," = "," AND") */
        Vehiculos.Destino_Vehiculo = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cuidades because Vehiculos exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Bitacoras on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Bitacoras"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_68", FK_COLUMNS="Ciudades_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Bitacoras
      WHERE
        /*  %JoinFKPK(Bitacoras,deleted," = "," AND") */
        Bitacoras.Ciudades_ID = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cuidades because Bitacoras exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Cargas on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Cargas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="Procedencia" */
    IF EXISTS (
      SELECT * FROM deleted,Cargas
      WHERE
        /*  %JoinFKPK(Cargas,deleted," = "," AND") */
        Cargas.Procedencia = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cuidades because Cargas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Contenedores on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_76", FK_COLUMNS="Procedencia" */
    IF EXISTS (
      SELECT * FROM deleted,Contenedores
      WHERE
        /*  %JoinFKPK(Contenedores,deleted," = "," AND") */
        Contenedores.Procedencia = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cuidades because Contenedores exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Pais  Cuidades on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Pais"
    CHILD_OWNER="", CHILD_TABLE="Cuidades"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="Pais_ID" */
    IF EXISTS (SELECT * FROM deleted,Pais
      WHERE
        /* %JoinFKPK(deleted,Pais," = "," AND") */
        deleted.Pais_ID = Pais.Pais_ID AND
        NOT EXISTS (
          SELECT * FROM Cuidades
          WHERE
            /* %JoinFKPK(Cuidades,Pais," = "," AND") */
            Cuidades.Pais_ID = Pais.Pais_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Cuidades because Pais exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Cuidades ON Cuidades FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Cuidades */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCiudades_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Cuidades  Buques on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00087f8b", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="Ciudades_destino" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Ciudades_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Ciudades_destino = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cuidades because Buques exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Buques on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="Ciudad_Origen" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Ciudades_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Ciudad_Origen = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cuidades because Buques exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Nacionalidad on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Nacionalidad"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="Ciudades_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Ciudades_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Nacionalidad
      WHERE
        /*  %JoinFKPK(Nacionalidad,deleted," = "," AND") */
        Nacionalidad.Ciudades_ID = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cuidades because Nacionalidad exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Vehiculos on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="Destino_Vehiculo" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Ciudades_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Vehiculos
      WHERE
        /*  %JoinFKPK(Vehiculos,deleted," = "," AND") */
        Vehiculos.Destino_Vehiculo = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cuidades because Vehiculos exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Bitacoras on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Bitacoras"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_68", FK_COLUMNS="Ciudades_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Ciudades_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Bitacoras
      WHERE
        /*  %JoinFKPK(Bitacoras,deleted," = "," AND") */
        Bitacoras.Ciudades_ID = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cuidades because Bitacoras exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Cargas on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Cargas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="Procedencia" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Ciudades_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Cargas
      WHERE
        /*  %JoinFKPK(Cargas,deleted," = "," AND") */
        Cargas.Procedencia = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cuidades because Cargas exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Contenedores on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_76", FK_COLUMNS="Procedencia" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Ciudades_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Contenedores
      WHERE
        /*  %JoinFKPK(Contenedores,deleted," = "," AND") */
        Contenedores.Procedencia = deleted.Ciudades_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cuidades because Contenedores exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Pais  Cuidades on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Pais"
    CHILD_OWNER="", CHILD_TABLE="Cuidades"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="Pais_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Pais_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Pais
        WHERE
          /* %JoinFKPK(inserted,Pais) */
          inserted.Pais_ID = Pais.Pais_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Pais_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Cuidades because Pais does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Datos_Personas ON Datos_Personas FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Datos_Personas */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Datos_Personas  Pasajeros on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00078eec", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Pasajeros"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="Datos_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Pasajeros
      WHERE
        /*  %JoinFKPK(Pasajeros,deleted," = "," AND") */
        Pasajeros.Datos_ID = deleted.Datos_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Datos_Personas because Pasajeros exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Datos_Personas  Tripulacion on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="Datos_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Tripulacion
      WHERE
        /*  %JoinFKPK(Tripulacion,deleted," = "," AND") */
        Tripulacion.Datos_ID = deleted.Datos_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Datos_Personas because Tripulacion exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Datos_Personas  Inspectores on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Inspectores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="Datos_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Inspectores
      WHERE
        /*  %JoinFKPK(Inspectores,deleted," = "," AND") */
        Inspectores.Datos_ID = deleted.Datos_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Datos_Personas because Inspectores exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Datos_Personas  Personas_Requizadas on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Personas_Requizadas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="Datos_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Personas_Requizadas
      WHERE
        /*  %JoinFKPK(Personas_Requizadas,deleted," = "," AND") */
        Personas_Requizadas.Datos_ID = deleted.Datos_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Datos_Personas because Personas_Requizadas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Datos_Personas  Efectivos_de_Orden on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Efectivos_de_Orden"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_61", FK_COLUMNS="Datos_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Efectivos_de_Orden
      WHERE
        /*  %JoinFKPK(Efectivos_de_Orden,deleted," = "," AND") */
        Efectivos_de_Orden.Datos_ID = deleted.Datos_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Datos_Personas because Efectivos_de_Orden exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Nacionalidad  Datos_Personas on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Nacionalidad"
    CHILD_OWNER="", CHILD_TABLE="Datos_Personas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="Pais_ID" */
    IF EXISTS (SELECT * FROM deleted,Nacionalidad
      WHERE
        /* %JoinFKPK(deleted,Nacionalidad," = "," AND") */
        deleted.Pais_ID = Nacionalidad.Pais_ID AND
        NOT EXISTS (
          SELECT * FROM Datos_Personas
          WHERE
            /* %JoinFKPK(Datos_Personas,Nacionalidad," = "," AND") */
            Datos_Personas.Pais_ID = Nacionalidad.Pais_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Datos_Personas because Nacionalidad exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Equipajes  Datos_Personas on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Equipajes"
    CHILD_OWNER="", CHILD_TABLE="Datos_Personas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="Equipaje_ID" */
    IF EXISTS (SELECT * FROM deleted,Equipajes
      WHERE
        /* %JoinFKPK(deleted,Equipajes," = "," AND") */
        deleted.Equipaje_ID = Equipajes.Equipaje_ID AND
        NOT EXISTS (
          SELECT * FROM Datos_Personas
          WHERE
            /* %JoinFKPK(Datos_Personas,Equipajes," = "," AND") */
            Datos_Personas.Equipaje_ID = Equipajes.Equipaje_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Datos_Personas because Equipajes exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Datos_Personas ON Datos_Personas FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Datos_Personas */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insDatos_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Datos_Personas  Pasajeros on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00087195", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Pasajeros"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="Datos_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Datos_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Pasajeros
      WHERE
        /*  %JoinFKPK(Pasajeros,deleted," = "," AND") */
        Pasajeros.Datos_ID = deleted.Datos_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Datos_Personas because Pasajeros exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Datos_Personas  Tripulacion on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="Datos_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Datos_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Tripulacion
      WHERE
        /*  %JoinFKPK(Tripulacion,deleted," = "," AND") */
        Tripulacion.Datos_ID = deleted.Datos_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Datos_Personas because Tripulacion exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Datos_Personas  Inspectores on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Inspectores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="Datos_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Datos_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Inspectores
      WHERE
        /*  %JoinFKPK(Inspectores,deleted," = "," AND") */
        Inspectores.Datos_ID = deleted.Datos_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Datos_Personas because Inspectores exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Datos_Personas  Personas_Requizadas on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Personas_Requizadas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="Datos_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Datos_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Personas_Requizadas
      WHERE
        /*  %JoinFKPK(Personas_Requizadas,deleted," = "," AND") */
        Personas_Requizadas.Datos_ID = deleted.Datos_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Datos_Personas because Personas_Requizadas exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Datos_Personas  Efectivos_de_Orden on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Efectivos_de_Orden"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_61", FK_COLUMNS="Datos_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Datos_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Efectivos_de_Orden
      WHERE
        /*  %JoinFKPK(Efectivos_de_Orden,deleted," = "," AND") */
        Efectivos_de_Orden.Datos_ID = deleted.Datos_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Datos_Personas because Efectivos_de_Orden exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Nacionalidad  Datos_Personas on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Nacionalidad"
    CHILD_OWNER="", CHILD_TABLE="Datos_Personas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="Pais_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Pais_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Nacionalidad
        WHERE
          /* %JoinFKPK(inserted,Nacionalidad) */
          inserted.Pais_ID = Nacionalidad.Pais_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Pais_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Datos_Personas because Nacionalidad does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Equipajes  Datos_Personas on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Equipajes"
    CHILD_OWNER="", CHILD_TABLE="Datos_Personas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="Equipaje_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Equipaje_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Equipajes
        WHERE
          /* %JoinFKPK(inserted,Equipajes) */
          inserted.Equipaje_ID = Equipajes.Equipaje_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Equipaje_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Datos_Personas because Equipajes does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Efectivos_de_Orden ON Efectivos_de_Orden FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Efectivos_de_Orden */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Efectivos_de_Orden  Inspecciones on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00024ea1", PARENT_OWNER="", PARENT_TABLE="Efectivos_de_Orden"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_62", FK_COLUMNS="Agente_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Inspecciones
      WHERE
        /*  %JoinFKPK(Inspecciones,deleted," = "," AND") */
        Inspecciones.Agente_ID = deleted.Agente_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Efectivos_de_Orden because Inspecciones exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Datos_Personas  Efectivos_de_Orden on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Efectivos_de_Orden"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_61", FK_COLUMNS="Datos_ID" */
    IF EXISTS (SELECT * FROM deleted,Datos_Personas
      WHERE
        /* %JoinFKPK(deleted,Datos_Personas," = "," AND") */
        deleted.Datos_ID = Datos_Personas.Datos_ID AND
        NOT EXISTS (
          SELECT * FROM Efectivos_de_Orden
          WHERE
            /* %JoinFKPK(Efectivos_de_Orden,Datos_Personas," = "," AND") */
            Efectivos_de_Orden.Datos_ID = Datos_Personas.Datos_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Efectivos_de_Orden because Datos_Personas exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Efectivos_de_Orden ON Efectivos_de_Orden FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Efectivos_de_Orden */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insAgente_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Efectivos_de_Orden  Inspecciones on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00029765", PARENT_OWNER="", PARENT_TABLE="Efectivos_de_Orden"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_62", FK_COLUMNS="Agente_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Agente_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Inspecciones
      WHERE
        /*  %JoinFKPK(Inspecciones,deleted," = "," AND") */
        Inspecciones.Agente_ID = deleted.Agente_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Efectivos_de_Orden because Inspecciones exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Datos_Personas  Efectivos_de_Orden on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Efectivos_de_Orden"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_61", FK_COLUMNS="Datos_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Datos_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Datos_Personas
        WHERE
          /* %JoinFKPK(inserted,Datos_Personas) */
          inserted.Datos_ID = Datos_Personas.Datos_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Datos_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Efectivos_de_Orden because Datos_Personas does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Empresas ON Empresas FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Empresas */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Empresas  Contenedores on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00034264", PARENT_OWNER="", PARENT_TABLE="Empresas"
    CHILD_OWNER="", CHILD_TABLE="Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="Empresa_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Contenedores
      WHERE
        /*  %JoinFKPK(Contenedores,deleted," = "," AND") */
        Contenedores.Empresa_ID = deleted.Empresa_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Empresas because Contenedores exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Empresas  Cargas on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Empresas"
    CHILD_OWNER="", CHILD_TABLE="Cargas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="Empresa_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Cargas
      WHERE
        /*  %JoinFKPK(Cargas,deleted," = "," AND") */
        Cargas.Empresa_ID = deleted.Empresa_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Empresas because Cargas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Rubros_Empresas  Empresas on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Rubros_Empresas"
    CHILD_OWNER="", CHILD_TABLE="Empresas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="Rubro_Empresa_ID" */
    IF EXISTS (SELECT * FROM deleted,Rubros_Empresas
      WHERE
        /* %JoinFKPK(deleted,Rubros_Empresas," = "," AND") */
        deleted.Rubro_Empresa_ID = Rubros_Empresas.Rubro_Empresa_ID AND
        NOT EXISTS (
          SELECT * FROM Empresas
          WHERE
            /* %JoinFKPK(Empresas,Rubros_Empresas," = "," AND") */
            Empresas.Rubro_Empresa_ID = Rubros_Empresas.Rubro_Empresa_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Empresas because Rubros_Empresas exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Empresas ON Empresas FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Empresas */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insEmpresa_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Empresas  Contenedores on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003a186", PARENT_OWNER="", PARENT_TABLE="Empresas"
    CHILD_OWNER="", CHILD_TABLE="Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="Empresa_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Empresa_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Contenedores
      WHERE
        /*  %JoinFKPK(Contenedores,deleted," = "," AND") */
        Contenedores.Empresa_ID = deleted.Empresa_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Empresas because Contenedores exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Empresas  Cargas on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Empresas"
    CHILD_OWNER="", CHILD_TABLE="Cargas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="Empresa_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Empresa_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Cargas
      WHERE
        /*  %JoinFKPK(Cargas,deleted," = "," AND") */
        Cargas.Empresa_ID = deleted.Empresa_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Empresas because Cargas exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Rubros_Empresas  Empresas on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Rubros_Empresas"
    CHILD_OWNER="", CHILD_TABLE="Empresas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="Rubro_Empresa_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Rubro_Empresa_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Rubros_Empresas
        WHERE
          /* %JoinFKPK(inserted,Rubros_Empresas) */
          inserted.Rubro_Empresa_ID = Rubros_Empresas.Rubro_Empresa_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Rubro_Empresa_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Empresas because Rubros_Empresas does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Equipajes ON Equipajes FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Equipajes */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Equipajes  Datos_Personas on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00010566", PARENT_OWNER="", PARENT_TABLE="Equipajes"
    CHILD_OWNER="", CHILD_TABLE="Datos_Personas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="Equipaje_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Datos_Personas
      WHERE
        /*  %JoinFKPK(Datos_Personas,deleted," = "," AND") */
        Datos_Personas.Equipaje_ID = deleted.Equipaje_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Equipajes because Datos_Personas exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Equipajes ON Equipajes FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Equipajes */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insEquipaje_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Equipajes  Datos_Personas on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000116ee", PARENT_OWNER="", PARENT_TABLE="Equipajes"
    CHILD_OWNER="", CHILD_TABLE="Datos_Personas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="Equipaje_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Equipaje_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Datos_Personas
      WHERE
        /*  %JoinFKPK(Datos_Personas,deleted," = "," AND") */
        Datos_Personas.Equipaje_ID = deleted.Equipaje_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Equipajes because Datos_Personas exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Identificacion_OMI ON Identificacion_OMI FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Identificacion_OMI */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Identificacion_OMI  Buques on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00026957", PARENT_OWNER="", PARENT_TABLE="Identificacion_OMI"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_78", FK_COLUMNS="OMI_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.OMI_ID = deleted.OMI_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Identificacion_OMI because Buques exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Certificado_Arqueo  Identificacion_OMI on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Certificado_Arqueo"
    CHILD_OWNER="", CHILD_TABLE="Identificacion_OMI"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_77", FK_COLUMNS="Arqueo_ID" */
    IF EXISTS (SELECT * FROM deleted,Certificado_Arqueo
      WHERE
        /* %JoinFKPK(deleted,Certificado_Arqueo," = "," AND") */
        deleted.Arqueo_ID = Certificado_Arqueo.Arqueo_ID AND
        NOT EXISTS (
          SELECT * FROM Identificacion_OMI
          WHERE
            /* %JoinFKPK(Identificacion_OMI,Certificado_Arqueo," = "," AND") */
            Identificacion_OMI.Arqueo_ID = Certificado_Arqueo.Arqueo_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Identificacion_OMI because Certificado_Arqueo exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Identificacion_OMI ON Identificacion_OMI FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Identificacion_OMI */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insOMI_ID char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Identificacion_OMI  Buques on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002a0bd", PARENT_OWNER="", PARENT_TABLE="Identificacion_OMI"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_78", FK_COLUMNS="OMI_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(OMI_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.OMI_ID = deleted.OMI_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Identificacion_OMI because Buques exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Certificado_Arqueo  Identificacion_OMI on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Certificado_Arqueo"
    CHILD_OWNER="", CHILD_TABLE="Identificacion_OMI"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_77", FK_COLUMNS="Arqueo_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Arqueo_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Certificado_Arqueo
        WHERE
          /* %JoinFKPK(inserted,Certificado_Arqueo) */
          inserted.Arqueo_ID = Certificado_Arqueo.Arqueo_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Arqueo_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Identificacion_OMI because Certificado_Arqueo does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Inspecciones ON Inspecciones FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Inspecciones */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Inspecciones  Operacion_Despachos on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00074d85", PARENT_OWNER="", PARENT_TABLE="Inspecciones"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_69", FK_COLUMNS="Inspeccion_Salida" */
    IF EXISTS (
      SELECT * FROM deleted,Operacion_Despachos
      WHERE
        /*  %JoinFKPK(Operacion_Despachos,deleted," = "," AND") */
        Operacion_Despachos.Inspeccion_Salida = deleted.Inspeccion_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Inspecciones because Operacion_Despachos exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Inspecciones  Buques on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Inspecciones"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_70", FK_COLUMNS="Inspeccion_Ingreso" */
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Inspeccion_Ingreso = deleted.Inspeccion_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Inspecciones because Buques exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Requizados  Inspecciones on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Requizados"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="Requiza_ID" */
    IF EXISTS (SELECT * FROM deleted,Requizados
      WHERE
        /* %JoinFKPK(deleted,Requizados," = "," AND") */
        deleted.Requiza_ID = Requizados.Requiza_ID AND
        NOT EXISTS (
          SELECT * FROM Inspecciones
          WHERE
            /* %JoinFKPK(Inspecciones,Requizados," = "," AND") */
            Inspecciones.Requiza_ID = Requizados.Requiza_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Inspecciones because Requizados exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Tipo_de_Inspeccion  Inspecciones on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Tipo_de_Inspeccion"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_45", FK_COLUMNS="Tipo_Inspec_ID" */
    IF EXISTS (SELECT * FROM deleted,Tipo_de_Inspeccion
      WHERE
        /* %JoinFKPK(deleted,Tipo_de_Inspeccion," = "," AND") */
        deleted.Tipo_Inspec_ID = Tipo_de_Inspeccion.Tipo_Inspec_ID AND
        NOT EXISTS (
          SELECT * FROM Inspecciones
          WHERE
            /* %JoinFKPK(Inspecciones,Tipo_de_Inspeccion," = "," AND") */
            Inspecciones.Tipo_Inspec_ID = Tipo_de_Inspeccion.Tipo_Inspec_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Inspecciones because Tipo_de_Inspeccion exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Inspectores  Inspecciones on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Inspectores"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="Inspector_ID" */
    IF EXISTS (SELECT * FROM deleted,Inspectores
      WHERE
        /* %JoinFKPK(deleted,Inspectores," = "," AND") */
        deleted.Inspector_ID = Inspectores.Inspector_ID AND
        NOT EXISTS (
          SELECT * FROM Inspecciones
          WHERE
            /* %JoinFKPK(Inspecciones,Inspectores," = "," AND") */
            Inspecciones.Inspector_ID = Inspectores.Inspector_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Inspecciones because Inspectores exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Efectivos_de_Orden  Inspecciones on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Efectivos_de_Orden"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_62", FK_COLUMNS="Agente_ID" */
    IF EXISTS (SELECT * FROM deleted,Efectivos_de_Orden
      WHERE
        /* %JoinFKPK(deleted,Efectivos_de_Orden," = "," AND") */
        deleted.Agente_ID = Efectivos_de_Orden.Agente_ID AND
        NOT EXISTS (
          SELECT * FROM Inspecciones
          WHERE
            /* %JoinFKPK(Inspecciones,Efectivos_de_Orden," = "," AND") */
            Inspecciones.Agente_ID = Efectivos_de_Orden.Agente_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Inspecciones because Efectivos_de_Orden exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Inspecciones ON Inspecciones FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Inspecciones */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insInspeccion_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Inspecciones  Operacion_Despachos on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00084b13", PARENT_OWNER="", PARENT_TABLE="Inspecciones"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_69", FK_COLUMNS="Inspeccion_Salida" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Inspeccion_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Operacion_Despachos
      WHERE
        /*  %JoinFKPK(Operacion_Despachos,deleted," = "," AND") */
        Operacion_Despachos.Inspeccion_Salida = deleted.Inspeccion_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Inspecciones because Operacion_Despachos exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Inspecciones  Buques on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Inspecciones"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_70", FK_COLUMNS="Inspeccion_Ingreso" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Inspeccion_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Inspeccion_Ingreso = deleted.Inspeccion_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Inspecciones because Buques exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Requizados  Inspecciones on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Requizados"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="Requiza_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Requiza_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Requizados
        WHERE
          /* %JoinFKPK(inserted,Requizados) */
          inserted.Requiza_ID = Requizados.Requiza_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Requiza_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Inspecciones because Requizados does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Tipo_de_Inspeccion  Inspecciones on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Tipo_de_Inspeccion"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_45", FK_COLUMNS="Tipo_Inspec_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Tipo_Inspec_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Tipo_de_Inspeccion
        WHERE
          /* %JoinFKPK(inserted,Tipo_de_Inspeccion) */
          inserted.Tipo_Inspec_ID = Tipo_de_Inspeccion.Tipo_Inspec_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Tipo_Inspec_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Inspecciones because Tipo_de_Inspeccion does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Inspectores  Inspecciones on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Inspectores"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="Inspector_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Inspector_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Inspectores
        WHERE
          /* %JoinFKPK(inserted,Inspectores) */
          inserted.Inspector_ID = Inspectores.Inspector_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Inspector_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Inspecciones because Inspectores does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Efectivos_de_Orden  Inspecciones on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Efectivos_de_Orden"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_62", FK_COLUMNS="Agente_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Agente_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Efectivos_de_Orden
        WHERE
          /* %JoinFKPK(inserted,Efectivos_de_Orden) */
          inserted.Agente_ID = Efectivos_de_Orden.Agente_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Agente_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Inspecciones because Efectivos_de_Orden does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Inspectores ON Inspectores FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Inspectores */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Inspectores  Inspecciones on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00023319", PARENT_OWNER="", PARENT_TABLE="Inspectores"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="Inspector_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Inspecciones
      WHERE
        /*  %JoinFKPK(Inspecciones,deleted," = "," AND") */
        Inspecciones.Inspector_ID = deleted.Inspector_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Inspectores because Inspecciones exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Datos_Personas  Inspectores on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Inspectores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="Datos_ID" */
    IF EXISTS (SELECT * FROM deleted,Datos_Personas
      WHERE
        /* %JoinFKPK(deleted,Datos_Personas," = "," AND") */
        deleted.Datos_ID = Datos_Personas.Datos_ID AND
        NOT EXISTS (
          SELECT * FROM Inspectores
          WHERE
            /* %JoinFKPK(Inspectores,Datos_Personas," = "," AND") */
            Inspectores.Datos_ID = Datos_Personas.Datos_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Inspectores because Datos_Personas exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Inspectores ON Inspectores FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Inspectores */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insInspector_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Inspectores  Inspecciones on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00029ce9", PARENT_OWNER="", PARENT_TABLE="Inspectores"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="Inspector_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Inspector_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Inspecciones
      WHERE
        /*  %JoinFKPK(Inspecciones,deleted," = "," AND") */
        Inspecciones.Inspector_ID = deleted.Inspector_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Inspectores because Inspecciones exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Datos_Personas  Inspectores on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Inspectores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="Datos_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Datos_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Datos_Personas
        WHERE
          /* %JoinFKPK(inserted,Datos_Personas) */
          inserted.Datos_ID = Datos_Personas.Datos_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Datos_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Inspectores because Datos_Personas does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Modelos_Vehiculo ON Modelos_Vehiculo FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Modelos_Vehiculo */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Modelos_Vehiculo  Vehiculos on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000103aa", PARENT_OWNER="", PARENT_TABLE="Modelos_Vehiculo"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="Modelo_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Vehiculos
      WHERE
        /*  %JoinFKPK(Vehiculos,deleted," = "," AND") */
        Vehiculos.Modelo_ID = deleted.Modelo_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Modelos_Vehiculo because Vehiculos exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Modelos_Vehiculo ON Modelos_Vehiculo FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Modelos_Vehiculo */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insModelo_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Modelos_Vehiculo  Vehiculos on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00011bc4", PARENT_OWNER="", PARENT_TABLE="Modelos_Vehiculo"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="Modelo_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Modelo_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Vehiculos
      WHERE
        /*  %JoinFKPK(Vehiculos,deleted," = "," AND") */
        Vehiculos.Modelo_ID = deleted.Modelo_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Modelos_Vehiculo because Vehiculos exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Muelle ON Muelle FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Muelle */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Muelle  Operaciones_Muelle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00010a7d", PARENT_OWNER="", PARENT_TABLE="Muelle"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="Muelle_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Operaciones_Muelle
      WHERE
        /*  %JoinFKPK(Operaciones_Muelle,deleted," = "," AND") */
        Operaciones_Muelle.Muelle_ID = deleted.Muelle_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Muelle because Operaciones_Muelle exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Muelle ON Muelle FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Muelle */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insMuelle_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Muelle  Operaciones_Muelle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00012f0e", PARENT_OWNER="", PARENT_TABLE="Muelle"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="Muelle_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Muelle_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Operaciones_Muelle
      WHERE
        /*  %JoinFKPK(Operaciones_Muelle,deleted," = "," AND") */
        Operaciones_Muelle.Muelle_ID = deleted.Muelle_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Muelle because Operaciones_Muelle exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Nacionalidad ON Nacionalidad FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Nacionalidad */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Nacionalidad  Datos_Personas on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00034b37", PARENT_OWNER="", PARENT_TABLE="Nacionalidad"
    CHILD_OWNER="", CHILD_TABLE="Datos_Personas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="Pais_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Datos_Personas
      WHERE
        /*  %JoinFKPK(Datos_Personas,deleted," = "," AND") */
        Datos_Personas.Pais_ID = deleted.Pais_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Nacionalidad because Datos_Personas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Pais  Nacionalidad on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Pais"
    CHILD_OWNER="", CHILD_TABLE="Nacionalidad"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="Pais_ID" */
    IF EXISTS (SELECT * FROM deleted,Pais
      WHERE
        /* %JoinFKPK(deleted,Pais," = "," AND") */
        deleted.Pais_ID = Pais.Pais_ID AND
        NOT EXISTS (
          SELECT * FROM Nacionalidad
          WHERE
            /* %JoinFKPK(Nacionalidad,Pais," = "," AND") */
            Nacionalidad.Pais_ID = Pais.Pais_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Nacionalidad because Pais exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Nacionalidad on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Nacionalidad"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="Ciudades_ID" */
    IF EXISTS (SELECT * FROM deleted,Cuidades
      WHERE
        /* %JoinFKPK(deleted,Cuidades," = "," AND") */
        deleted.Ciudades_ID = Cuidades.Ciudades_ID AND
        NOT EXISTS (
          SELECT * FROM Nacionalidad
          WHERE
            /* %JoinFKPK(Nacionalidad,Cuidades," = "," AND") */
            Nacionalidad.Ciudades_ID = Cuidades.Ciudades_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Nacionalidad because Cuidades exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Nacionalidad ON Nacionalidad FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Nacionalidad */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insPais_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Nacionalidad  Datos_Personas on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003bb86", PARENT_OWNER="", PARENT_TABLE="Nacionalidad"
    CHILD_OWNER="", CHILD_TABLE="Datos_Personas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="Pais_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Pais_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Datos_Personas
      WHERE
        /*  %JoinFKPK(Datos_Personas,deleted," = "," AND") */
        Datos_Personas.Pais_ID = deleted.Pais_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Nacionalidad because Datos_Personas exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Pais  Nacionalidad on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Pais"
    CHILD_OWNER="", CHILD_TABLE="Nacionalidad"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="Pais_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Pais_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Pais
        WHERE
          /* %JoinFKPK(inserted,Pais) */
          inserted.Pais_ID = Pais.Pais_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Nacionalidad because Pais does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Nacionalidad on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Nacionalidad"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="Ciudades_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Ciudades_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cuidades
        WHERE
          /* %JoinFKPK(inserted,Cuidades) */
          inserted.Ciudades_ID = Cuidades.Ciudades_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Ciudades_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Nacionalidad because Cuidades does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Operacion_Despachos ON Operacion_Despachos FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Operacion_Despachos */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Operacion_Despachos  Patio_de_Contenedores on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00079e15", PARENT_OWNER="", PARENT_TABLE="Operacion_Despachos"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="Despacho_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Patio_de_Contenedores
      WHERE
        /*  %JoinFKPK(Patio_de_Contenedores,deleted," = "," AND") */
        Patio_de_Contenedores.Despacho_ID = deleted.Despacho_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Operacion_Despachos because Patio_de_Contenedores exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Operacion_Despachos  Almacenes on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Operacion_Despachos"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="Despacho_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Almacenes
      WHERE
        /*  %JoinFKPK(Almacenes,deleted," = "," AND") */
        Almacenes.Despacho_ID = deleted.Despacho_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Operacion_Despachos because Almacenes exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Terminales  Operacion_Despachos on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Terminales"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="Terminal_Salida" */
    IF EXISTS (SELECT * FROM deleted,Terminales
      WHERE
        /* %JoinFKPK(deleted,Terminales," = "," AND") */
        deleted.Terminal_Salida = Terminales.Terminal_ID AND
        NOT EXISTS (
          SELECT * FROM Operacion_Despachos
          WHERE
            /* %JoinFKPK(Operacion_Despachos,Terminales," = "," AND") */
            Operacion_Despachos.Terminal_Salida = Terminales.Terminal_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Operacion_Despachos because Terminales exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Vehiculos  Operacion_Despachos on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehiculos"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="Vehiculo_ID" */
    IF EXISTS (SELECT * FROM deleted,Vehiculos
      WHERE
        /* %JoinFKPK(deleted,Vehiculos," = "," AND") */
        deleted.Vehiculo_ID = Vehiculos.Vehiculo_ID AND
        NOT EXISTS (
          SELECT * FROM Operacion_Despachos
          WHERE
            /* %JoinFKPK(Operacion_Despachos,Vehiculos," = "," AND") */
            Operacion_Despachos.Vehiculo_ID = Vehiculos.Vehiculo_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Operacion_Despachos because Vehiculos exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Inspecciones  Operacion_Despachos on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Inspecciones"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_69", FK_COLUMNS="Inspeccion_Salida" */
    IF EXISTS (SELECT * FROM deleted,Inspecciones
      WHERE
        /* %JoinFKPK(deleted,Inspecciones," = "," AND") */
        deleted.Inspeccion_Salida = Inspecciones.Inspeccion_ID AND
        NOT EXISTS (
          SELECT * FROM Operacion_Despachos
          WHERE
            /* %JoinFKPK(Operacion_Despachos,Inspecciones," = "," AND") */
            Operacion_Despachos.Inspeccion_Salida = Inspecciones.Inspeccion_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Operacion_Despachos because Inspecciones exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Terminales  Operacion_Despachos on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Terminales"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="Terminal_Ingreso" */
    IF EXISTS (SELECT * FROM deleted,Terminales
      WHERE
        /* %JoinFKPK(deleted,Terminales," = "," AND") */
        deleted.Terminal_Ingreso = Terminales.Terminal_ID AND
        NOT EXISTS (
          SELECT * FROM Operacion_Despachos
          WHERE
            /* %JoinFKPK(Operacion_Despachos,Terminales," = "," AND") */
            Operacion_Despachos.Terminal_Ingreso = Terminales.Terminal_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Operacion_Despachos because Terminales exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Operacion_Despachos ON Operacion_Despachos FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Operacion_Despachos */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insDespacho_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Operacion_Despachos  Patio_de_Contenedores on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00087a87", PARENT_OWNER="", PARENT_TABLE="Operacion_Despachos"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="Despacho_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Despacho_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Patio_de_Contenedores
      WHERE
        /*  %JoinFKPK(Patio_de_Contenedores,deleted," = "," AND") */
        Patio_de_Contenedores.Despacho_ID = deleted.Despacho_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Operacion_Despachos because Patio_de_Contenedores exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Operacion_Despachos  Almacenes on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Operacion_Despachos"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="Despacho_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Despacho_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Almacenes
      WHERE
        /*  %JoinFKPK(Almacenes,deleted," = "," AND") */
        Almacenes.Despacho_ID = deleted.Despacho_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Operacion_Despachos because Almacenes exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Terminales  Operacion_Despachos on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Terminales"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="Terminal_Salida" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Terminal_Salida)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Terminales
        WHERE
          /* %JoinFKPK(inserted,Terminales) */
          inserted.Terminal_Salida = Terminales.Terminal_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Terminal_Salida IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Operacion_Despachos because Terminales does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Vehiculos  Operacion_Despachos on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehiculos"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="Vehiculo_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Vehiculo_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Vehiculos
        WHERE
          /* %JoinFKPK(inserted,Vehiculos) */
          inserted.Vehiculo_ID = Vehiculos.Vehiculo_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Vehiculo_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Operacion_Despachos because Vehiculos does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Inspecciones  Operacion_Despachos on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Inspecciones"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_69", FK_COLUMNS="Inspeccion_Salida" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Inspeccion_Salida)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Inspecciones
        WHERE
          /* %JoinFKPK(inserted,Inspecciones) */
          inserted.Inspeccion_Salida = Inspecciones.Inspeccion_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Inspeccion_Salida IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Operacion_Despachos because Inspecciones does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Terminales  Operacion_Despachos on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Terminales"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="Terminal_Ingreso" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Terminal_Ingreso)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Terminales
        WHERE
          /* %JoinFKPK(inserted,Terminales) */
          inserted.Terminal_Ingreso = Terminales.Terminal_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Terminal_Ingreso IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Operacion_Despachos because Terminales does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Operaciones_Muelle ON Operaciones_Muelle FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Operaciones_Muelle */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Muelle  Operaciones_Muelle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003cc84", PARENT_OWNER="", PARENT_TABLE="Muelle"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="Muelle_ID" */
    IF EXISTS (SELECT * FROM deleted,Muelle
      WHERE
        /* %JoinFKPK(deleted,Muelle," = "," AND") */
        deleted.Muelle_ID = Muelle.Muelle_ID AND
        NOT EXISTS (
          SELECT * FROM Operaciones_Muelle
          WHERE
            /* %JoinFKPK(Operaciones_Muelle,Muelle," = "," AND") */
            Operaciones_Muelle.Muelle_ID = Muelle.Muelle_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Operaciones_Muelle because Muelle exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Buques  Operaciones_Muelle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Buques"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="Buque_ID" */
    IF EXISTS (SELECT * FROM deleted,Buques
      WHERE
        /* %JoinFKPK(deleted,Buques," = "," AND") */
        deleted.Buque_ID = Buques.Buque_ID AND
        NOT EXISTS (
          SELECT * FROM Operaciones_Muelle
          WHERE
            /* %JoinFKPK(Operaciones_Muelle,Buques," = "," AND") */
            Operaciones_Muelle.Buque_ID = Buques.Buque_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Operaciones_Muelle because Buques exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Solicitudes  Operaciones_Muelle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Solicitudes"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_82", FK_COLUMNS="Solicitud_Salida" */
    IF EXISTS (SELECT * FROM deleted,Solicitudes
      WHERE
        /* %JoinFKPK(deleted,Solicitudes," = "," AND") */
        deleted.Solicitud_Salida = Solicitudes.Solicitud_ID AND
        NOT EXISTS (
          SELECT * FROM Operaciones_Muelle
          WHERE
            /* %JoinFKPK(Operaciones_Muelle,Solicitudes," = "," AND") */
            Operaciones_Muelle.Solicitud_Salida = Solicitudes.Solicitud_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Operaciones_Muelle because Solicitudes exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Operaciones_Muelle ON Operaciones_Muelle FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Operaciones_Muelle */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insAtraco_ID integer, 
           @insMuelle_ID integer, 
           @insBuque_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Muelle  Operaciones_Muelle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0004150d", PARENT_OWNER="", PARENT_TABLE="Muelle"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="Muelle_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Muelle_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Muelle
        WHERE
          /* %JoinFKPK(inserted,Muelle) */
          inserted.Muelle_ID = Muelle.Muelle_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Operaciones_Muelle because Muelle does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Buques  Operaciones_Muelle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Buques"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="Buque_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Buque_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Buques
        WHERE
          /* %JoinFKPK(inserted,Buques) */
          inserted.Buque_ID = Buques.Buque_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Operaciones_Muelle because Buques does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Solicitudes  Operaciones_Muelle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Solicitudes"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_82", FK_COLUMNS="Solicitud_Salida" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Solicitud_Salida)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Solicitudes
        WHERE
          /* %JoinFKPK(inserted,Solicitudes) */
          inserted.Solicitud_Salida = Solicitudes.Solicitud_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Solicitud_Salida IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Operaciones_Muelle because Solicitudes does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Pais ON Pais FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Pais */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Pais  Cuidades on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001d12c", PARENT_OWNER="", PARENT_TABLE="Pais"
    CHILD_OWNER="", CHILD_TABLE="Cuidades"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="Pais_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Cuidades
      WHERE
        /*  %JoinFKPK(Cuidades,deleted," = "," AND") */
        Cuidades.Pais_ID = deleted.Pais_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Pais because Cuidades exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Pais  Nacionalidad on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Pais"
    CHILD_OWNER="", CHILD_TABLE="Nacionalidad"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="Pais_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Nacionalidad
      WHERE
        /*  %JoinFKPK(Nacionalidad,deleted," = "," AND") */
        Nacionalidad.Pais_ID = deleted.Pais_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Pais because Nacionalidad exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Pais ON Pais FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Pais */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insPais_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Pais  Cuidades on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000212b4", PARENT_OWNER="", PARENT_TABLE="Pais"
    CHILD_OWNER="", CHILD_TABLE="Cuidades"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="Pais_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Pais_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Cuidades
      WHERE
        /*  %JoinFKPK(Cuidades,deleted," = "," AND") */
        Cuidades.Pais_ID = deleted.Pais_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Pais because Cuidades exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Pais  Nacionalidad on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Pais"
    CHILD_OWNER="", CHILD_TABLE="Nacionalidad"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="Pais_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Pais_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Nacionalidad
      WHERE
        /*  %JoinFKPK(Nacionalidad,deleted," = "," AND") */
        Nacionalidad.Pais_ID = deleted.Pais_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Pais because Nacionalidad exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Pasajeros ON Pasajeros FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Pasajeros */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Datos_Personas  Pasajeros on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00013aab", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Pasajeros"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="Datos_ID" */
    IF EXISTS (SELECT * FROM deleted,Datos_Personas
      WHERE
        /* %JoinFKPK(deleted,Datos_Personas," = "," AND") */
        deleted.Datos_ID = Datos_Personas.Datos_ID AND
        NOT EXISTS (
          SELECT * FROM Pasajeros
          WHERE
            /* %JoinFKPK(Pasajeros,Datos_Personas," = "," AND") */
            Pasajeros.Datos_ID = Datos_Personas.Datos_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Pasajeros because Datos_Personas exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Pasajeros ON Pasajeros FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Pasajeros */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insIdentificacion_Pasajero integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Datos_Personas  Pasajeros on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000168f5", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Pasajeros"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="Datos_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Datos_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Datos_Personas
        WHERE
          /* %JoinFKPK(inserted,Datos_Personas) */
          inserted.Datos_ID = Datos_Personas.Datos_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Datos_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Pasajeros because Datos_Personas does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Patio_de_Contenedores ON Patio_de_Contenedores FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Patio_de_Contenedores */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Contenedores  Patio_de_Contenedores on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00042bdc", PARENT_OWNER="", PARENT_TABLE="Contenedores"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="Contenedor_ID" */
    IF EXISTS (SELECT * FROM deleted,Contenedores
      WHERE
        /* %JoinFKPK(deleted,Contenedores," = "," AND") */
        deleted.Contenedor_ID = Contenedores.Contenedor_ID AND
        NOT EXISTS (
          SELECT * FROM Patio_de_Contenedores
          WHERE
            /* %JoinFKPK(Patio_de_Contenedores,Contenedores," = "," AND") */
            Patio_de_Contenedores.Contenedor_ID = Contenedores.Contenedor_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Patio_de_Contenedores because Contenedores exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Operacion_Despachos  Patio_de_Contenedores on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Operacion_Despachos"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="Despacho_ID" */
    IF EXISTS (SELECT * FROM deleted,Operacion_Despachos
      WHERE
        /* %JoinFKPK(deleted,Operacion_Despachos," = "," AND") */
        deleted.Despacho_ID = Operacion_Despachos.Despacho_ID AND
        NOT EXISTS (
          SELECT * FROM Patio_de_Contenedores
          WHERE
            /* %JoinFKPK(Patio_de_Contenedores,Operacion_Despachos," = "," AND") */
            Patio_de_Contenedores.Despacho_ID = Operacion_Despachos.Despacho_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Patio_de_Contenedores because Operacion_Despachos exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Secciones  Patio_de_Contenedores on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Secciones"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_93", FK_COLUMNS="Seccion_ID" */
    IF EXISTS (SELECT * FROM deleted,Secciones
      WHERE
        /* %JoinFKPK(deleted,Secciones," = "," AND") */
        deleted.Seccion_ID = Secciones.Seccion_ID AND
        NOT EXISTS (
          SELECT * FROM Patio_de_Contenedores
          WHERE
            /* %JoinFKPK(Patio_de_Contenedores,Secciones," = "," AND") */
            Patio_de_Contenedores.Seccion_ID = Secciones.Seccion_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Patio_de_Contenedores because Secciones exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Patio_de_Contenedores ON Patio_de_Contenedores FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Patio_de_Contenedores */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insPatio_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Contenedores  Patio_de_Contenedores on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000495cc", PARENT_OWNER="", PARENT_TABLE="Contenedores"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="Contenedor_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Contenedor_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Contenedores
        WHERE
          /* %JoinFKPK(inserted,Contenedores) */
          inserted.Contenedor_ID = Contenedores.Contenedor_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Contenedor_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Patio_de_Contenedores because Contenedores does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Operacion_Despachos  Patio_de_Contenedores on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Operacion_Despachos"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="Despacho_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Despacho_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Operacion_Despachos
        WHERE
          /* %JoinFKPK(inserted,Operacion_Despachos) */
          inserted.Despacho_ID = Operacion_Despachos.Despacho_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Despacho_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Patio_de_Contenedores because Operacion_Despachos does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Secciones  Patio_de_Contenedores on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Secciones"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_93", FK_COLUMNS="Seccion_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Seccion_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Secciones
        WHERE
          /* %JoinFKPK(inserted,Secciones) */
          inserted.Seccion_ID = Secciones.Seccion_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Seccion_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Patio_de_Contenedores because Secciones does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Personas_Requizadas ON Personas_Requizadas FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Personas_Requizadas */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Personas_Requizadas  Requizados on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003c22f", PARENT_OWNER="", PARENT_TABLE="Personas_Requizadas"
    CHILD_OWNER="", CHILD_TABLE="Requizados"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="Requisitoradios_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Requizados
      WHERE
        /*  %JoinFKPK(Requizados,deleted," = "," AND") */
        Requizados.Requisitoradios_ID = deleted.Requisitoradios_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Personas_Requizadas because Requizados exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Datos_Personas  Personas_Requizadas on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Personas_Requizadas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="Datos_ID" */
    IF EXISTS (SELECT * FROM deleted,Datos_Personas
      WHERE
        /* %JoinFKPK(deleted,Datos_Personas," = "," AND") */
        deleted.Datos_ID = Datos_Personas.Datos_ID AND
        NOT EXISTS (
          SELECT * FROM Personas_Requizadas
          WHERE
            /* %JoinFKPK(Personas_Requizadas,Datos_Personas," = "," AND") */
            Personas_Requizadas.Datos_ID = Datos_Personas.Datos_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Personas_Requizadas because Datos_Personas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cargos_Imputados  Personas_Requizadas on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cargos_Imputados"
    CHILD_OWNER="", CHILD_TABLE="Personas_Requizadas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_60", FK_COLUMNS="Delitos_ID" */
    IF EXISTS (SELECT * FROM deleted,Cargos_Imputados
      WHERE
        /* %JoinFKPK(deleted,Cargos_Imputados," = "," AND") */
        deleted.Delitos_ID = Cargos_Imputados.Delitos_ID AND
        NOT EXISTS (
          SELECT * FROM Personas_Requizadas
          WHERE
            /* %JoinFKPK(Personas_Requizadas,Cargos_Imputados," = "," AND") */
            Personas_Requizadas.Delitos_ID = Cargos_Imputados.Delitos_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Personas_Requizadas because Cargos_Imputados exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Personas_Requizadas ON Personas_Requizadas FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Personas_Requizadas */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insRequisitoradios_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Personas_Requizadas  Requizados on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00044029", PARENT_OWNER="", PARENT_TABLE="Personas_Requizadas"
    CHILD_OWNER="", CHILD_TABLE="Requizados"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="Requisitoradios_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Requisitoradios_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Requizados
      WHERE
        /*  %JoinFKPK(Requizados,deleted," = "," AND") */
        Requizados.Requisitoradios_ID = deleted.Requisitoradios_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Personas_Requizadas because Requizados exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Datos_Personas  Personas_Requizadas on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Personas_Requizadas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="Datos_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Datos_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Datos_Personas
        WHERE
          /* %JoinFKPK(inserted,Datos_Personas) */
          inserted.Datos_ID = Datos_Personas.Datos_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Datos_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Personas_Requizadas because Datos_Personas does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cargos_Imputados  Personas_Requizadas on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cargos_Imputados"
    CHILD_OWNER="", CHILD_TABLE="Personas_Requizadas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_60", FK_COLUMNS="Delitos_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Delitos_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cargos_Imputados
        WHERE
          /* %JoinFKPK(inserted,Cargos_Imputados) */
          inserted.Delitos_ID = Cargos_Imputados.Delitos_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Delitos_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Personas_Requizadas because Cargos_Imputados does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Requizados ON Requizados FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Requizados */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Requizados  Inspecciones on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00024c01", PARENT_OWNER="", PARENT_TABLE="Requizados"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="Requiza_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Inspecciones
      WHERE
        /*  %JoinFKPK(Inspecciones,deleted," = "," AND") */
        Inspecciones.Requiza_ID = deleted.Requiza_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Requizados because Inspecciones exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Personas_Requizadas  Requizados on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Personas_Requizadas"
    CHILD_OWNER="", CHILD_TABLE="Requizados"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="Requisitoradios_ID" */
    IF EXISTS (SELECT * FROM deleted,Personas_Requizadas
      WHERE
        /* %JoinFKPK(deleted,Personas_Requizadas," = "," AND") */
        deleted.Requisitoradios_ID = Personas_Requizadas.Requisitoradios_ID AND
        NOT EXISTS (
          SELECT * FROM Requizados
          WHERE
            /* %JoinFKPK(Requizados,Personas_Requizadas," = "," AND") */
            Requizados.Requisitoradios_ID = Personas_Requizadas.Requisitoradios_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Requizados because Personas_Requizadas exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Requizados ON Requizados FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Requizados */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insRequiza_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Requizados  Inspecciones on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002b3c2", PARENT_OWNER="", PARENT_TABLE="Requizados"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="Requiza_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Requiza_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Inspecciones
      WHERE
        /*  %JoinFKPK(Inspecciones,deleted," = "," AND") */
        Inspecciones.Requiza_ID = deleted.Requiza_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Requizados because Inspecciones exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Personas_Requizadas  Requizados on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Personas_Requizadas"
    CHILD_OWNER="", CHILD_TABLE="Requizados"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="Requisitoradios_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Requisitoradios_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Personas_Requizadas
        WHERE
          /* %JoinFKPK(inserted,Personas_Requizadas) */
          inserted.Requisitoradios_ID = Personas_Requizadas.Requisitoradios_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Requisitoradios_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Requizados because Personas_Requizadas does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Rubros_Empresas ON Rubros_Empresas FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Rubros_Empresas */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Rubros_Empresas  Empresas on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000fb19", PARENT_OWNER="", PARENT_TABLE="Rubros_Empresas"
    CHILD_OWNER="", CHILD_TABLE="Empresas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="Rubro_Empresa_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Empresas
      WHERE
        /*  %JoinFKPK(Empresas,deleted," = "," AND") */
        Empresas.Rubro_Empresa_ID = deleted.Rubro_Empresa_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Rubros_Empresas because Empresas exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Rubros_Empresas ON Rubros_Empresas FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Rubros_Empresas */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insRubro_Empresa_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Rubros_Empresas  Empresas on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0001209c", PARENT_OWNER="", PARENT_TABLE="Rubros_Empresas"
    CHILD_OWNER="", CHILD_TABLE="Empresas"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="Rubro_Empresa_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Rubro_Empresa_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Empresas
      WHERE
        /*  %JoinFKPK(Empresas,deleted," = "," AND") */
        Empresas.Rubro_Empresa_ID = deleted.Rubro_Empresa_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Rubros_Empresas because Empresas exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Secciones ON Secciones FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Secciones */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Secciones  Almacenes on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001ffee", PARENT_OWNER="", PARENT_TABLE="Secciones"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_91", FK_COLUMNS="Seccion_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Almacenes
      WHERE
        /*  %JoinFKPK(Almacenes,deleted," = "," AND") */
        Almacenes.Seccion_ID = deleted.Seccion_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Secciones because Almacenes exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Secciones  Patio_de_Contenedores on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Secciones"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_93", FK_COLUMNS="Seccion_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Patio_de_Contenedores
      WHERE
        /*  %JoinFKPK(Patio_de_Contenedores,deleted," = "," AND") */
        Patio_de_Contenedores.Seccion_ID = deleted.Seccion_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Secciones because Patio_de_Contenedores exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Secciones ON Secciones FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Secciones */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insSeccion_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Secciones  Almacenes on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00022dc5", PARENT_OWNER="", PARENT_TABLE="Secciones"
    CHILD_OWNER="", CHILD_TABLE="Almacenes"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_91", FK_COLUMNS="Seccion_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Seccion_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Almacenes
      WHERE
        /*  %JoinFKPK(Almacenes,deleted," = "," AND") */
        Almacenes.Seccion_ID = deleted.Seccion_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Secciones because Almacenes exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Secciones  Patio_de_Contenedores on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Secciones"
    CHILD_OWNER="", CHILD_TABLE="Patio_de_Contenedores"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_93", FK_COLUMNS="Seccion_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Seccion_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Patio_de_Contenedores
      WHERE
        /*  %JoinFKPK(Patio_de_Contenedores,deleted," = "," AND") */
        Patio_de_Contenedores.Seccion_ID = deleted.Seccion_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Secciones because Patio_de_Contenedores exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Solicitudes ON Solicitudes FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Solicitudes */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Solicitudes  Buques on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001ff9f", PARENT_OWNER="", PARENT_TABLE="Solicitudes"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_81", FK_COLUMNS="Solicitud_Atraco" */
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Solicitud_Atraco = deleted.Solicitud_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Solicitudes because Buques exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Solicitudes  Operaciones_Muelle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Solicitudes"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_82", FK_COLUMNS="Solicitud_Salida" */
    IF EXISTS (
      SELECT * FROM deleted,Operaciones_Muelle
      WHERE
        /*  %JoinFKPK(Operaciones_Muelle,deleted," = "," AND") */
        Operaciones_Muelle.Solicitud_Salida = deleted.Solicitud_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Solicitudes because Operaciones_Muelle exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Solicitudes ON Solicitudes FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Solicitudes */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insSolicitud_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Solicitudes  Buques on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00023b7d", PARENT_OWNER="", PARENT_TABLE="Solicitudes"
    CHILD_OWNER="", CHILD_TABLE="Buques"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_81", FK_COLUMNS="Solicitud_Atraco" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Solicitud_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Buques
      WHERE
        /*  %JoinFKPK(Buques,deleted," = "," AND") */
        Buques.Solicitud_Atraco = deleted.Solicitud_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Solicitudes because Buques exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Solicitudes  Operaciones_Muelle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Solicitudes"
    CHILD_OWNER="", CHILD_TABLE="Operaciones_Muelle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_82", FK_COLUMNS="Solicitud_Salida" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Solicitud_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Operaciones_Muelle
      WHERE
        /*  %JoinFKPK(Operaciones_Muelle,deleted," = "," AND") */
        Operaciones_Muelle.Solicitud_Salida = deleted.Solicitud_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Solicitudes because Operaciones_Muelle exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Terminales ON Terminales FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Terminales */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Terminales  Operacion_Despachos on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000231ad", PARENT_OWNER="", PARENT_TABLE="Terminales"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="Terminal_Salida" */
    IF EXISTS (
      SELECT * FROM deleted,Operacion_Despachos
      WHERE
        /*  %JoinFKPK(Operacion_Despachos,deleted," = "," AND") */
        Operacion_Despachos.Terminal_Salida = deleted.Terminal_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Terminales because Operacion_Despachos exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Terminales  Operacion_Despachos on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Terminales"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="Terminal_Ingreso" */
    IF EXISTS (
      SELECT * FROM deleted,Operacion_Despachos
      WHERE
        /*  %JoinFKPK(Operacion_Despachos,deleted," = "," AND") */
        Operacion_Despachos.Terminal_Ingreso = deleted.Terminal_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Terminales because Operacion_Despachos exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Terminales ON Terminales FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Terminales */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insTerminal_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Terminales  Operacion_Despachos on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002617c", PARENT_OWNER="", PARENT_TABLE="Terminales"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="Terminal_Salida" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Terminal_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Operacion_Despachos
      WHERE
        /*  %JoinFKPK(Operacion_Despachos,deleted," = "," AND") */
        Operacion_Despachos.Terminal_Salida = deleted.Terminal_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Terminales because Operacion_Despachos exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Terminales  Operacion_Despachos on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Terminales"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="Terminal_Ingreso" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Terminal_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Operacion_Despachos
      WHERE
        /*  %JoinFKPK(Operacion_Despachos,deleted," = "," AND") */
        Operacion_Despachos.Terminal_Ingreso = deleted.Terminal_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Terminales because Operacion_Despachos exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Tipo_de_Inspeccion ON Tipo_de_Inspeccion FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Tipo_de_Inspeccion */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Tipo_de_Inspeccion  Inspecciones on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00010559", PARENT_OWNER="", PARENT_TABLE="Tipo_de_Inspeccion"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_45", FK_COLUMNS="Tipo_Inspec_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Inspecciones
      WHERE
        /*  %JoinFKPK(Inspecciones,deleted," = "," AND") */
        Inspecciones.Tipo_Inspec_ID = deleted.Tipo_Inspec_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Tipo_de_Inspeccion because Inspecciones exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Tipo_de_Inspeccion ON Tipo_de_Inspeccion FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Tipo_de_Inspeccion */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insTipo_Inspec_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Tipo_de_Inspeccion  Inspecciones on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000125f8", PARENT_OWNER="", PARENT_TABLE="Tipo_de_Inspeccion"
    CHILD_OWNER="", CHILD_TABLE="Inspecciones"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_45", FK_COLUMNS="Tipo_Inspec_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Tipo_Inspec_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Inspecciones
      WHERE
        /*  %JoinFKPK(Inspecciones,deleted," = "," AND") */
        Inspecciones.Tipo_Inspec_ID = deleted.Tipo_Inspec_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Tipo_de_Inspeccion because Inspecciones exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Tripulacion ON Tripulacion FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Tripulacion */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Asignaciones  Tripulacion on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003c327", PARENT_OWNER="", PARENT_TABLE="Asignaciones"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="Asignacion_ID" */
    IF EXISTS (SELECT * FROM deleted,Asignaciones
      WHERE
        /* %JoinFKPK(deleted,Asignaciones," = "," AND") */
        deleted.Asignacion_ID = Asignaciones.Asignacion_ID AND
        NOT EXISTS (
          SELECT * FROM Tripulacion
          WHERE
            /* %JoinFKPK(Tripulacion,Asignaciones," = "," AND") */
            Tripulacion.Asignacion_ID = Asignaciones.Asignacion_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Tripulacion because Asignaciones exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Datos_Personas  Tripulacion on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="Datos_ID" */
    IF EXISTS (SELECT * FROM deleted,Datos_Personas
      WHERE
        /* %JoinFKPK(deleted,Datos_Personas," = "," AND") */
        deleted.Datos_ID = Datos_Personas.Datos_ID AND
        NOT EXISTS (
          SELECT * FROM Tripulacion
          WHERE
            /* %JoinFKPK(Tripulacion,Datos_Personas," = "," AND") */
            Tripulacion.Datos_ID = Datos_Personas.Datos_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Tripulacion because Datos_Personas exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Bitacoras  Tripulacion on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Bitacoras"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="Bitacora_ID" */
    IF EXISTS (SELECT * FROM deleted,Bitacoras
      WHERE
        /* %JoinFKPK(deleted,Bitacoras," = "," AND") */
        deleted.Bitacora_ID = Bitacoras.Bitacora_ID AND
        NOT EXISTS (
          SELECT * FROM Tripulacion
          WHERE
            /* %JoinFKPK(Tripulacion,Bitacoras," = "," AND") */
            Tripulacion.Bitacora_ID = Bitacoras.Bitacora_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Tripulacion because Bitacoras exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Tripulacion ON Tripulacion FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Tripulacion */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insIdentificacion_Tripulante integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Asignaciones  Tripulacion on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000477d2", PARENT_OWNER="", PARENT_TABLE="Asignaciones"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="Asignacion_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Asignacion_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Asignaciones
        WHERE
          /* %JoinFKPK(inserted,Asignaciones) */
          inserted.Asignacion_ID = Asignaciones.Asignacion_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Asignacion_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Tripulacion because Asignaciones does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Datos_Personas  Tripulacion on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Datos_Personas"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="Datos_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Datos_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Datos_Personas
        WHERE
          /* %JoinFKPK(inserted,Datos_Personas) */
          inserted.Datos_ID = Datos_Personas.Datos_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Datos_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Tripulacion because Datos_Personas does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Bitacoras  Tripulacion on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Bitacoras"
    CHILD_OWNER="", CHILD_TABLE="Tripulacion"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="Bitacora_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Bitacora_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Bitacoras
        WHERE
          /* %JoinFKPK(inserted,Bitacoras) */
          inserted.Bitacora_ID = Bitacoras.Bitacora_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Bitacora_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Tripulacion because Bitacoras does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Vehiculos ON Vehiculos FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Vehiculos */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Vehiculos  Operacion_Despachos on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0004b2c8", PARENT_OWNER="", PARENT_TABLE="Vehiculos"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="Vehiculo_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Operacion_Despachos
      WHERE
        /*  %JoinFKPK(Operacion_Despachos,deleted," = "," AND") */
        Operacion_Despachos.Vehiculo_ID = deleted.Vehiculo_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Vehiculos because Operacion_Despachos exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Choferes  Vehiculos on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Choferes"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="Chofer_ID" */
    IF EXISTS (SELECT * FROM deleted,Choferes
      WHERE
        /* %JoinFKPK(deleted,Choferes," = "," AND") */
        deleted.Chofer_ID = Choferes.Chofer_ID AND
        NOT EXISTS (
          SELECT * FROM Vehiculos
          WHERE
            /* %JoinFKPK(Vehiculos,Choferes," = "," AND") */
            Vehiculos.Chofer_ID = Choferes.Chofer_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Vehiculos because Choferes exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Modelos_Vehiculo  Vehiculos on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Modelos_Vehiculo"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="Modelo_ID" */
    IF EXISTS (SELECT * FROM deleted,Modelos_Vehiculo
      WHERE
        /* %JoinFKPK(deleted,Modelos_Vehiculo," = "," AND") */
        deleted.Modelo_ID = Modelos_Vehiculo.Modelo_ID AND
        NOT EXISTS (
          SELECT * FROM Vehiculos
          WHERE
            /* %JoinFKPK(Vehiculos,Modelos_Vehiculo," = "," AND") */
            Vehiculos.Modelo_ID = Modelos_Vehiculo.Modelo_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Vehiculos because Modelos_Vehiculo exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cuidades  Vehiculos on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="Destino_Vehiculo" */
    IF EXISTS (SELECT * FROM deleted,Cuidades
      WHERE
        /* %JoinFKPK(deleted,Cuidades," = "," AND") */
        deleted.Destino_Vehiculo = Cuidades.Ciudades_ID AND
        NOT EXISTS (
          SELECT * FROM Vehiculos
          WHERE
            /* %JoinFKPK(Vehiculos,Cuidades," = "," AND") */
            Vehiculos.Destino_Vehiculo = Cuidades.Ciudades_ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Vehiculos because Cuidades exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Vehiculos ON Vehiculos FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Vehiculos */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insVehiculo_ID integer,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Vehiculos  Operacion_Despachos on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00057cfe", PARENT_OWNER="", PARENT_TABLE="Vehiculos"
    CHILD_OWNER="", CHILD_TABLE="Operacion_Despachos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="Vehiculo_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Vehiculo_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Operacion_Despachos
      WHERE
        /*  %JoinFKPK(Operacion_Despachos,deleted," = "," AND") */
        Operacion_Despachos.Vehiculo_ID = deleted.Vehiculo_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Vehiculos because Operacion_Despachos exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Choferes  Vehiculos on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Choferes"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="Chofer_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Chofer_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Choferes
        WHERE
          /* %JoinFKPK(inserted,Choferes) */
          inserted.Chofer_ID = Choferes.Chofer_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Chofer_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Vehiculos because Choferes does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Modelos_Vehiculo  Vehiculos on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Modelos_Vehiculo"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="Modelo_ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Modelo_ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Modelos_Vehiculo
        WHERE
          /* %JoinFKPK(inserted,Modelos_Vehiculo) */
          inserted.Modelo_ID = Modelos_Vehiculo.Modelo_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Modelo_ID IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Vehiculos because Modelos_Vehiculo does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cuidades  Vehiculos on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cuidades"
    CHILD_OWNER="", CHILD_TABLE="Vehiculos"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="Destino_Vehiculo" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Destino_Vehiculo)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cuidades
        WHERE
          /* %JoinFKPK(inserted,Cuidades) */
          inserted.Destino_Vehiculo = Cuidades.Ciudades_ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Destino_Vehiculo IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Vehiculos because Cuidades does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go



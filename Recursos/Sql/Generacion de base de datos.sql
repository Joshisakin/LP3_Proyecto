
CREATE TABLE "Almacenes"
(
  "Almacen_ID"   integer NOT NULL,
  "Despacho_ID"  integer NOT NULL,
  "Seccion_ID"   integer NOT NULL,
  "Recepcion_ID" integer NOT NULL,
  CONSTRAINT "PK_Almacenes" PRIMARY KEY ("Almacen_ID")
)
GO

CREATE TABLE "Asignaciones"
(
  "Asignacion_ID"         integer     NOT NULL,
  "Nombre_de_Desginacion" varchar(40) NOT NULL,
  "Nivel_de_Acceso"       numeric(1)  NOT NULL,
  CONSTRAINT "PK_Asignaciones" PRIMARY KEY ("Asignacion_ID")
)
GO

CREATE TABLE "Banderas"
(
  "Bandera_ID"          integer     NOT NULL,
  "Designacion_Bandera" varchar(30) NOT NULL,
  CONSTRAINT "PK_Banderas" PRIMARY KEY ("Bandera_ID")
)
GO

CREATE TABLE "Bitacoras"
(
  "Bitacora_ID"      integer      NOT NULL,
  "Fecha_de_entrada" datetime     NOT NULL,
  "Nota"             varchar(200) NOT NULL,
  "Ciudades_ID"      integer      NOT NULL,
  CONSTRAINT "PK_Bitacoras" PRIMARY KEY ("Bitacora_ID")
)
GO

CREATE TABLE "Buques"
(
  "Buque_ID"                integer     NOT NULL,
  "Contenedor_ID"           integer     NOT NULL,
  "Carga_ID"                integer     NOT NULL,
  "Nombre"                  varchar(20) NOT NULL,
  "Inspeccion_Ingreso"      integer    ,
  "OMI_ID"                  char(18)   ,
  "Bandera_ID"              integer    ,
  "Solicitud_Atraco"        integer    ,
  "Identificacion_Pasajero" integer    ,
  "Ciudad_destino"          integer    ,
  "Ciudad_Origen"           integer    ,
  CONSTRAINT "PK_Buques" PRIMARY KEY ("Buque_ID")
)
GO

CREATE TABLE "Cargas"
(
  "Carga_ID"     integer     NOT NULL,
  "Peso"         decimal(2)  NOT NULL,
  "Descripcion"  varchar(80) NOT NULL,
  "Procedencia"  integer    ,
  "Mercancia_ID" integer    ,
  CONSTRAINT "PK_Cargas" PRIMARY KEY ("Carga_ID")
)
GO

CREATE TABLE "Cargos_Imputados"
(
  "Delitos_ID"              integer      NOT NULL,
  "Lista_Cargos"            varchar(200) NOT NULL,
  "Fecha_Emision_Detencion" datetime     NOT NULL,
  CONSTRAINT "PK_Cargos_Imputados" PRIMARY KEY ("Delitos_ID")
)
GO

CREATE TABLE "Categoria"
(
  "Categoria_ID"     integer     NOT NULL,
  "Nombre_Categoria" varchar(20) NOT NULL,
  CONSTRAINT "PK_Categoria" PRIMARY KEY ("Categoria_ID")
)
GO

CREATE TABLE "Certificado_Arqueo"
(
  "Arqueo_ID"       integer    NOT NULL,
  "Tamaño"          INT        NOT NULL,
  "Tonelaje"        decimal(2) NOT NULL,
  "Capacidad_Carga" decimal(2) NOT NULL,
  CONSTRAINT "PK_Certificado_Arqueo" PRIMARY KEY ("Arqueo_ID")
)
GO

CREATE TABLE "Choferes"
(
  "Chofer_ID"      integer     NOT NULL,
  "Nombre"         varchar(20) NOT NULL,
  "Edad"           numeric(2)  NOT NULL,
  "Identificacion" varchar(20) NOT NULL,
  CONSTRAINT "PK_Choferes" PRIMARY KEY ("Chofer_ID")
)
GO

CREATE TABLE "Ciudades"
(
  "Ciudades_ID"   integer     NOT NULL,
  "Nombre_Ciudad" varchar(20) NOT NULL,
  "Pais_ID"       integer     NOT NULL,
  CONSTRAINT "PK_Ciudades" PRIMARY KEY ("Ciudades_ID")
)
GO

CREATE TABLE "Contenedores"
(
  "Contenedor_ID"        integer     NOT NULL,
  "Peso"                 decimal(2)  NOT NULL,
  "Descripcion"          varchar(80) NOT NULL,
  "Procedencia"          integer    ,
  "Contenido_Contenedor" integer    ,
  CONSTRAINT "PK_Contenedores" PRIMARY KEY ("Contenedor_ID")
)
GO

CREATE TABLE "Datos_Personas"
(
  "Datos_ID"             integer    NOT NULL,
  "Fecha_de_Nacimineto"  datetime   NOT NULL,
  "Nombre_Apellidos"     char(18)  ,
  "Equipaje_ID"          integer   ,
  "Edad_Campo_Calculado" numeric(2) NOT NULL,
  "Pais_ID"              integer    NOT NULL,
  CONSTRAINT "PK_Datos_Personas" PRIMARY KEY ("Datos_ID")
)
GO

CREATE TABLE "Efectivos_de_Orden"
(
  "Agente_ID"               integer  NOT NULL,
  "Identificacion_Policial" char(18),
  "Datos_ID"                integer ,
  CONSTRAINT "PK_Efectivos_de_Orden" PRIMARY KEY ("Agente_ID")
)
GO

CREATE TABLE "Empresas"
(
  "Empresa_ID"       integer     NOT NULL,
  "Nombre_Empresa"   varchar(20) NOT NULL,
  "Rubro_Empresa_ID" integer     NOT NULL,
  CONSTRAINT "PK_Empresas" PRIMARY KEY ("Empresa_ID")
)
GO

CREATE TABLE "Equipajes"
(
  "Equipaje_ID" integer     NOT NULL,
  "Descripcion" varchar(20) NOT NULL,
  "Peso"        decimal(2)  NOT NULL,
  CONSTRAINT "PK_Equipajes" PRIMARY KEY ("Equipaje_ID")
)
GO

CREATE TABLE "Identificacion_OMI"
(
  "OMI_ID"    char(18) NOT NULL,
  "Arqueo_ID" integer  NOT NULL,
  CONSTRAINT "PK_Identificacion_OMI" PRIMARY KEY ("OMI_ID")
)
GO

CREATE TABLE "Inspecciones"
(
  "Inspeccion_ID"  integer     NOT NULL,
  "Fecha_y_hora"   datetime    NOT NULL,
  "Resultados"     varchar(80) NOT NULL,
  "Requiza_ID"     integer    ,
  "Tipo_Inspec_ID" integer     NOT NULL,
  "Inspector_ID"   integer     NOT NULL,
  "Agente_ID"      integer     NOT NULL,
  CONSTRAINT "PK_Inspecciones" PRIMARY KEY ("Inspeccion_ID")
)
GO

CREATE TABLE "Inspectores"
(
  "Inspector_ID"          integer     NOT NULL,
  "Datos_ID"              integer     NOT NULL,
  "Identificacion_Fiscal" varchar(20) NOT NULL,
  CONSTRAINT "PK_Inspectores" PRIMARY KEY ("Inspector_ID")
)
GO

CREATE TABLE "Listado"
(
  "Listado_ID" integer  NOT NULL,
  "Fecha"      datetime NOT NULL,
  CONSTRAINT "PK_Listado" PRIMARY KEY ("Listado_ID")
)
GO

CREATE TABLE "Listado_Detalle"
(
  "Listado_ID"    integer NOT NULL,
  "Contenedor_ID" integer,
  "Carga_ID"      integer
)
GO

CREATE TABLE "Maquinaria"
(
  "Maquinaria_ID" integer NOT NULL,
  "Tipo_ID"       integer NOT NULL,
  "Operador_ID"   integer NOT NULL,
  CONSTRAINT "PK_Maquinaria" PRIMARY KEY ("Maquinaria_ID")
)
GO

CREATE TABLE "Mercancia"
(
  "Mercancia_ID" integer     NOT NULL,
  "Nombre"       varchar(30) NOT NULL,
  "Precio"       float       NOT NULL,
  "Categoria_ID" integer    ,
  CONSTRAINT "PK_Mercancia" PRIMARY KEY ("Mercancia_ID")
)
GO

CREATE TABLE "Modelos_Vehiculo"
(
  "Modelo_ID"           integer     NOT NULL,
  "Denominacion_Modelo" varchar(20) NOT NULL,
  CONSTRAINT "PK_Modelos_Vehiculo" PRIMARY KEY ("Modelo_ID")
)
GO

CREATE TABLE "Muelle"
(
  "Muelle_ID" integer     NOT NULL,
  "Nombre"    varchar(20) NOT NULL,
  CONSTRAINT "PK_Muelle" PRIMARY KEY ("Muelle_ID")
)
GO

CREATE TABLE "Nacionalidad"
(
  "Duracion_de_estadia" varchar(20),
  "Pasaporte"           varbinary  ,
  "Pais_ID"             integer     NOT NULL,
  "Ciudades_ID"         integer     NOT NULL,
  CONSTRAINT "PK_Nacionalidad" PRIMARY KEY ("Pais_ID")
)
GO

CREATE TABLE "Operacion_Despachos"
(
  "Despacho_ID"       integer NOT NULL,
  "Terminal_Salida"   integer NOT NULL,
  "Terminal_Ingreso"  integer NOT NULL,
  "Vehiculo_ID"       integer NOT NULL,
  "Inspeccion_Salida" integer NOT NULL,
  CONSTRAINT "PK_Operacion_Despachos" PRIMARY KEY ("Despacho_ID")
)
GO

CREATE TABLE "Operacion_Recepcion"
(
  "Contenedor_ID" integer ,
  "Carga_ID"      integer ,
  "Recepcion_ID"  integer  NOT NULL,
  "Fecha"         datetime NOT NULL,
  "Maquinaria_ID" integer ,
  CONSTRAINT "PK_Operacion_Recepcion" PRIMARY KEY ("Recepcion_ID")
)
GO

CREATE TABLE "Operaciones_Muelle"
(
  "Atraco_ID"        integer     NOT NULL,
  "Muelle_ID"        integer     NOT NULL,
  "Buque_ID"         integer     NOT NULL,
  "Descripcion"      varchar(80) NOT NULL,
  "Fecha_y_hora"     datetime    NOT NULL,
  "Solicitud_Salida" integer    ,
  CONSTRAINT "PK_Operaciones_Muelle" PRIMARY KEY ("Atraco_ID")
)
GO

CREATE TABLE "Operador"
(
  "Operador_ID" integer NOT NULL,
  "Datos_ID"    integer NOT NULL,
  CONSTRAINT "PK_Operador" PRIMARY KEY ("Operador_ID")
)
GO

CREATE TABLE "Orden_Envio"
(
  "Buque_ID"   integer NOT NULL,
  "OE_ID"      integer NOT NULL,
  "Listado_ID" integer,
  CONSTRAINT "PK_Orden_Envio" PRIMARY KEY ("OE_ID")
)
GO

CREATE TABLE "Orden_Servicio"
(
  "Empresa_ID" integer NOT NULL,
  "OS_ID"      integer NOT NULL,
  "Listado_ID" integer,
  "OE_ID"      integer,
  CONSTRAINT "PK_Orden_Servicio" PRIMARY KEY ("OS_ID")
)
GO

CREATE TABLE "Pais"
(
  "Pais_ID"     integer     NOT NULL,
  "Nombre_Pais" varchar(20) NOT NULL,
  "Ciudades_ID" integer     NOT NULL,
  CONSTRAINT "PK_Pais" PRIMARY KEY ("Pais_ID")
)
GO

CREATE TABLE "Pasajeros"
(
  "Identificacion_Pasajero" integer NOT NULL,
  "Datos_ID"                integer NOT NULL,
  CONSTRAINT "PK_Pasajeros" PRIMARY KEY ("Identificacion_Pasajero")
)
GO

CREATE TABLE "Patio_de_Contenedores"
(
  "Patio_ID"     integer NOT NULL,
  "Despacho_ID"  integer NOT NULL,
  "Seccion_ID"   integer NOT NULL,
  "Recepcion_ID" integer NOT NULL,
  CONSTRAINT "PK_Patio_de_Contenedores" PRIMARY KEY ("Patio_ID")
)
GO

CREATE TABLE "Personas_Requizadas"
(
  "Requisitoradios_ID"   integer     NOT NULL,
  "Descripcion_Corporal" varchar(20) NOT NULL,
  "Datos_ID"             integer     NOT NULL,
  "Delitos_ID"           integer     NOT NULL,
  CONSTRAINT "PK_Personas_Requizadas" PRIMARY KEY ("Requisitoradios_ID")
)
GO

CREATE TABLE "Requizados"
(
  "Requiza_ID"         integer      NOT NULL,
  "Objetos"            varchar(120) NOT NULL,
  "Requisitoradios_ID" integer     ,
  CONSTRAINT "PK_Requizados" PRIMARY KEY ("Requiza_ID")
)
GO

CREATE TABLE "Rubros_Empresas"
(
  "Rubro_Empresa_ID"  integer     NOT NULL,
  "Designacion_Rubro" varchar(30) NOT NULL,
  CONSTRAINT "PK_Rubros_Empresas" PRIMARY KEY ("Rubro_Empresa_ID")
)
GO

CREATE TABLE "Secciones"
(
  "Seccion_ID"         integer    NOT NULL,
  "Numeracion_Seccion" varchar(4) NOT NULL,
  CONSTRAINT "PK_Secciones" PRIMARY KEY ("Seccion_ID")
)
GO

CREATE TABLE "Solicitudes"
(
  "Solicitud_ID"         integer   NOT NULL,
  "Hora_Primer_Contacto" datetime ,
  "Estado_Aprobacion"    varbinary NOT NULL,
  CONSTRAINT "PK_Solicitudes" PRIMARY KEY ("Solicitud_ID")
)
GO

CREATE TABLE "Terminales"
(
  "Terminal_ID"    integer     NOT NULL,
  "Identificacion" varchar(20) NOT NULL,
  CONSTRAINT "PK_Terminales" PRIMARY KEY ("Terminal_ID")
)
GO

CREATE TABLE "Tipo_de_Inspeccion"
(
  "Tipo_Inspec_ID"   integer     NOT NULL,
  "Designacion_Tipo" varchar(20) NOT NULL,
  CONSTRAINT "PK_Tipo_de_Inspeccion" PRIMARY KEY ("Tipo_Inspec_ID")
)
GO

CREATE TABLE "Tipo_Maquinaria"
(
  "Tipo_ID"                     integer     NOT NULL,
  "Designacion_Tipo_Maquinaria" varchar(20) NOT NULL,
  CONSTRAINT "PK_Tipo_Maquinaria" PRIMARY KEY ("Tipo_ID")
)
GO

CREATE TABLE "Tripulacion"
(
  "Asignacion_ID"             integer NOT NULL,
  "Identificacion_Tripulante" integer,
  "Datos_ID"                  integer NOT NULL,
  "Bitacora_ID"               integer
)
GO

CREATE TABLE "Vehiculos"
(
  "Vehiculo_ID"      integer     NOT NULL,
  "Capacidad"        decimal(2)  NOT NULL,
  "Matricula"        varchar(20) NOT NULL,
  "Chofer_ID"        integer     NOT NULL,
  "Modelo_ID"        integer     NOT NULL,
  "Destino_Vehiculo" integer     NOT NULL,
  "OS_ID"            integer    ,
  CONSTRAINT "PK_Vehiculos" PRIMARY KEY ("Vehiculo_ID")
)
GO

ALTER TABLE "Almacenes"
  ADD CONSTRAINT "FK_Operacion_Despachos_TO_Almacenes"
    FOREIGN KEY ("Despacho_ID")
    REFERENCES "Operacion_Despachos" ("Despacho_ID")
GO

ALTER TABLE "Almacenes"
  ADD CONSTRAINT "FK_Secciones_TO_Almacenes"
    FOREIGN KEY ("Seccion_ID")
    REFERENCES "Secciones" ("Seccion_ID")
GO

ALTER TABLE "Almacenes"
  ADD CONSTRAINT "FK_Operacion_Recepcion_TO_Almacenes"
    FOREIGN KEY ("Recepcion_ID")
    REFERENCES "Operacion_Recepcion" ("Recepcion_ID")
GO

ALTER TABLE "Buques"
  ADD CONSTRAINT "FK_Contenedores_TO_Buques"
    FOREIGN KEY ("Contenedor_ID")
    REFERENCES "Contenedores" ("Contenedor_ID")
GO

ALTER TABLE "Buques"
  ADD CONSTRAINT "FK_Cargas_TO_Buques"
    FOREIGN KEY ("Carga_ID")
    REFERENCES "Cargas" ("Carga_ID")
GO

ALTER TABLE "Buques"
  ADD CONSTRAINT "FK_Identificacion_OMI_TO_Buques"
    FOREIGN KEY ("OMI_ID")
    REFERENCES "Identificacion_OMI" ("OMI_ID")
GO

ALTER TABLE "Buques"
  ADD CONSTRAINT "FK_Banderas_TO_Buques"
    FOREIGN KEY ("Bandera_ID")
    REFERENCES "Banderas" ("Bandera_ID")
GO

ALTER TABLE "Buques"
  ADD CONSTRAINT "FK_Pasajeros_TO_Buques"
    FOREIGN KEY ("Identificacion_Pasajero")
    REFERENCES "Pasajeros" ("Identificacion_Pasajero")
GO

ALTER TABLE "Buques"
  ADD CONSTRAINT "FK_Solicitudes_TO_Buques"
    FOREIGN KEY ("Solicitud_Atraco")
    REFERENCES "Solicitudes" ("Solicitud_ID")
GO

ALTER TABLE "Cargas"
  ADD CONSTRAINT "FK_Mercancia_TO_Cargas"
    FOREIGN KEY ("Mercancia_ID")
    REFERENCES "Mercancia" ("Mercancia_ID")
GO

ALTER TABLE "Contenedores"
  ADD CONSTRAINT "FK_Cargas_TO_Contenedores"
    FOREIGN KEY ("Contenido_Contenedor")
    REFERENCES "Cargas" ("Carga_ID")
GO

ALTER TABLE "Datos_Personas"
  ADD CONSTRAINT "FK_Equipajes_TO_Datos_Personas"
    FOREIGN KEY ("Equipaje_ID")
    REFERENCES "Equipajes" ("Equipaje_ID")
GO

ALTER TABLE "Efectivos_de_Orden"
  ADD CONSTRAINT "FK_Datos_Personas_TO_Efectivos_de_Orden"
    FOREIGN KEY ("Datos_ID")
    REFERENCES "Datos_Personas" ("Datos_ID")
GO

ALTER TABLE "Empresas"
  ADD CONSTRAINT "FK_Rubros_Empresas_TO_Empresas"
    FOREIGN KEY ("Rubro_Empresa_ID")
    REFERENCES "Rubros_Empresas" ("Rubro_Empresa_ID")
GO

ALTER TABLE "Identificacion_OMI"
  ADD CONSTRAINT "FK_Certificado_Arqueo_TO_Identificacion_OMI"
    FOREIGN KEY ("Arqueo_ID")
    REFERENCES "Certificado_Arqueo" ("Arqueo_ID")
GO

ALTER TABLE "Inspecciones"
  ADD CONSTRAINT "FK_Requizados_TO_Inspecciones"
    FOREIGN KEY ("Requiza_ID")
    REFERENCES "Requizados" ("Requiza_ID")
GO

ALTER TABLE "Inspecciones"
  ADD CONSTRAINT "FK_Tipo_de_Inspeccion_TO_Inspecciones"
    FOREIGN KEY ("Tipo_Inspec_ID")
    REFERENCES "Tipo_de_Inspeccion" ("Tipo_Inspec_ID")
GO

ALTER TABLE "Inspecciones"
  ADD CONSTRAINT "FK_Inspectores_TO_Inspecciones"
    FOREIGN KEY ("Inspector_ID")
    REFERENCES "Inspectores" ("Inspector_ID")
GO

ALTER TABLE "Inspecciones"
  ADD CONSTRAINT "FK_Efectivos_de_Orden_TO_Inspecciones"
    FOREIGN KEY ("Agente_ID")
    REFERENCES "Efectivos_de_Orden" ("Agente_ID")
GO

ALTER TABLE "Inspectores"
  ADD CONSTRAINT "FK_Datos_Personas_TO_Inspectores"
    FOREIGN KEY ("Datos_ID")
    REFERENCES "Datos_Personas" ("Datos_ID")
GO

ALTER TABLE "Listado_Detalle"
  ADD CONSTRAINT "FK_Listado_TO_Listado_Detalle"
    FOREIGN KEY ("Listado_ID")
    REFERENCES "Listado" ("Listado_ID")
GO

ALTER TABLE "Listado_Detalle"
  ADD CONSTRAINT "FK_Contenedores_TO_Listado_Detalle"
    FOREIGN KEY ("Contenedor_ID")
    REFERENCES "Contenedores" ("Contenedor_ID")
GO

ALTER TABLE "Listado_Detalle"
  ADD CONSTRAINT "FK_Cargas_TO_Listado_Detalle"
    FOREIGN KEY ("Carga_ID")
    REFERENCES "Cargas" ("Carga_ID")
GO

ALTER TABLE "Maquinaria"
  ADD CONSTRAINT "FK_Tipo_Maquinaria_TO_Maquinaria"
    FOREIGN KEY ("Tipo_ID")
    REFERENCES "Tipo_Maquinaria" ("Tipo_ID")
GO

ALTER TABLE "Maquinaria"
  ADD CONSTRAINT "FK_Operador_TO_Maquinaria"
    FOREIGN KEY ("Operador_ID")
    REFERENCES "Operador" ("Operador_ID")
GO

ALTER TABLE "Mercancia"
  ADD CONSTRAINT "FK_Categoria_TO_Mercancia"
    FOREIGN KEY ("Categoria_ID")
    REFERENCES "Categoria" ("Categoria_ID")
GO

ALTER TABLE "Nacionalidad"
  ADD CONSTRAINT "FK_Pais_TO_Nacionalidad"
    FOREIGN KEY ("Pais_ID")
    REFERENCES "Pais" ("Pais_ID")
GO

ALTER TABLE "Operacion_Despachos"
  ADD CONSTRAINT "FK_Terminales_TO_Operacion_Despachos"
    FOREIGN KEY ("Terminal_Salida")
    REFERENCES "Terminales" ("Terminal_ID")
GO

ALTER TABLE "Operacion_Despachos"
  ADD CONSTRAINT "FK_Vehiculos_TO_Operacion_Despachos"
    FOREIGN KEY ("Vehiculo_ID")
    REFERENCES "Vehiculos" ("Vehiculo_ID")
GO

ALTER TABLE "Operacion_Despachos"
  ADD CONSTRAINT "FK_Inspecciones_TO_Operacion_Despachos"
    FOREIGN KEY ("Inspeccion_Salida")
    REFERENCES "Inspecciones" ("Inspeccion_ID")
GO

ALTER TABLE "Operacion_Despachos"
  ADD CONSTRAINT "FK_Terminales_TO_Operacion_Despachos1"
    FOREIGN KEY ("Terminal_Ingreso")
    REFERENCES "Terminales" ("Terminal_ID")
GO

ALTER TABLE "Operacion_Recepcion"
  ADD CONSTRAINT "FK_Contenedores_TO_Operacion_Recepcion"
    FOREIGN KEY ("Contenedor_ID")
    REFERENCES "Contenedores" ("Contenedor_ID")
GO

ALTER TABLE "Operacion_Recepcion"
  ADD CONSTRAINT "FK_Cargas_TO_Operacion_Recepcion"
    FOREIGN KEY ("Carga_ID")
    REFERENCES "Cargas" ("Carga_ID")
GO

ALTER TABLE "Operacion_Recepcion"
  ADD CONSTRAINT "FK_Maquinaria_TO_Operacion_Recepcion"
    FOREIGN KEY ("Maquinaria_ID")
    REFERENCES "Maquinaria" ("Maquinaria_ID")
GO

ALTER TABLE "Operaciones_Muelle"
  ADD CONSTRAINT "FK_Muelle_TO_Operaciones_Muelle"
    FOREIGN KEY ("Muelle_ID")
    REFERENCES "Muelle" ("Muelle_ID")
GO

ALTER TABLE "Operaciones_Muelle"
  ADD CONSTRAINT "FK_Buques_TO_Operaciones_Muelle"
    FOREIGN KEY ("Buque_ID")
    REFERENCES "Buques" ("Buque_ID")
GO

ALTER TABLE "Operaciones_Muelle"
  ADD CONSTRAINT "FK_Solicitudes_TO_Operaciones_Muelle"
    FOREIGN KEY ("Solicitud_Salida")
    REFERENCES "Solicitudes" ("Solicitud_ID")
GO

ALTER TABLE "Operador"
  ADD CONSTRAINT "FK_Datos_Personas_TO_Operador"
    FOREIGN KEY ("Datos_ID")
    REFERENCES "Datos_Personas" ("Datos_ID")
GO

ALTER TABLE "Orden_Envio"
  ADD CONSTRAINT "FK_Buques_TO_Orden_Envio"
    FOREIGN KEY ("Buque_ID")
    REFERENCES "Buques" ("Buque_ID")
GO

ALTER TABLE "Orden_Envio"
  ADD CONSTRAINT "FK_Listado_TO_Orden_Envio"
    FOREIGN KEY ("Listado_ID")
    REFERENCES "Listado" ("Listado_ID")
GO

ALTER TABLE "Orden_Servicio"
  ADD CONSTRAINT "FK_Empresas_TO_Orden_Servicio"
    FOREIGN KEY ("Empresa_ID")
    REFERENCES "Empresas" ("Empresa_ID")
GO

ALTER TABLE "Orden_Servicio"
  ADD CONSTRAINT "FK_Listado_TO_Orden_Servicio"
    FOREIGN KEY ("Listado_ID")
    REFERENCES "Listado" ("Listado_ID")
GO

ALTER TABLE "Orden_Servicio"
  ADD CONSTRAINT "FK_Orden_Envio_TO_Orden_Servicio"
    FOREIGN KEY ("OE_ID")
    REFERENCES "Orden_Envio" ("OE_ID")
GO

ALTER TABLE "Pasajeros"
  ADD CONSTRAINT "FK_Datos_Personas_TO_Pasajeros"
    FOREIGN KEY ("Datos_ID")
    REFERENCES "Datos_Personas" ("Datos_ID")
GO

ALTER TABLE "Patio_de_Contenedores"
  ADD CONSTRAINT "FK_Operacion_Despachos_TO_Patio_de_Contenedores"
    FOREIGN KEY ("Despacho_ID")
    REFERENCES "Operacion_Despachos" ("Despacho_ID")
GO

ALTER TABLE "Patio_de_Contenedores"
  ADD CONSTRAINT "FK_Secciones_TO_Patio_de_Contenedores"
    FOREIGN KEY ("Seccion_ID")
    REFERENCES "Secciones" ("Seccion_ID")
GO

ALTER TABLE "Patio_de_Contenedores"
  ADD CONSTRAINT "FK_Operacion_Recepcion_TO_Patio_de_Contenedores"
    FOREIGN KEY ("Recepcion_ID")
    REFERENCES "Operacion_Recepcion" ("Recepcion_ID")
GO

ALTER TABLE "Personas_Requizadas"
  ADD CONSTRAINT "FK_Datos_Personas_TO_Personas_Requizadas"
    FOREIGN KEY ("Datos_ID")
    REFERENCES "Datos_Personas" ("Datos_ID")
GO

ALTER TABLE "Personas_Requizadas"
  ADD CONSTRAINT "FK_Cargos_Imputados_TO_Personas_Requizadas"
    FOREIGN KEY ("Delitos_ID")
    REFERENCES "Cargos_Imputados" ("Delitos_ID")
GO

ALTER TABLE "Requizados"
  ADD CONSTRAINT "FK_Personas_Requizadas_TO_Requizados"
    FOREIGN KEY ("Requisitoradios_ID")
    REFERENCES "Personas_Requizadas" ("Requisitoradios_ID")
GO

ALTER TABLE "Tripulacion"
  ADD CONSTRAINT "FK_Asignaciones_TO_Tripulacion"
    FOREIGN KEY ("Asignacion_ID")
    REFERENCES "Asignaciones" ("Asignacion_ID")
GO

ALTER TABLE "Tripulacion"
  ADD CONSTRAINT "FK_Datos_Personas_TO_Tripulacion"
    FOREIGN KEY ("Datos_ID")
    REFERENCES "Datos_Personas" ("Datos_ID")
GO

ALTER TABLE "Tripulacion"
  ADD CONSTRAINT "FK_Bitacoras_TO_Tripulacion"
    FOREIGN KEY ("Bitacora_ID")
    REFERENCES "Bitacoras" ("Bitacora_ID")
GO

ALTER TABLE "Vehiculos"
  ADD CONSTRAINT "FK_Choferes_TO_Vehiculos"
    FOREIGN KEY ("Chofer_ID")
    REFERENCES "Choferes" ("Chofer_ID")
GO

ALTER TABLE "Vehiculos"
  ADD CONSTRAINT "FK_Modelos_Vehiculo_TO_Vehiculos"
    FOREIGN KEY ("Modelo_ID")
    REFERENCES "Modelos_Vehiculo" ("Modelo_ID")
GO

ALTER TABLE "Vehiculos"
  ADD CONSTRAINT "FK_Orden_Servicio_TO_Vehiculos"
    FOREIGN KEY ("OS_ID")
    REFERENCES "Orden_Servicio" ("OS_ID")
GO

ALTER TABLE "Datos_Personas"
  ADD CONSTRAINT "FK_Nacionalidad_TO_Datos_Personas"
    FOREIGN KEY ("Pais_ID")
    REFERENCES "Nacionalidad" ("Pais_ID")
GO

ALTER TABLE "Nacionalidad"
  ADD CONSTRAINT "FK_Ciudades_TO_Nacionalidad"
    FOREIGN KEY ("Ciudades_ID")
    REFERENCES "Ciudades" ("Ciudades_ID")
GO

ALTER TABLE "Buques"
  ADD CONSTRAINT "FK_Ciudades_TO_Buques"
    FOREIGN KEY ("Ciudad_destino")
    REFERENCES "Ciudades" ("Ciudades_ID")
GO

ALTER TABLE "Buques"
  ADD CONSTRAINT "FK_Ciudades_TO_Buques1"
    FOREIGN KEY ("Ciudad_Origen")
    REFERENCES "Ciudades" ("Ciudades_ID")
GO

ALTER TABLE "Buques"
  ADD CONSTRAINT "FK_Inspecciones_TO_Buques"
    FOREIGN KEY ("Inspeccion_Ingreso")
    REFERENCES "Inspecciones" ("Inspeccion_ID")
GO

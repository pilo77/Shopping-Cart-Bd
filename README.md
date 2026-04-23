# Shopping Cart DB

Repositorio responsable del versionamiento y la gestión de la base de datos para el sistema Shopping Cart, construido con PostgreSQL y Liquibase.

## Descripción general

Este proyecto mantiene la definición de la estructura de datos y su evolución mediante scripts controlados. El enfoque principal es garantizar que los cambios en la base de datos sean reproducibles, rastreables y compatibles con el ciclo de desarrollo.

## Qué incluye

- Gestión de la extensión `uuid-ossp`
- Esquemas para seguridad, inventario y facturación
- Tablas base de seguridad, inventario y facturación
- Changelogs organizados por capas para DDL, DML, DCL y TCL
- Scripts de rollback específicos para cada cambio

## Qué no incluye aún

- Vistas
- Funciones
- Procedimientos almacenados
- Triggers
- Índices adicionales
- Datos de semilla

## Estructura principal

### `01_ddl`
Contiene los cambios de esquema: extensiones, esquemas, tipos, tablas y vistas.

### `02_dml`
Incluye scripts de inserción, actualización, eliminación, upsert y parches de datos.

### `03_dcl`
Define roles, permisos y políticas de seguridad.

### `04_tcl`
Agrupa scripts transaccionales y de recuperación.

### `05_rollbacks`
Almacena los scripts necesarios para revertir los cambios aplicados.

## Cómo ejecutar

1. Abrir una terminal en la carpeta del proyecto.
2. Iniciar el servicio de PostgreSQL:

   `docker-compose up -d postgres`

3. Aplicar los cambios de la base de datos con Liquibase:

   `docker-compose run --rm liquibase update`

4. Verificar el estado de los contenedores:

   `docker ps`

## Repositorios relacionados

- Base de datos: https://github.com/pilo77/Shopping-Cart-Bd/tree/dev
- Frontend: https://github.com/pilo77/Shopping-Cart-Frontend/tree/dev
- Backend: https://github.com/pilo77/Shopping-Cart-Backend/tree/dev

# GuÃ­a de ConfiguraciÃ³n de Base de Datos para Backend - Shopping Cart

Esta guÃ­a proporciona las instrucciones para configurar y conectar la base de datos PostgreSQL del proyecto Shopping Cart desde el backend.

## Prerrequisitos

- Docker y Docker Compose instalados en tu sistema.
- Acceso al repositorio de la base de datos: [Shopping-Cart-Bd](https://github.com/pilo77/Shopping-Cart-Bd/tree/dev)

## ConfiguraciÃ³n Inicial

1. **Clona el repositorio de la base de datos:**
   ```bash
  git clone https://github.com/pilo77/Shopping-Cart-Bd.git
   cd Shopping-Cart-Bd
   ```

2. **Inicia la base de datos PostgreSQL:**
   ```bash
   docker-compose up -d postgres
   ```

3. **Aplica las migraciones de base de datos:**
   ```bash
   docker-compose --profile tooling run --rm liquibase update
   ```

4. **Verifica que los contenedores estÃ©n ejecutÃ¡ndose:**
   ```bash
   docker ps
   ```
   DeberÃ­as ver el contenedor `shopping-cart-db-postgres-1` en estado `Up`.

## Detalles de ConexiÃ³n

Para conectar tu backend a la base de datos, utiliza los siguientes parÃ¡metros:

- **Host:** `localhost`
- **Puerto:** `5433`
- **Base de datos:** `shopping_cart`
- **Usuario:** `shopping_cart_user`
- **ContraseÃ±a:** `shopping_cart_password`

### Cadena de ConexiÃ³n JDBC (para Java/Spring Boot)
```
jdbc:postgresql://localhost:5433/shopping_cart?user=shopping_cart_user&password=shopping_cart_password
```

### Cadena de ConexiÃ³n GenÃ©rica
```
postgresql://shopping_cart_user:shopping_cart_password@localhost:5433/shopping_cart
```

### Variables de Entorno Recomendadas
Agrega estas variables a tu archivo de configuraciÃ³n del backend:
```env
DB_HOST=localhost
DB_PORT=5433
DB_NAME=shopping_cart
DB_USER=shopping_cart_user
DB_PASSWORD=shopping_cart_password
```

## Esquema de la Base de Datos

La base de datos incluye los siguientes esquemas principales:

- **security:** Tablas relacionadas con autenticaciÃ³n y autorizaciÃ³n de usuarios
- **inventory:** GestiÃ³n de productos, categorÃ­as y stock
- **billing:** Ã“rdenes de compra, facturaciÃ³n y pagos

### Tablas Principales
- `security.users` - InformaciÃ³n de usuarios
- `security.roles` - Roles de usuario
- `inventory.products` - CatÃ¡logo de productos
- `inventory.categories` - CategorÃ­as de productos
- `billing.orders` - Ã“rdenes de compra
- `billing.order_items` - Detalles de Ã³rdenes

## Comandos Ãštiles

- **Detener la base de datos:**
  ```bash
  docker-compose down
  ```

- **Ver logs de la base de datos:**
  ```bash
  docker-compose logs postgres
  ```

- **Reiniciar la base de datos:**
  ```bash
  docker-compose restart postgres
  ```

- **Aplicar rollback de migraciones (si es necesario):**
  ```bash
  docker-compose --profile tooling run --rm liquibase rollbackCount 1
  ```

## SoluciÃ³n de Problemas

- **Error de conexiÃ³n:** Verifica que el puerto 5433 no estÃ© ocupado por otra aplicaciÃ³n.
- **Migraciones fallidas:** Revisa los logs con `docker-compose logs liquibase`.
- **Cambios en la configuraciÃ³n:** Si necesitas modificar credenciales, edita el archivo `docker-compose.yml` o crea un archivo `.env`.

## Repositorios Relacionados

- **Base de datos:** [Shopping-Cart-Bd](https://github.com/pilo77/Shopping-Cart-Bd/tree/dev)
- **Backend:** [Shopping-Cart-Backend](https://github.com/pilo77/Shopping-Cart-Backend/tree/dev)
- **Frontend:** [Shopping-Cart-Frontend](https://github.com/pilo77/Shopping-Cart-Frontend/tree/dev)

---

Para mÃ¡s detalles tÃ©cnicos sobre la estructura de la base de datos, consulta el README principal en el repositorio de la BD.</content>
<parameter name="filePath">c:\Users\crack\Desktop\Carrito de compra\Bd\shopping-cart-bd\README-backend.md

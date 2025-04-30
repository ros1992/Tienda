-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-03-2025 a las 16:25:31
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `supermercado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL,
  `nombre` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'Alimentos frescos\n'),
(4, 'Alimentos secos y envasados\n'),
(5, 'Verduras'),
(7, 'Congelados'),
(8, 'Bebidas'),
(9, 'Snack y golosinas'),
(10, ' higiene personal'),
(12, 'Limpieza del hogar'),
(13, ' Bebes '),
(14, 'Mascota'),
(17, 'Otros\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` bigint NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `documento` bigint NOT NULL,
  `fecha_de_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `documento`, `fecha_de_creacion`) VALUES
(24, 'David', 1092733808, '2025-02-13 20:35:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_pendientes`
--

CREATE TABLE `cuentas_pendientes` (
  `id` bigint NOT NULL,
  `documento` bigint NOT NULL,
  `abono` bigint NOT NULL,
  `estado` int NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `orden_servicio` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `documento` bigint NOT NULL,
  `descripcion` json NOT NULL,
  `descuento` bigint DEFAULT NULL,
  `totalF` bigint NOT NULL,
  `debe` bigint DEFAULT NULL,
  `mp` int NOT NULL,
  `fecha_de_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`orden_servicio`, `nombre`, `documento`, `descripcion`, `descuento`, `totalF`, `debe`, `mp`, `fecha_de_creacion`) VALUES
(877, 'Keiner Reyes', 1065884332, '[{\"UP\": null, \"total\": 14000, \"estado\": 0, \"nombre\": \"Arroz Diana\", \"precio\": 2800, \"precioC\": 2400, \"cantidad\": \"5\", \"referencia\": \"123456grd\", \"precioVenta\": 2800, \"id_categoria\": 4, \"id_productos\": 17798, \"categoria_nombre\": \"Alimentos secos y envasados\", \"fecha_de_creacion\": \"2025-02-13 15:32:13\", \"fecha_de_vencimiento\": \"2026-02-13\"}, {\"UP\": \"kilogramos\", \"total\": 43000, \"estado\": 1, \"nombre\": \"Papa pastusa\", \"precio\": 4300, \"precioC\": 3500, \"cantidad\": \"10\", \"referencia\": \"papaT\", \"precioVenta\": 4300, \"id_categoria\": 5, \"id_productos\": 17799, \"categoria_nombre\": \"Verduras\", \"fecha_de_creacion\": \"2025-02-13 15:33:39\", \"fecha_de_vencimiento\": null}]', 0, 57000, NULL, 1, '2025-02-13 20:34:32'),
(878, 'David', 1092733808, '[{\"UP\": \"kilogramos\", \"total\": 86000, \"estado\": 1, \"nombre\": \"Papa pastusa\", \"precio\": 4300, \"precioC\": 3500, \"cantidad\": \"20\", \"referencia\": \"papaT\", \"precioVenta\": 4300, \"id_categoria\": 5, \"id_productos\": 17799, \"categoria_nombre\": \"Verduras\", \"fecha_de_creacion\": \"2025-02-13 15:33:39\", \"fecha_de_vencimiento\": null}]', 8600, 77400, NULL, 2, '2025-02-13 20:35:21'),
(879, 'Keiner Reyes', 1065884332, '[{\"UP\": \"kilogramos\", \"total\": 8000, \"estado\": 1, \"nombre\": \"manazana\", \"precio\": 4000, \"precioC\": 3000, \"cantidad\": \"2\", \"referencia\": \"fru123\", \"precioVenta\": 4000, \"id_categoria\": 1, \"id_productos\": 17800, \"categoria_nombre\": \"Alimentos frescos\", \"fecha_de_creacion\": \"2025-02-17 09:51:09\", \"fecha_de_vencimiento\": null}]', 0, 8000, NULL, 1, '2025-02-17 14:51:33'),
(880, 'David', 1092733808, '[{\"UP\": null, \"total\": 84000, \"estado\": 0, \"nombre\": \"Arroz Diana\", \"precio\": 2800, \"precioC\": 2400, \"cantidad\": \"30\", \"referencia\": \"123456grd\", \"precioVenta\": 2800, \"id_categoria\": 4, \"id_productos\": 17798, \"categoria_nombre\": \"Alimentos secos y envasados\", \"fecha_de_creacion\": \"2025-02-13 15:32:13\", \"fecha_de_vencimiento\": \"2026-02-13\"}]', 0, 84000, NULL, 1, '2025-02-17 14:52:26'),
(881, 'Keiner Reyes', 1065884332, '[{\"UP\": \"kilogramos\", \"total\": 8000, \"estado\": 1, \"nombre\": \"manazana\", \"precio\": 4000, \"precioC\": 3000, \"cantidad\": \"2\", \"referencia\": \"fru123\", \"precioVenta\": 4000, \"id_categoria\": 1, \"id_productos\": 17800, \"categoria_nombre\": \"Alimentos frescos\", \"fecha_de_creacion\": \"2025-02-17 09:51:09\", \"fecha_de_vencimiento\": null}]', 0, 8000, NULL, 1, '2025-02-17 15:05:06'),
(882, 'Keiner Reyes', 1065884332, '[{\"UP\": null, \"total\": 28000, \"estado\": 0, \"nombre\": \"Arroz Diana\", \"precio\": 2800, \"precioC\": 2400, \"cantidad\": \"10\", \"referencia\": \"123456grd\", \"precioVenta\": 2800, \"id_categoria\": 4, \"id_productos\": 17798, \"categoria_nombre\": \"Alimentos secos y envasados\", \"fecha_de_creacion\": \"2025-02-13 15:32:13\", \"fecha_de_vencimiento\": \"2026-02-13\"}]', 0, 28000, NULL, 1, '2025-02-28 21:22:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturaseliminadas`
--

CREATE TABLE `facturaseliminadas` (
  `id` int NOT NULL,
  `orden_servicio` bigint NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `documento` bigint NOT NULL,
  `descripcion` json NOT NULL,
  `total` bigint NOT NULL,
  `fecha_de_creacion` timestamp NOT NULL,
  `fecha de eliminacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `problema` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ganancias_diarias`
--

CREATE TABLE `ganancias_diarias` (
  `id` bigint NOT NULL,
  `documento` bigint NOT NULL,
  `Total_G` bigint NOT NULL,
  `mp` int NOT NULL,
  `fecha_de_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ganancias_diarias`
--

INSERT INTO `ganancias_diarias` (`id`, `documento`, `Total_G`, `mp`, `fecha_de_creacion`) VALUES
(462, 1065884332, 57000, 1, '2025-02-13 20:34:32'),
(463, 1092733808, 77400, 2, '2025-02-13 20:35:21'),
(464, 1065884332, 8000, 1, '2025-02-17 14:51:33'),
(465, 1092733808, 84000, 1, '2025-02-17 14:52:26'),
(466, 1065884332, 8000, 1, '2025-02-17 15:05:06'),
(467, 1065884332, 28000, 1, '2025-02-28 21:22:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id_gasto` int NOT NULL,
  `descripcion` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `precio` bigint NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id_gasto`, `descripcion`, `precio`, `fecha_registro`) VALUES
(51, 'Compro 50  de Arroz Diana', 120000, '2025-02-13 20:32:13'),
(52, 'Compro 50 kg de Papa pastusa', 175000, '2025-02-13 20:33:39'),
(53, 'Compro 25  de arroz', 50000, '2025-02-28 22:26:53'),
(54, 'Compro 20 kg de papa', 40000, '2025-02-28 22:30:51'),
(55, 'Compro 20  de jabon', 50000, '2025-02-28 22:31:27'),
(56, 'Compro 30 unidad de jabon', 75000, '2025-02-28 22:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` bigint NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `referencia` varchar(300) NOT NULL,
  `cantidad` varchar(200) NOT NULL,
  `precio` bigint NOT NULL,
  `precioC` bigint NOT NULL,
  `fecha_de_vencimiento` date DEFAULT NULL,
  `estado` int NOT NULL DEFAULT '0',
  `id_categoria` int DEFAULT NULL,
  `fecha_de_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `nombre`, `referencia`, `cantidad`, `precio`, `precioC`, `fecha_de_vencimiento`, `estado`, `id_categoria`, `fecha_de_creacion`) VALUES
(17799, 'Papa pastusa', 'papaT', '20', 4300, 3500, NULL, 1, 5, '2025-02-13 20:33:39'),
(17800, 'manazana', 'fru123', '21', 4000, 3000, NULL, 1, 1, '2025-02-17 14:51:09'),
(17801, 'arroz', 'dddddd', '25', 2500, 2000, '2025-02-20', 0, 4, '2025-02-28 22:26:52'),
(17802, 'papa', 'papa', '20', 2500, 2000, NULL, 1, 5, '2025-02-28 22:30:51'),
(17803, 'jabon', 'ffggg', '50', 3000, 2500, NULL, 0, 10, '2025-02-28 22:31:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `rol` int NOT NULL,
  `nombre_rol` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`rol`, `nombre_rol`) VALUES
(1, 'Trabajador'),
(2, 'Cliente'),
(3, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` int NOT NULL DEFAULT '0',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `rol`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Keiner Reyes Admin', 'keinergonez@gmail.com', NULL, '$2y$12$dh4KDwpQqlwpcZuAz05P6OhVa9gKGWRChymJLoZOYNnF.sEuRemIi', 1, NULL, '2025-01-13 18:45:48', '2025-01-13 18:45:48'),
(10, 'David Joseph Admin', 'josephnoriega1511@gmail.com', NULL, '$2y$12$C0tN2ysJEg9IeecwT7dCOOcL5EwLjFLkhctC46/UlrSX.IplnqMpS', 1, NULL, '2025-01-13 18:47:35', '2025-01-13 18:47:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `cuentas_pendientes`
--
ALTER TABLE `cuentas_pendientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`orden_servicio`);

--
-- Indices de la tabla `facturaseliminadas`
--
ALTER TABLE `facturaseliminadas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `ganancias_diarias`
--
ALTER TABLE `ganancias_diarias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id_gasto`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`rol`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `cuentas_pendientes`
--
ALTER TABLE `cuentas_pendientes`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `orden_servicio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=883;

--
-- AUTO_INCREMENT de la tabla `facturaseliminadas`
--
ALTER TABLE `facturaseliminadas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ganancias_diarias`
--
ALTER TABLE `ganancias_diarias`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id_gasto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17804;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `rol` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

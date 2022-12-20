-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-06-2022 a las 06:35:25
-- Versión del servidor: 10.5.15-MariaDB-0+deb11u1
-- Versión de PHP: 7.4.28

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comprobante`
--
CREATE DATABASE IF NOT EXISTS `comprobante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `comprobante`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anulados`
--

CREATE TABLE `anulados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nrocomprobante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `comprobante_id` bigint(20) UNSIGNED DEFAULT 1,
  `unid_id` bigint(20) UNSIGNED DEFAULT 16,
  `user_id` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ci` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expedido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `paterno` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `materno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `padron` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `casada` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `numcasa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_empresa`
--

CREATE TABLE `cliente_empresa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nrotramite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nrocomprobante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `fecha` date DEFAULT NULL,
  `fechalimite` date DEFAULT NULL,
  `fechapago` datetime DEFAULT NULL,
  `fechaimpreso` datetime DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `valorcatastral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mtsfrte` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `placa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `marca` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `modelo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `padron` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `varios` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tipopago` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `banco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `banconro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `intere` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `multa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `otros` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `formulario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `literal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `controlinterno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'CREADO',
  `cajero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `usuarioimp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `anulado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `porcaja` tinyint(1) NOT NULL DEFAULT 0,
  `verificadocaja` tinyint(1) NOT NULL DEFAULT 0,
  `fechacaja` datetime DEFAULT NULL,
  `verificadocaja_id` bigint(20) UNSIGNED DEFAULT NULL,
  `verificadosistema` tinyint(1) NOT NULL DEFAULT 0,
  `fechasistema` date DEFAULT NULL,
  `verificadosistema_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cajero_id` bigint(20) UNSIGNED DEFAULT NULL,
  `impreso_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cliente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unid_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paterno` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `materno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `tipocatastro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `codcatastral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `temporada` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coditem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nombreitem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `codsubitem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nombresubitem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `detalle` varchar(2550) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `precio` double(11,2) NOT NULL DEFAULT 0.00,
  `cantidad` int(11) NOT NULL DEFAULT 0,
  `subtotal` double(11,2) NOT NULL DEFAULT 0.00,
  `comprobante_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razonsocial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padron` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itempadres`
--

CREATE TABLE `itempadres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detalle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto` double(11,2) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVO',
  `itempadre_id` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_unid`
--

CREATE TABLE `item_unid` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `unid_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso_user`
--

CREATE TABLE `permiso_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permiso_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `temporada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coditem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coditemsubitem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detalle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `largo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ancho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `rubro_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubros`
--

CREATE TABLE `rubros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto` double(11,2) NOT NULL,
  `temporada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiempo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subitems`
--

CREATE TABLE `subitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detalle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto` double(11,2) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVO',
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `unid_id` bigint(20) UNSIGNED DEFAULT 16,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unids`
--

CREATE TABLE `unids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inicio` int(11) NOT NULL,
  `fin` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechalimite` date NOT NULL DEFAULT '2021-12-31',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unid_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_compro`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_compro` (
`nro_comp` varchar(255)
,`unidad` varchar(255)
,`fecha` date
,`Observa` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_entradas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_entradas` (
`nro_comp` varchar(255)
,`n_item` varchar(255)
,`monto` double(11,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_compro`
--
DROP TABLE IF EXISTS `vista_compro`;

CREATE ALGORITHM=UNDEFINED DEFINER=`example_user`@`localhost` SQL SECURITY DEFINER VIEW `vista_compro`  AS SELECT `c`.`nrocomprobante` AS `nro_comp`, `u`.`codigo` AS `unidad`, `c`.`fecha` AS `fecha`, `c`.`total` AS `Observa` FROM (`comprobantes` `c` join `unids` `u`) WHERE `c`.`unid_id` = `u`.`id` AND `c`.`fecha` = '2022-03-15' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_entradas`
--
DROP TABLE IF EXISTS `vista_entradas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`example_user`@`localhost` SQL SECURITY DEFINER VIEW `vista_entradas`  AS SELECT `c`.`nrocomprobante` AS `nro_comp`, `d`.`coditem` AS `n_item`, `d`.`subtotal` AS `monto` FROM (`detalles` `d` join `comprobantes` `c`) WHERE `d`.`comprobante_id` = `c`.`id` AND `c`.`fecha` = '2022-03-15' ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anulados`
--
ALTER TABLE `anulados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anulados_unid_id_foreign` (`unid_id`),
  ADD KEY `anulados_user_id_foreign` (`user_id`),
  ADD KEY `anulados_comprobante_id_foreign` (`comprobante_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_ci_unique` (`ci`);

--
-- Indices de la tabla `cliente_empresa`
--
ALTER TABLE `cliente_empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_empresa_empresa_id_foreign` (`empresa_id`),
  ADD KEY `cliente_empresa_cliente_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comprobantes_verificadocaja_id_foreign` (`verificadocaja_id`),
  ADD KEY `comprobantes_verificadosistema_id_foreign` (`verificadosistema_id`),
  ADD KEY `comprobantes_user_id_foreign` (`user_id`),
  ADD KEY `comprobantes_cajero_id_foreign` (`cajero_id`),
  ADD KEY `comprobantes_impreso_id_foreign` (`impreso_id`),
  ADD KEY `comprobantes_cliente_id_foreign` (`cliente_id`),
  ADD KEY `comprobantes_unid_id_foreign` (`unid_id`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalles_comprobante_id_foreign` (`comprobante_id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresas_cliente_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `itempadres`
--
ALTER TABLE `itempadres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_itempadre_id_foreign` (`itempadre_id`);

--
-- Indices de la tabla `item_unid`
--
ALTER TABLE `item_unid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_unid_item_id_foreign` (`item_id`),
  ADD KEY `item_unid_unid_id_foreign` (`unid_id`);

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
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso_user`
--
ALTER TABLE `permiso_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permiso_user_permiso_id_foreign` (`permiso_id`),
  ADD KEY `permiso_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registros_cliente_id_foreign` (`cliente_id`),
  ADD KEY `registros_rubro_id_foreign` (`rubro_id`);

--
-- Indices de la tabla `rubros`
--
ALTER TABLE `rubros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicios_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `subitems`
--
ALTER TABLE `subitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subitems_item_id_foreign` (`item_id`),
  ADD KEY `subitems_unid_id_foreign` (`unid_id`);

--
-- Indices de la tabla `unids`
--
ALTER TABLE `unids`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_unid_id_foreign` (`unid_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anulados`
--
ALTER TABLE `anulados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente_empresa`
--
ALTER TABLE `cliente_empresa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `itempadres`
--
ALTER TABLE `itempadres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `item_unid`
--
ALTER TABLE `item_unid`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permiso_user`
--
ALTER TABLE `permiso_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rubros`
--
ALTER TABLE `rubros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subitems`
--
ALTER TABLE `subitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unids`
--
ALTER TABLE `unids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anulados`
--
ALTER TABLE `anulados`
  ADD CONSTRAINT `anulados_comprobante_id_foreign` FOREIGN KEY (`comprobante_id`) REFERENCES `comprobantes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anulados_unid_id_foreign` FOREIGN KEY (`unid_id`) REFERENCES `unids` (`id`),
  ADD CONSTRAINT `anulados_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `cliente_empresa`
--
ALTER TABLE `cliente_empresa`
  ADD CONSTRAINT `cliente_empresa_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `cliente_empresa_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Filtros para la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD CONSTRAINT `comprobantes_cajero_id_foreign` FOREIGN KEY (`cajero_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comprobantes_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `comprobantes_impreso_id_foreign` FOREIGN KEY (`impreso_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comprobantes_unid_id_foreign` FOREIGN KEY (`unid_id`) REFERENCES `unids` (`id`),
  ADD CONSTRAINT `comprobantes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comprobantes_verificadocaja_id_foreign` FOREIGN KEY (`verificadocaja_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comprobantes_verificadosistema_id_foreign` FOREIGN KEY (`verificadosistema_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_comprobante_id_foreign` FOREIGN KEY (`comprobante_id`) REFERENCES `comprobantes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_itempadre_id_foreign` FOREIGN KEY (`itempadre_id`) REFERENCES `itempadres` (`id`);

--
-- Filtros para la tabla `item_unid`
--
ALTER TABLE `item_unid`
  ADD CONSTRAINT `item_unid_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `item_unid_unid_id_foreign` FOREIGN KEY (`unid_id`) REFERENCES `unids` (`id`);

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `registros_rubro_id_foreign` FOREIGN KEY (`rubro_id`) REFERENCES `rubros` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Filtros para la tabla `subitems`
--
ALTER TABLE `subitems`
  ADD CONSTRAINT `subitems_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `subitems_unid_id_foreign` FOREIGN KEY (`unid_id`) REFERENCES `unids` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_unid_id_foreign` FOREIGN KEY (`unid_id`) REFERENCES `unids` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

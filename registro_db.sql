-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-12-2023 a las 03:12:10
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `nombre_administrador` varchar(50) DEFAULT NULL,
  `app_administrador` varchar(50) DEFAULT NULL,
  `apm_administrador` varchar(50) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `nombre_administrador`, `app_administrador`, `apm_administrador`, `correo_electronico`, `contrasena`, `fecha_creacion`) VALUES
(1, 'Jennifer', 'Wright', 'Powell', 'acevedoryan@gmail.com', '@RQxr6m#(1', '2023-07-19 05:08:27'),
(2, 'Christine', 'Green', 'Rojas', 'romerosarah@hotmail.com', '#2L4zIgfRz', '2020-11-03 18:27:01'),
(3, 'Christopher', 'Thomas', 'Williams', 'marc26@hotmail.com', 'XV@0WuD&Zn', '2022-12-23 04:45:36'),
(4, 'James', 'Kelly', 'Jones', 'douglascarter@grant.com', 'JOT7GIvu&1', '2022-04-03 03:15:40'),
(5, 'Cory', 'Thompson', 'Wright', 'lholland@wells.info', 'rV5Jkfd0(B', '2022-05-21 01:54:50'),
(6, 'Marc', 'Owens', 'Jenkins', 'brianturner@hotmail.com', 'SG1UZ4Ff(3', '2020-07-18 09:43:20'),
(7, 'Collin', 'Cox', 'Taylor', 'velezlisa@becker-tanner.net', 'UqSOxqlk)1', '2022-11-06 10:20:23'),
(8, 'Lynn', 'Phillips', 'Johnson', 'arnoldjacob@gmail.com', '+2dLF#bPnI', '2023-08-16 02:23:39'),
(9, 'Kevin', 'Johnson', 'Jackson', 'maria65@gmail.com', 'zJ25dN%z(&', '2021-06-11 05:39:47'),
(10, 'Joshua', 'Ramirez', 'Watson', 'hollowaychris@hotmail.com', 'QJ3NUkpuS@', '2021-03-30 15:40:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(50) DEFAULT NULL,
  `app_cliente` varchar(50) DEFAULT NULL,
  `apm_cliente` varchar(50) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_estatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `app_cliente`, `apm_cliente`, `correo_electronico`, `contrasena`, `telefono`, `fecha_creacion`, `id_estatus`) VALUES
(1, 'Jesse', 'Vaughn', 'Evans', 'careylauren@gmail.com', '!1NK7GiM5)', '+1-781-684', '2020-04-08 15:27:17', 2),
(2, 'Alexis', 'Bennett', 'Long', 'schroederashley@gmail.com', '(U0!U6JzQd', '+1-336-306', '2020-05-15 23:30:01', 3),
(3, 'Brandon', 'Hall', 'Cordova', 'hawkinskatie@gilmore.com', '2e1@JGc^(y', '(543)889-6', '2021-09-19 09:50:49', 3),
(4, 'Caitlin', 'Smith', 'Fuller', 'dcarrillo@murray.com', 'R!3uPuy)dg', '+1-068-860', '2020-07-02 10:49:20', 3),
(5, 'Monica', 'Silva', 'Reynolds', 'bradleyangela@hotmail.com', ')2QwSEpdhE', '914.884.22', '2021-04-23 17:21:46', 3),
(6, 'Lawrence', 'Murray', 'Mcneil', 'leetaylor@mccarty.com', '#U23aZJp#L', '245.409.78', '2022-07-24 15:45:36', 1),
(7, 'Jennifer', 'Mcknight', 'Brown', 'proctormarissa@henson.org', '_CWBOeo000', '429-954-70', '2020-03-09 14:03:24', 3),
(8, 'Brittany', 'Hunt', 'Webb', 'christine31@gutierrez.org', '1Ar*Djgy&I', '(780)233-9', '2020-09-02 18:45:59', 2),
(9, 'Michael', 'Thompson', 'Morgan', 'robertmatthews@hotmail.com', 'H6JSIgN*$6', '(573)648-1', '2022-04-08 11:56:24', 1),
(10, 'Daryl', 'Gonzales', 'Parker', 'jesuswolf@nash.com', '&u%Bpp7wu4', '327.073.22', '2023-03-06 21:32:53', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `id_estatus` int(11) NOT NULL,
  `nombre_estatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`id_estatus`, `nombre_estatus`) VALUES
(1, 'Activo'),
(2, 'Inactivo'),
(3, 'Eliminado'),
(4, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nombre_marca` varchar(50) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `nombre_marca`, `fecha_creacion`) VALUES
(1, 'Innovatech', '2022-03-15 12:30:21'),
(2, 'TechAdvance', '2020-11-22 19:45:35'),
(3, 'GadgetGuru', '2021-08-30 14:15:10'),
(4, 'FutureTech', '2023-01-05 16:20:47'),
(5, 'EcoSolutions', '2022-07-12 23:30:33'),
(6, 'SmartTech', '2021-05-23 21:40:29'),
(7, 'GreenEnergy', '2023-04-17 18:55:50'),
(8, 'NextGen', '2020-09-08 17:10:42'),
(9, 'ModernWorks', '2022-12-26 00:35:27'),
(10, 'EcoTech', '2023-02-09 13:05:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `precio_proveedor` decimal(10,2) DEFAULT NULL,
  `precio_publico` decimal(10,2) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_estatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `id_marca`, `modelo`, `stock`, `precio_proveedor`, `precio_publico`, `descripcion`, `id_vendedor`, `fecha_creacion`, `id_estatus`) VALUES
(1, 'UltraPhone 3000', 1, 'UP3000', 50, 300.00, 450.00, 'Smartphone de última generación con pantalla 6.5 pulgadas', 1, '2023-04-10 15:15:30', 1),
(2, 'MegaLaptop Pro', 2, 'MLP2023', 30, 700.00, 950.00, 'Laptop de alto rendimiento para profesionales y gamers', 2, '2022-11-05 19:20:45', 1),
(3, 'SmartWatch Health+', 3, 'SWH+2023', 100, 150.00, 250.00, 'Reloj inteligente con funciones avanzadas de salud', 3, '2021-07-21 14:30:00', 2),
(4, 'EcoSpeaker 360', 4, 'ES360', 80, 50.00, 80.00, 'Altavoz ecológico con sonido envolvente 360 grados', 4, '2022-01-15 22:40:25', 1),
(5, 'Gadget Drone Flyer', 5, 'GDF2023', 40, 200.00, 300.00, 'Drone con cámara HD y funciones avanzadas de vuelo', 5, '2023-03-12 17:50:35', 2),
(6, 'Virtual Reality Set', 6, 'VRS-EXP', 25, 350.00, 500.00, 'Set completo de realidad virtual para experiencias inmersivas', 6, '2020-10-30 21:25:10', 3),
(7, 'Portable PowerPack 500', 7, 'PP500', 150, 100.00, 150.00, 'Batería portátil de alta capacidad para dispositivos móviles', 7, '2021-12-22 13:10:50', 1),
(8, 'Smart Thermostat X10', 8, 'STX10', 60, 120.00, 180.00, 'Termostato inteligente con control remoto y aprendizaje automático', 8, '2022-08-15 16:35:20', 1),
(9, 'Wireless Earbuds Plus', 9, 'WEB+2023', 90, 80.00, 120.00, 'Auriculares inalámbricos con cancelación de ruido y calidad de audio superior', 9, '2023-01-20 18:45:55', 2),
(10, '4K Action Cam Extreme', 10, 'ACX4K', 35, 250.00, 400.00, 'Cámara de acción 4K resistente al agua y a los golpes', 10, '2020-06-05 23:55:30', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_ubicacion` int(11) NOT NULL,
  `nombre_contacto` varchar(100) DEFAULT NULL,
  `numero_contacto` varchar(20) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `manzana` varchar(50) DEFAULT NULL,
  `numero_interior` varchar(50) DEFAULT NULL,
  `numero_exterior` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL,
  `calles` text DEFAULT NULL,
  `referencia` text DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id_ubicacion`, `nombre_contacto`, `numero_contacto`, `region`, `manzana`, `numero_interior`, `numero_exterior`, `codigo_postal`, `calles`, `referencia`, `id_cliente`) VALUES
(1, 'Ricardo Smith', '191.479.44', 'Montana', '34464', '90725', '5735', '41090', 'Ann Land', 'Yeah coach face leader since decision section stuff.', 4),
(2, 'Phillip Hughes', '+1-871-777', 'Texas', '65596', '3565', '270', '34911', 'Carlson Gardens', 'Good sometimes production thing inside.', 2),
(3, 'Tabitha Taylor', '406.838.91', 'Georgia', '56956', '58648', '5000', '54028', 'Richard Crossing', 'Memory experience where nor Mr space cold.', 7),
(4, 'Karla Elliott', '173.705.18', 'Missouri', '8289', '0692', '45598', '08802', 'Maldonado Forges', 'Traditional foot bag trip best too to.', 10),
(5, 'Scott Goodwin', '279-747-50', 'California', '024', '9662', '70140', '64543', 'Oneal Crossing', 'International short unit coach.', 6),
(6, 'Cristina Palmer', '+1-034-198', 'Idaho', '26632', '1953', '182', '82119', 'Hamilton Lake', 'Hold finish simple main green.', 1),
(7, 'Noah Mcgrath', '088-236-49', 'Kentucky', '1005', '8239', '3923', '77000', 'Marshall Isle', 'Human political consider glass give should cultural.', 8),
(8, 'Charles Moore', '+1-876-761', 'Virginia', '84469', '208', '697', '66979', 'Maddox Burg', 'Protect rest on billion need along.', 10),
(9, 'Tara Lopez', '001-524-75', 'Indiana', '508', '165', '62730', '69629', 'Fields Fords', 'Improve help alone those official.', 4),
(10, 'Michael Williams', '001-622-41', 'Wisconsin', '57963', '5664', '55674', '73810', 'Kyle Plains', 'Individual take pick.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `id_vendedor` int(11) NOT NULL,
  `nombre_vendedor` varchar(50) DEFAULT NULL,
  `app_vendedor` varchar(50) DEFAULT NULL,
  `apm_vendedor` varchar(50) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_estatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`id_vendedor`, `nombre_vendedor`, `app_vendedor`, `apm_vendedor`, `correo_electronico`, `contrasena`, `telefono`, `fecha_creacion`, `id_estatus`) VALUES
(1, 'Charles', 'Foster', 'Pope', 'ejohnson@davis-white.com', 'zMd3RWFu$2', '(987)303-1', '2021-03-15 09:36:52', 1),
(2, 'Nathaniel', 'Myers', 'Butler', 'brandilewis@whitaker.biz', '3ITVuRg!!D', '129-205-77', '2022-12-23 09:31:22', 1),
(3, 'John', 'Harris', 'Sullivan', 'scott09@lee-smith.com', 'R3KIJIMn*k', '262.272.19', '2020-08-30 22:21:25', 3),
(4, 'Karen', 'Boone', 'Snyder', 'sarabaker@hotmail.com', 'D#Kw4JQbUl', '554.801.05', '2022-07-09 11:05:15', 3),
(5, 'Matthew', 'Murray', 'Snyder', 'zbailey@kent.com', 'QP20fIdi&^', '(393)852-0', '2022-07-22 16:39:37', 3),
(6, 'Keith', 'Lopez', 'Farley', 'jennifer74@crawford.com', 'I%i3Os!(mJ', '853.589.53', '2023-01-14 03:25:38', 3),
(7, 'Elizabeth', 'Martin', 'Nelson', 'michaelsandra@clark-hamilton.com', 's6#YUJtZ*k', '(819)988-4', '2022-09-24 12:44:07', 2),
(8, 'Nicholas', 'Allen', 'Garcia', 'davisjames@yahoo.com', 'u@5ZJ#Kgdm', '(447)377-4', '2023-03-19 23:23:21', 2),
(9, 'Derek', 'Hernandez', 'Sanchez', 'stephanie72@yahoo.com', 'b6A#Xsdi@P', '1-390-499-', '2021-12-27 20:56:01', 1),
(10, 'James', 'Harris', 'Rodriguez', 'lucasjacob@hawkins.com', '(!2%bGPi5U', '335-119-25', '2020-02-14 15:35:17', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad_producto` int(11) DEFAULT NULL,
  `fecha_venta` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_vendedor`, `id_cliente`, `id_producto`, `cantidad_producto`, `fecha_venta`) VALUES
(1, 8, 6, 3, 9, '2020-02-10 21:27:17'),
(2, 9, 4, 1, 6, '2023-04-14 03:50:19'),
(3, 7, 6, 8, 3, '2022-08-03 01:18:14'),
(4, 3, 10, 10, 7, '2023-02-14 16:40:34'),
(5, 6, 7, 1, 6, '2020-06-07 04:07:48'),
(6, 7, 5, 1, 2, '2021-06-02 13:02:10'),
(7, 3, 7, 8, 1, '2021-01-25 01:02:03'),
(8, 10, 8, 4, 8, '2023-06-14 13:44:46'),
(9, 9, 6, 9, 4, '2023-08-23 18:07:50'),
(10, 3, 5, 1, 4, '2022-05-07 01:02:14'),
(11, 7, 3, 6, 7, '2023-06-02 21:53:11'),
(12, 2, 10, 10, 2, '2022-11-06 06:47:37'),
(13, 3, 1, 8, 2, '2023-06-21 04:42:32'),
(14, 3, 3, 1, 5, '2021-02-19 13:23:39'),
(15, 9, 3, 4, 1, '2020-08-09 18:19:31'),
(16, 5, 7, 8, 4, '2021-11-12 23:57:22'),
(17, 8, 5, 7, 3, '2023-08-14 10:34:16'),
(18, 8, 8, 10, 3, '2023-09-19 20:34:04'),
(19, 3, 6, 6, 8, '2023-04-02 09:16:07'),
(20, 3, 3, 3, 4, '2021-07-29 12:59:03'),
(21, 10, 1, 5, 8, '2021-06-13 01:13:26'),
(22, 4, 1, 4, 6, '2020-03-10 02:27:23'),
(23, 4, 1, 7, 8, '2021-05-24 12:48:29'),
(24, 4, 6, 9, 8, '2023-10-16 01:10:43'),
(25, 5, 1, 8, 6, '2023-02-02 23:40:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_estatus` (`id_estatus`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`id_estatus`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_marca` (`id_marca`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_estatus` (`id_estatus`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_ubicacion`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id_vendedor`),
  ADD KEY `id_estatus` (`id_estatus`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `id_estatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `id_vendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_estatus`) REFERENCES `estatus` (`id_estatus`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`id_estatus`) REFERENCES `estatus` (`id_estatus`);

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `ubicacion_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`id_estatus`) REFERENCES `estatus` (`id_estatus`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

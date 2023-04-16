-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 16-04-2023 a las 18:29:19
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `myportfolioprueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre_completo` int(50) NOT NULL COMMENT 'nombre completo',
  `profesión` int(50) NOT NULL COMMENT 'solo el titulo',
  `ciudad_paiz` int(50) NOT NULL COMMENT 'ciudad y paiz',
  `telefono` int(50) NOT NULL,
  `whatsapp` int(50) NOT NULL,
  `correo1` int(100) NOT NULL,
  `correo2` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `id` int(11) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `anios` int(20) NOT NULL,
  `otros` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hard_skill`
--

CREATE TABLE `hard_skill` (
  `id` int(11) NOT NULL,
  `habilidad` varchar(50) NOT NULL,
  `pocentaje` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otras profesiones`
--

CREATE TABLE `otras profesiones` (
  `id` int(11) NOT NULL,
  `profesion` int(11) NOT NULL,
  `descripcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` int(11) NOT NULL,
  `quien_soy` varchar(250) NOT NULL COMMENT 'mi nombre es "nombre", nacionalidad, nacido en el año, caracteristica.',
  `que_estudio` varchar(250) NOT NULL COMMENT 'estudiante de ',
  `que_hago` varchar(250) NOT NULL COMMENT 'profesion y ocupacion descripcion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacion`
--

CREATE TABLE `programacion` (
  `id` int(11) NOT NULL,
  `titulos` varchar(250) NOT NULL,
  `lenguajes` varchar(250) NOT NULL,
  `frameworks` varchar(250) NOT NULL,
  `windowas` int(250) NOT NULL,
  `tecnologias` varchar(250) NOT NULL COMMENT 'programas y tecnologias que manejas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secundario`
--

CREATE TABLE `secundario` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `anio_titulo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soft_skill`
--

CREATE TABLE `soft_skill` (
  `id` int(11) NOT NULL,
  `habilidad` varchar(50) NOT NULL,
  `porcentaje` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terciario o universitario`
--

CREATE TABLE `terciario o universitario` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `descripcion` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hard_skill`
--
ALTER TABLE `hard_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otras profesiones`
--
ALTER TABLE `otras profesiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `programacion`
--
ALTER TABLE `programacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secundario`
--
ALTER TABLE `secundario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `soft_skill`
--
ALTER TABLE `soft_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `terciario o universitario`
--
ALTER TABLE `terciario o universitario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hard_skill`
--
ALTER TABLE `hard_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `otras profesiones`
--
ALTER TABLE `otras profesiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programacion`
--
ALTER TABLE `programacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secundario`
--
ALTER TABLE `secundario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `soft_skill`
--
ALTER TABLE `soft_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `terciario o universitario`
--
ALTER TABLE `terciario o universitario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

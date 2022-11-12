-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2022 a las 18:45:28
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `administrador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `ID` int(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Contraseña` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`ID`, `Nombre`, `Apellido`, `Correo`, `Contraseña`) VALUES
(1, 'Kevin', 'Morelo', 'kmorelo89@gmail.com', 'kevilinho'),
(13, 'Juan', 'Garces', 'juan@gmail.com', '123456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `ID` int(11) NOT NULL,
  `Tipo` text NOT NULL,
  `Concepto` varchar(50) NOT NULL,
  `Cantidad` varchar(20) NOT NULL,
  `Categoria` varchar(60) NOT NULL,
  `Subcategoria` varchar(60) NOT NULL,
  `Fecha_ingreso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`ID`, `Tipo`, `Concepto`, `Cantidad`, `Categoria`, `Subcategoria`, `Fecha_ingreso`) VALUES
(56, 'Gasto', 'Verduras', '20000', 'Compras', '', 'October 23, 2022, 4:02 pm'),
(57, 'Ingreso', 'Bocachico', '15000', 'Almuerzo', '', 'October 23, 2022, 4:03 pm'),
(58, 'Ingreso', 'Cerdo ', '12000', 'Almuerzo', '', 'October 23, 2022, 4:09 pm'),
(59, 'Ingreso', 'higado', '15000', 'Nomina', 'Comida', 'October 23, 2022, 10:02 pm'),
(60, 'Gasto', 'Yuca', '15000', 'Mercado', '', 'October 24, 2022, 3:18 pm'),
(61, 'Ingreso', 'Res', '16000', 'Almuerzo', 'Comida', 'October 24, 2022, 6:56 pm'),
(62, 'Gasto', 'Frutas', '70000', 'Mercado', '', 'October 24, 2022, 6:57 pm'),
(63, 'Ingreso', 'Cerdo', '14000', 'Almuerzo', 'Comida', 'October 24, 2022, 6:57 pm'),
(64, 'Ingreso', 'Carne Molida', '10000', 'Almuerzo', 'Comida', 'October 24, 2022, 6:57 pm'),
(65, 'Gasto', 'Cerdo', '120000', 'Mercado', '', 'October 24, 2022, 6:57 pm'),
(66, 'Gasto', 'Res', '150000', 'Mercado', '', 'October 24, 2022, 6:58 pm'),
(67, 'Gasto', 'Carne Sofrita', '14000', 'Almuerzo', 'Coomida', 'October 24, 2022, 10:09 pm'),
(68, 'Ingreso', 'Carne Molida', '10000', 'Almuerzo', 'Comida', 'October 24, 2022, 10:10 pm'),
(69, 'Ingreso', 'Sopa', '5000', 'Almuerzo', 'Comida', 'October 24, 2022, 10:10 pm'),
(70, 'Gasto', 'Platano', '30000', 'Mercado', '', 'October 24, 2022, 10:10 pm'),
(71, 'Ingreso', 'Mondongo', '8000', 'Almuerzo', 'Comida', 'October 25, 2022, 12:41 pm'),
(72, 'Ingreso', 'Tilapia', '17000', 'Almuerzo', 'Comida', 'October 26, 2022, 11:08 am'),
(73, 'Ingreso', 'Pechuga', '12000', 'Almuerzo', 'Comida', 'October 26, 2022, 11:09 am'),
(74, 'Ingreso', 'Pechuga', '12000', 'Almuerzo', 'Comida', 'October 26, 2022, 11:11 am'),
(75, 'Ingreso', 'Sopa', '5000', 'Almuerzo', 'Comida', 'October 26, 2022, 11:12 am'),
(76, 'Ingreso', 'Guartinaja', '19000', 'Almuerzo', 'Comida', 'October 26, 2022, 11:23 am'),
(77, 'Gasto', 'mondongo', '50000', 'mercado', '', 'October 27, 2022, 10:39 am'),
(78, 'Ingreso', 'Pechuga', '12000', 'Almuerzo', 'Comida', 'October 27, 2022, 11:03 am'),
(79, 'Gasto', 'Mensualidad chef', '700000', 'Mensualidad', '', 'November 3, 2022, 9:34 am'),
(80, 'Ingreso', 'Pechuga', '12000', 'Almuerzo', 'Comida', 'November 3, 2022, 9:54 am'),
(81, 'Ingreso', 'Pechuga', '10000', 'Almuerzo', '', 'November 8, 2022, 1:44 pm'),
(82, 'Ingreso', 'Pechuga', '10000', 'Almuerzo', '', 'November 8, 2022, 3:29 pm'),
(83, 'Gasto', 'Huevos', '17000', 'Compras', '', 'November 10, 2022, 8:53 am');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

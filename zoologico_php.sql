-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2021 a las 19:45:36
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zoologico_php`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adultos`
--

CREATE TABLE `adultos` (
  `idAdultos` int(11) NOT NULL,
  `idClienteFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `adultos`
--

INSERT INTO `adultos` (`idAdultos`, `idClienteFK`) VALUES
(1, 14),
(3, 14),
(2, 15),
(4, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

CREATE TABLE `animales` (
  `idAnimal` int(11) NOT NULL,
  `razaAnimal` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `edadAnimal` int(11) NOT NULL,
  `pesoAnimal` decimal(10,2) NOT NULL,
  `habitatAnimal` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `paisOrigenAnimal` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `idJaulaFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `animales`
--

INSERT INTO `animales` (`idAnimal`, `razaAnimal`, `edadAnimal`, `pesoAnimal`, `habitatAnimal`, `paisOrigenAnimal`, `idJaulaFK`) VALUES
(1, 'Suricato', 7, '3.00', 'Sabana', 'África', 0),
(2, 'Cabra Ibérica', 4, '14.00', 'Montaña', 'España', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombreCliente` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellidosCliente` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `teléfonoCliente` int(11) NOT NULL,
  `direcciónCliente` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correoElectronicoCliente` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `idRecuerdoFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCliente`, `apellidosCliente`, `teléfonoCliente`, `direcciónCliente`, `correoElectronicoCliente`, `idRecuerdoFK`) VALUES
(1, 'Andrea', 'García', 12332143, 'C/ Tanguillo', 'andrea@gmail.com', 2),
(2, 'Marcelo', 'Gutierrez', 45345321, 'Av/ Argentina', 'marcelo@gmail.com', 3),
(8, 'Carolina', 'García', 12332123, 'C/ Agosto', 'carolina@gmail.com', 2),
(9, 'Roberto', 'Romero', 45345321, 'C/ Esmeralda', 'roberto@gmail.com', 3),
(10, 'Toni', 'Gambino', 456376351, 'C/ Marbella', 'Toni@gmail.com', 7),
(11, 'Mariano', 'Romero', 45345321, 'C/ Esmeralda', 'mariano@gmail.com', 8),
(12, 'Raúl', 'Salinas', 764859364, 'C/ Espejismo', 'raul@gmail.com', 8),
(13, 'Jose', 'Heredia', 657846374, 'C/ Cancún', 'jose@gmail.com', 9),
(14, 'Raúl', 'Salinas', 764859364, 'C/ Espejismo', 'raul@gmail.com', 8),
(15, 'Jose', 'Heredia', 657846374, 'C/ Cancún', 'jose@gmail.com', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int(11) NOT NULL,
  `dniEmpleado` varchar(9) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombreEmpleado` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `formaciónEmpleado` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `antiguedadEmpleado` date NOT NULL,
  `idEncargadoFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `dniEmpleado`, `nombreEmpleado`, `formaciónEmpleado`, `antiguedadEmpleado`, `idEncargadoFK`) VALUES
(3, '12345678A', 'Carlos', 'Grado Superior DAW', '2021-06-16', 0),
(4, '87654321', 'Manuel', 'Licenciatura Magisterio', '2019-07-17', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jaulas`
--

CREATE TABLE `jaulas` (
  `idJaula` int(11) NOT NULL,
  `zonaZooJaula` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipoJaula` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `capacidadJaula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `jaulas`
--

INSERT INTO `jaulas` (`idJaula`, `zonaZooJaula`, `tipoJaula`, `capacidadJaula`) VALUES
(1, 'Zona Felinos', 'Metacrilato', 5),
(2, 'Reptiles', 'Hierro', 10),
(3, 'Zona Felinos', 'Metacrilato', 5),
(4, 'Reptiles', 'Hierro', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jubilados`
--

CREATE TABLE `jubilados` (
  `idJubilados` int(11) NOT NULL,
  `descuentoJubilados` int(100) NOT NULL,
  `idClienteFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `jubilados`
--

INSERT INTO `jubilados` (`idJubilados`, `descuentoJubilados`, `idClienteFK`) VALUES
(1, 15, 10),
(2, 15, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `idMantenimiento` int(11) NOT NULL,
  `idEmpleadoFK` int(11) NOT NULL,
  `idAnimalFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `minusvalidos`
--

CREATE TABLE `minusvalidos` (
  `idMinusvalidos` int(11) NOT NULL,
  `descuentoMinusvalidos` int(100) NOT NULL,
  `idClienteFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `minusvalidos`
--

INSERT INTO `minusvalidos` (`idMinusvalidos`, `descuentoMinusvalidos`, `idClienteFK`) VALUES
(1, 20, 2),
(2, 20, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ninos`
--

CREATE TABLE `ninos` (
  `idNinos` int(11) NOT NULL,
  `descuentoNinos` int(11) NOT NULL,
  `idClienteFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `ninos`
--

INSERT INTO `ninos` (`idNinos`, `descuentoNinos`, `idClienteFK`) VALUES
(9, 10, 1),
(10, 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numerovisitas`
--

CREATE TABLE `numerovisitas` (
  `idNumeroVisitas` int(11) NOT NULL,
  `idJaulaFK` int(11) NOT NULL,
  `idClienteFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recuerdos`
--

CREATE TABLE `recuerdos` (
  `idRecuerdo` int(11) NOT NULL,
  `modeloRecuerdo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `proovedorRecuerdo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precioRecuerdo` decimal(10,2) NOT NULL,
  `stockRecuerdo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `recuerdos`
--

INSERT INTO `recuerdos` (`idRecuerdo`, `modeloRecuerdo`, `proovedorRecuerdo`, `precioRecuerdo`, `stockRecuerdo`) VALUES
(2, 'Camiseta Jirafa', 'Textiles García', '5.00', 123),
(3, 'Peluche Mono', 'Plastico Sur', '12.00', 23),
(6, 'Libro Zoologico', 'La casa del Libro', '4.00', 14),
(7, 'Camiseta Gorila', 'Textiles Chamorro', '11.00', 42),
(8, 'Libro Aprende con los Animales', 'La casa del Libro', '5.80', 18),
(9, 'Llavero suricato', 'Bazar Shin Shan', '2.00', 60);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adultos`
--
ALTER TABLE `adultos`
  ADD PRIMARY KEY (`idAdultos`),
  ADD KEY `idClienteFK` (`idClienteFK`);

--
-- Indices de la tabla `animales`
--
ALTER TABLE `animales`
  ADD PRIMARY KEY (`idAnimal`),
  ADD KEY `idJaulaFK` (`idJaulaFK`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idRecuerdoFK` (`idRecuerdoFK`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idEncargadoFK` (`idEncargadoFK`);

--
-- Indices de la tabla `jaulas`
--
ALTER TABLE `jaulas`
  ADD PRIMARY KEY (`idJaula`);

--
-- Indices de la tabla `jubilados`
--
ALTER TABLE `jubilados`
  ADD PRIMARY KEY (`idJubilados`),
  ADD KEY `idClienteFK` (`idClienteFK`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`idMantenimiento`),
  ADD KEY `idEmpleadoFK` (`idEmpleadoFK`),
  ADD KEY `idAnimalFK` (`idAnimalFK`);

--
-- Indices de la tabla `minusvalidos`
--
ALTER TABLE `minusvalidos`
  ADD PRIMARY KEY (`idMinusvalidos`),
  ADD KEY `idClienteFK` (`idClienteFK`);

--
-- Indices de la tabla `ninos`
--
ALTER TABLE `ninos`
  ADD PRIMARY KEY (`idNinos`),
  ADD KEY `idClienteFK` (`idClienteFK`);

--
-- Indices de la tabla `numerovisitas`
--
ALTER TABLE `numerovisitas`
  ADD PRIMARY KEY (`idNumeroVisitas`),
  ADD KEY `idJaulaFK` (`idJaulaFK`,`idClienteFK`),
  ADD KEY `idClienteFK5` (`idClienteFK`);

--
-- Indices de la tabla `recuerdos`
--
ALTER TABLE `recuerdos`
  ADD PRIMARY KEY (`idRecuerdo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adultos`
--
ALTER TABLE `adultos`
  MODIFY `idAdultos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `animales`
--
ALTER TABLE `animales`
  MODIFY `idAnimal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jaulas`
--
ALTER TABLE `jaulas`
  MODIFY `idJaula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jubilados`
--
ALTER TABLE `jubilados`
  MODIFY `idJubilados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `idMantenimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `minusvalidos`
--
ALTER TABLE `minusvalidos`
  MODIFY `idMinusvalidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ninos`
--
ALTER TABLE `ninos`
  MODIFY `idNinos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `numerovisitas`
--
ALTER TABLE `numerovisitas`
  MODIFY `idNumeroVisitas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recuerdos`
--
ALTER TABLE `recuerdos`
  MODIFY `idRecuerdo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adultos`
--
ALTER TABLE `adultos`
  ADD CONSTRAINT `idClienteFK4` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idCliente`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `idRecuerdoFK` FOREIGN KEY (`idRecuerdoFK`) REFERENCES `recuerdos` (`idRecuerdo`);

--
-- Filtros para la tabla `jubilados`
--
ALTER TABLE `jubilados`
  ADD CONSTRAINT `idClienteFK3` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idCliente`);

--
-- Filtros para la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD CONSTRAINT `idAnimalFK01` FOREIGN KEY (`idAnimalFK`) REFERENCES `animales` (`idAnimal`),
  ADD CONSTRAINT `idEmpleadoFK02` FOREIGN KEY (`idEmpleadoFK`) REFERENCES `empleados` (`idEmpleado`);

--
-- Filtros para la tabla `minusvalidos`
--
ALTER TABLE `minusvalidos`
  ADD CONSTRAINT `idClienteFK2` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idCliente`);

--
-- Filtros para la tabla `ninos`
--
ALTER TABLE `ninos`
  ADD CONSTRAINT `idClienteFK1` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idCliente`);

--
-- Filtros para la tabla `numerovisitas`
--
ALTER TABLE `numerovisitas`
  ADD CONSTRAINT `idClienteFK5` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idCliente`),
  ADD CONSTRAINT `idJaulaFK2` FOREIGN KEY (`idJaulaFK`) REFERENCES `jaulas` (`idJaula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

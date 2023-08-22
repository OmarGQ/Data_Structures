-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2017 a las 15:54:05
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `registro` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `fechaIng` date NOT NULL,
  `carrera` int(2) NOT NULL,
  PRIMARY KEY (`registro`),
  KEY `carrera` (`carrera`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`registro`, `nombre`, `fechaIng`, `carrera`) VALUES
(1, 'Luisa Megia Valdez', '2000-08-01', 3),
(2, 'Raul Duran Fernandez', '2001-08-10', 3),
(3, 'Patricia Huerta Jara', '2001-09-01', 1),
(4, 'Fidel BuenaAventura ', '2001-12-15', 4),
(5, 'Susana Sepeda Quinte', '2000-10-01', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE IF NOT EXISTS `carreras` (
  `carrera` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` enum('DS','DE','CTyP','TQA','TQF','TQI') NOT NULL,
  `duracion` varchar(10) NOT NULL,
  PRIMARY KEY (`carrera`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`carrera`, `nombre`, `duracion`) VALUES
(1, 'DS', '4'),
(2, 'DE', '4'),
(3, 'CTyP', '4'),
(4, 'TQA', '4'),
(5, 'TQF', '4'),
(6, 'TQI', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `registro` int(2) NOT NULL,
  `nomina` int(5) NOT NULL,
  `hora` float(5,2) NOT NULL,
  `lugar` varchar(10) NOT NULL,
  `dia` enum('L','M','C','J','V') NOT NULL,
  `horas` int(2) NOT NULL,
  `grupo` int(2) NOT NULL,
  `idc` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idc`),
  KEY `registro` (`registro`),
  KEY `nomina` (`nomina`),
  KEY `grupo` (`grupo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`registro`, `nomina`, `hora`, `lugar`, `dia`, `horas`, `grupo`, `idc`) VALUES
(1, 1, 7.55, 'E21', 'L', 2, 1, 1),
(2, 1, 10.00, 'T1', 'L', 1, 1, 2),
(5, 2, 10.55, 'A21', 'C', 2, 2, 3),
(4, 2, 7.55, 'C13', 'J', 1, 3, 4),
(5, 3, 8.50, 'A12', 'V', 1, 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE IF NOT EXISTS `grupos` (
  `grupo` int(2) NOT NULL AUTO_INCREMENT,
  `carrera` int(2) NOT NULL,
  `nombre` varchar(4) NOT NULL,
  PRIMARY KEY (`grupo`),
  KEY `carrera` (`carrera`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`grupo`, `carrera`, `nombre`) VALUES
(1, 1, '1A1'),
(2, 2, '1A2'),
(3, 1, '2C1'),
(4, 2, '3E1'),
(5, 3, '4F2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
  `num-pago` int(2) NOT NULL AUTO_INCREMENT,
  `registro` int(2) NOT NULL,
  `fecha` date NOT NULL,
  `monto` float(6,2) NOT NULL,
  `concepto` enum('C','S','T','A','O') NOT NULL,
  `tipo` enum('E','TC','C') NOT NULL,
  PRIMARY KEY (`num-pago`),
  KEY `registro` (`registro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`num-pago`, `registro`, `fecha`, `monto`, `concepto`, `tipo`) VALUES
(1, 1, '2017-12-01', 3200.00, 'C', 'E'),
(2, 2, '2017-12-02', 2950.00, 'C', 'TC'),
(3, 3, '2017-12-02', 2950.00, 'C', 'E'),
(4, 4, '2017-12-02', 40.00, 'S', 'E'),
(5, 5, '2017-12-03', 350.00, 'A', 'E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE IF NOT EXISTS `profesores` (
  `nomina` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `fechaIng` date NOT NULL,
  `carrera` int(2) NOT NULL,
  PRIMARY KEY (`nomina`),
  KEY `carrera` (`carrera`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`nomina`, `nombre`, `fechaIng`, `carrera`) VALUES
(1, 'Elsy Patron', '1998-08-16', 1),
(2, 'Roberto Pascual', '1980-02-16', 2),
(3, 'Sofia Baron', '1998-08-16', 1),
(4, 'Luis Venegas', '1998-08-16', 3),
(5, 'AnaHuerta', '1980-02-16', 5);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos-carreras` FOREIGN KEY (`carrera`) REFERENCES `carreras` (`carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos-alumnos` FOREIGN KEY (`registro`) REFERENCES `alumnos` (`registro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cursos-grupos` FOREIGN KEY (`grupo`) REFERENCES `grupos` (`grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cursos-profesores` FOREIGN KEY (`nomina`) REFERENCES `profesores` (`nomina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `grupos-carreras` FOREIGN KEY (`carrera`) REFERENCES `carreras` (`carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos-alumnos` FOREIGN KEY (`registro`) REFERENCES `alumnos` (`registro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `profesores-careras` FOREIGN KEY (`carrera`) REFERENCES `carreras` (`carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2017 a las 16:40:56
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `practicabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `Registro` bigint(8) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) NOT NULL,
  `Paterno` varchar(20) NOT NULL,
  `Materno` varchar(20) NOT NULL,
  `Calle` varchar(40) NOT NULL,
  `Numero` varchar(5) NOT NULL,
  `Colonia` varchar(40) NOT NULL,
  `CP` int(6) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `FechaInicio` date NOT NULL,
  PRIMARY KEY (`Registro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='datos correspondientes al alumno' AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Registro`, `Nombre`, `Paterno`, `Materno`, `Calle`, `Numero`, `Colonia`, `CP`, `Correo`, `Telefono`, `FechaInicio`) VALUES
(1, 'Pancracio', 'Perez', 'Flores', 'Avila camacho', '1324', 'Lopez de legazpi', 45502, 'pancracio@hotmail.com', '36424341', '2017-08-03'),
(2, 'Fabiola', 'Montejano', 'Lopez', 'Nayar', '25A', 'las Acacias', 42300, 'montejano@gmail.com', '35271155', '2017-08-04'),
(3, 'Juan Gabriel', 'Gonzales', 'Valdez', 'Independencia', '40085', 'el sauz', 44412, 'juenga-gaymer@gmail.com', '12348765', '2017-08-06'),
(4, 'Kirito', 'Yagami', 'Toriyama', 'cerezo', '3364', 'hikarihaoka', 45732, 'osuna:3@hotmail.com', '33343536', '2017-08-07'),
(5, 'Habu', 'Ichihoyi', 'Kambara', 'Emiliano Zapata', '74', 'sakurasou', 25564, 'kamihabu@yahoo.com', '33383736', '2017-08-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE IF NOT EXISTS `artistas` (
  `nombre` varchar(20) NOT NULL,
  `paterno` varchar(20) NOT NULL,
  `materno` varchar(20) NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `id_art` bigint(12) NOT NULL AUTO_INCREMENT,
  `tendencia` varchar(15) NOT NULL,
  `fecha nacimiento` date NOT NULL,
  `fecha muerte` date NOT NULL,
  PRIMARY KEY (`id_art`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`nombre`, `paterno`, `materno`, `nacionalidad`, `id_art`, `tendencia`, `fecha nacimiento`, `fecha muerte`) VALUES
('Vincent', 'Van', 'Gogh', 'Olanda', 1, 'imprecionista', '1853-01-01', '1890-01-01'),
('Leonardo', 'Da', 'Vinci', 'Italia', 2, 'Polimata', '1452-01-01', '1519-01-01'),
('Eungenio', 'Salvador', 'Dali', 'España', 3, 'subrealismo', '1904-01-01', '1989-01-01'),
('Miguel Angel', '', '', 'Italia', 4, 'renacentista', '1475-01-01', '1564-01-01'),
('Frida', 'Kahlo', 'de Rivera', 'Mexico', 20, 'Impresionismo', '1917-01-01', '1954-01-01'),
('Fernando', 'Botero', '', 'Argentina', 21, 'Romantisismo', '1930-01-01', '1954-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `nombre` varchar(20) NOT NULL,
  `paterno` varchar(20) NOT NULL,
  `materno` varchar(20) NOT NULL,
  `id_cliente` bigint(12) NOT NULL AUTO_INCREMENT,
  `tel_lada` int(2) NOT NULL,
  `tel_numero` varchar(12) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `calle` varchar(20) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `colonia` varchar(20) NOT NULL,
  `cp` int(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`nombre`, `paterno`, `materno`, `id_cliente`, `tel_lada`, `tel_numero`, `ciudad`, `estado`, `calle`, `numero`, `colonia`, `cp`, `email`) VALUES
('Jose', 'Trinidad', 'Fajardo', 1, 33, '35987665', 'tonala', 'jalisco', 'mexico', '1200', 'la moderna', 45410, 'jtb@gmail.com'),
('Ramon', 'Velarde', 'Lopez', 2, 33, '55677898', 'guadalajara', 'jalisco', 'saragoza', '234', 'arboledas', 44980, 'rvl@hotmail.com'),
('Veronica', 'Zumarraga', 'Castellanos', 3, 55, '45671234', 'CDMX', 'Nuevo Leon', 'pedro moreno', '54A', 'americana', 44160, 'veronicaz@gmail.com'),
('Zeila', 'Robles', 'Garcia', 4, 55, '12344567', 'toluca', 'mexico', 'reforma', '24', 'texcoco', 50040, 'zroblesg@outlook.com'),
('Juan', 'Torres', 'Barrientos', 5, 33, '12457823', 'tlaquepaque', 'jalisco', 'acueducto', '345', 'atlas', 44870, 'torresbar@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE IF NOT EXISTS `galeria` (
  `nombre` varchar(40) NOT NULL,
  `ext_largo` float NOT NULL,
  `ext_ancho` float NOT NULL,
  `pais` varchar(15) NOT NULL,
  `ciudad` varchar(20) NOT NULL,
  `colonia` varchar(20) NOT NULL,
  `id_galeria` bigint(12) NOT NULL AUTO_INCREMENT,
  `codigo` bigint(11) NOT NULL,
  PRIMARY KEY (`id_galeria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`nombre`, `ext_largo`, `ext_ancho`, `pais`, `ciudad`, `colonia`, `id_galeria`, `codigo`) VALUES
('hospicio cabañas', 12400, 13500, 'Mexico', 'Guadalajara', 'centro', 1, 0),
('de la ciudad', 5000, 10000, 'Mexico', 'Guadalajara', 'americana', 2, 0),
('Raul Anguano', 5000, 4500, 'Mexico', 'Tlaquepaque', 'el fresno', 3, 0),
('museo de arte huichol wuixarica', 9000, 7000, 'Mexico', 'Zapopan', 'vasilica', 4, 0),
('Tonallan', 2300, 3400, 'Mexico', 'Tonala', 'centro', 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE IF NOT EXISTS `obras` (
  `codigo` int(2) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Tecnica` varchar(20) NOT NULL,
  `Año` int(4) NOT NULL,
  `D_Largo` float(5,2) NOT NULL,
  `D_Ancho` float(5,2) NOT NULL,
  `Precio` float(8,2) NOT NULL,
  `Tipo` enum('PINTURA','ESCULTURA','MURAL','LIENZO') NOT NULL,
  `id_art` bigint(11) NOT NULL,
  `id_galeria` bigint(11) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `obras`
--

INSERT INTO `obras` (`codigo`, `Nombre`, `Tecnica`, `Año`, `D_Largo`, `D_Ancho`, `Precio`, `Tipo`, `id_art`, `id_galeria`) VALUES
(1, 'la wea', 'oleo', 2000, 1.00, 0.60, 3500.00, 'LIENZO', 0, 0),
(2, 'la piedra fria', 'tallado en piedra', 2004, 0.50, 2.10, 5000.00, 'ESCULTURA', 0, 0),
(3, 'enpitsu', 'marmol', 2010, 1.00, 1.00, 2050.00, 'ESCULTURA', 0, 0),
(4, 'el charro', 'carbon', 1600, 0.50, 0.70, 3500.00, 'LIENZO', 0, 0),
(5, 'kinjoubi', 'temple', 2007, 4.50, 2.00, 8000.00, 'MURAL', 0, 0),
(6, 'el quinto sol', 'oleo', 1889, 150.00, 789.50, 1500.00, 'LIENZO', 1, 0),
(7, 'relojes blandos', 'oleo soble lienzo', 1931, 50.00, 60.50, 2579.00, 'LIENZO', 3, 0),
(8, 'la curacion del ciego', 'oleo sobre temple', 1567, 160.00, 234.00, 2000.00, 'LIENZO', 4, 0),
(9, 'el moises', 'yeso', 139, 240.00, 150.00, 54000.00, 'ESCULTURA', 2, 0),
(10, 'la creacion', 'resina', 1922, 230.00, 200.00, 14500.00, 'MURAL', 4, 3),
(13, 'el grito', 'oleo', 1839, 0.74, 0.91, 70000.00, 'LIENZO', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `tipo` enum('Particular','Exposicion') NOT NULL,
  `id_venta` bigint(12) NOT NULL AUTO_INCREMENT,
  `importe` float NOT NULL,
  `fecha` date NOT NULL,
  `id_obra` bigint(20) NOT NULL,
  `id_cliente` bigint(20) NOT NULL,
  `banco` varchar(30) NOT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`tipo`, `id_venta`, `importe`, `fecha`, `id_obra`, `id_cliente`, `banco`) VALUES
('Particular', 1, 2000, '2017-11-04', 6, 2, 'Banorte');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

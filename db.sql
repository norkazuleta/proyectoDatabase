-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-04-2016 a las 22:35:50
-- Versión del servidor: 5.5.47-0ubuntu0.14.04.1
-- Versión de PHP: 5.6.19-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ajuste`
--

CREATE TABLE IF NOT EXISTS `ajuste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(100) NOT NULL,
  `valor` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ajuste`
--

INSERT INTO `ajuste` (`id`, `clave`, `valor`) VALUES
(1, 'webapp_aldea', 'CARMEN FERRER ORTIZ'),
(2, 'webapp_title', 'SISTEMA DE RECORD DE NOTAS'),
(3, 'webapp_description', 'EL SISTEMA DE INFORMACIÓN PARA EL RÉCORD DE NOTAS DE LOS ESTUDIANTES ALDEA UNIVERSITARIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aldea`
--

CREATE TABLE IF NOT EXISTS `aldea` (
  `aldea_codi` varchar(10) NOT NULL,
  `parroq_codi` varchar(10) DEFAULT NULL,
  `aldea_nomb` varchar(100) NOT NULL,
  `aldea_actual` tinyint(1) NOT NULL,
  PRIMARY KEY (`aldea_codi`),
  KEY `IDX_7E614C8BC384E832` (`parroq_codi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aldea`
--

INSERT INTO `aldea` (`aldea_codi`, `parroq_codi`, `aldea_nomb`, `aldea_actual`) VALUES
('23150102', '231501', 'CARMEN FERRER ORTIZ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aldea_turno`
--

CREATE TABLE IF NOT EXISTS `aldea_turno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aldea_codi` varchar(10) DEFAULT NULL,
  `turn_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_592E0F91CCDB9FC1` (`aldea_codi`),
  KEY `IDX_592E0F911F4F9889` (`turn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `aldea_turno`
--

INSERT INTO `aldea_turno` (`id`, `aldea_codi`, `turn_id`) VALUES
(1, '23150102', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE IF NOT EXISTS `docente` (
  `cedu` varchar(11) NOT NULL,
  `nomb` varchar(100) NOT NULL,
  `apell` varchar(100) NOT NULL,
  `fn` date NOT NULL,
  `correo` varchar(100) NOT NULL,
  `tlf` varchar(11) NOT NULL,
  PRIMARY KEY (`cedu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`cedu`, `nomb`, `apell`, `fn`, `correo`, `tlf`) VALUES
('11564980', 'MARIA', 'MONTIEL', '1968-02-10', 'mariamontiel11@gmail.com', '04269644644'),
('12212841', 'DIOCENIN', 'ZULETA MILIAN', '1972-09-04', 'zumildioce@gmail.com', '04167894531'),
('12657985', 'KARINA', 'FERNANDEZ', '1974-09-13', 'karinafernandez12@gmail.com', '04261639388'),
('14675897', 'DAMELYS', 'ZULETA BARRETO', '1981-01-15', 'suivant_18@hotmail.com', '04261640990'),
('17177047', 'ANGEL', 'MONTIEL', '1988-06-04', 'angelmontiel17@gmail.com', '04264912524'),
('18875050', 'ENNY', 'GONZALEZ', '1988-09-26', 'gonzalezenny@gmail.com', '04164644965'),
('18875883', 'NEREYDA', 'ZULETA MILIAN', '1990-04-12', 'nereydab.-@gmail.com', '0426-223472');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `edo_codi` varchar(10) NOT NULL,
  `pais_id` varchar(10) NOT NULL,
  `edo_nomb` varchar(100) NOT NULL,
  PRIMARY KEY (`edo_codi`),
  KEY `IDX_265DE1E3C604D5C6` (`pais_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`edo_codi`, `pais_id`, `edo_nomb`) VALUES
('23', '22', 'ZULIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estu_pnf`
--

CREATE TABLE IF NOT EXISTS `estu_pnf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedu` varchar(11) DEFAULT NULL,
  `pnf_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_19186E886735A52A` (`cedu`),
  KEY `IDX_19186E881BAFD1B3` (`pnf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `estu_pnf`
--

INSERT INTO `estu_pnf` (`id`, `cedu`, `pnf_id`) VALUES
(3, '14697066', 1),
(4, '15410809', 1),
(5, '16767818', 1),
(6, '20658050', 1),
(7, '20660142', 1),
(8, '20660753', 1),
(9, '21510884', 1),
(10, '21510904', 1),
(11, '23471661', 1),
(12, '23888171', 1),
(13, '25202636', 1),
(14, '25202642', 1),
(15, '25251152', 1),
(16, '25251356', 1),
(17, '25251357', 1),
(18, '25290814', 1),
(19, '25290998', 1),
(20, '25367568', 1),
(21, '25471741', 1),
(22, '25952220', 1),
(23, '25952221', 1),
(24, '25972558', 1),
(25, '26536743', 1),
(26, '30599191', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE IF NOT EXISTS `estudiante` (
  `cedu` varchar(11) NOT NULL,
  `nomb` varchar(100) NOT NULL,
  `apell` varchar(100) NOT NULL,
  `fn` date NOT NULL,
  `correo` varchar(100) NOT NULL,
  `tlf` varchar(11) NOT NULL,
  PRIMARY KEY (`cedu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`cedu`, `nomb`, `apell`, `fn`, `correo`, `tlf`) VALUES
('14697066', 'YAMILE', 'AMAYA', '2016-04-20', 'yamilemaya@gmail.com', '04125454354'),
('15410809', 'MARBELYS', 'LARREAL', '1981-02-02', 'marbelys._15@gmail.com', '0424 764893'),
('16767818', 'IGNACIO', 'CARDOZO', '2016-04-20', 'ignacio@gmail.com', '04142999863'),
('20658050', 'VICELIS', 'LARREAL', '2016-04-21', 'vicelis@gmail.com', '04122999864'),
('20660142', 'NORACXIS', 'MAPPARI', '2016-04-21', 'noracxi20@gmailcom', '04142659025'),
('20660753', 'DINORA', 'MAPPARI', '2016-04-21', 'mapparidinora20@gmail.com', '02626548760'),
('21510884', 'KENDERWIN', 'CAMACHO', '1990-04-23', 'camachokenderwin@gmail.com', '0416236590'),
('21510904', 'ADEYMER', 'GONZALEZ', '1998-03-08', 'goinzalezadeymer21@gmail.com', '04146751298'),
('23471661', 'GENESIS', 'LARREAL', '1998-08-23', 'genesislarreal23@gmail.com', '04125672314'),
('23888171', 'OMAR', 'OSORIO', '1996-06-14', 'omarosorio23@hotmail.com', '04261276901'),
('25202636', 'LEONELA', 'QUINTERO', '1997-04-18', 'quinteroleonela25@gmail.com', '04163287491'),
('25202642', 'ADALUZ', 'BLANCO', '1992-07-17', 'blanco_adaluz@gmail.com', '02621658740'),
('25251152', 'CARLEIDY', 'PEREZ', '1999-06-22', 'carleidyperez25@gmail.com', '04163905673'),
('25251356', 'FREYNER', 'MAPPARI', '1997-07-09', 'freynermappari@hotmail.com', '04128795360'),
('25251357', 'NEGREY', 'MAPPARI', '1998-05-13', 'negrey1998@hotmail.com', '02628790518'),
('25290814', 'ANDREA', 'CARVAJAL', '1992-03-23', 'andreacarvajal@gmail.com', '04246547890'),
('25290998', 'ANDIS', 'JURADO', '2016-04-19', 'andisjurado@gmail.com', '04122999866'),
('25367568', 'EDUARDO', 'LARREAL', '1998-05-11', 'eduardolarreal@hotmail.com', '04128790164'),
('25471741', 'JOSE', 'GONZALEZ', '1997-09-29', 'jose23_gonzalez@gmail.com', '04148764920'),
('25952220', 'VISLEINY', 'LARREAL', '1990-04-20', 'visleinylarreal@gmail.com', '04122990861'),
('25952221', 'VISLEIDY', 'LARREAL', '1990-04-20', 'visleidylarreal@gmail.com', '04122999863'),
('25972558', 'SERGGIBEL', 'ALVAREZ', '1997-02-05', 'serggibel1997@gmailcom', '04262279056'),
('26536743', 'EDUMARY', 'LOZANO', '1997-06-16', 'edumarylozano26@gmail.com', '04127612678'),
('30599191', 'KAROLAY', 'BRAVO', '1997-06-19', 'karolaybravo30@gmail.com', '04260986745');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
  `muni_codi` varchar(10) NOT NULL,
  `edo_codi` varchar(10) DEFAULT NULL,
  `muni_nomb` varchar(100) NOT NULL,
  PRIMARY KEY (`muni_codi`),
  KEY `IDX_FE98F5E09ED65F7A` (`edo_codi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`muni_codi`, `edo_codi`, `muni_nomb`) VALUES
('2315', '23', 'GUAJIRA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
  `nota_id` int(11) NOT NULL AUTO_INCREMENT,
  `cedu` varchar(11) DEFAULT NULL,
  `secc_id` int(11) DEFAULT NULL,
  `nota` int(11) NOT NULL,
  `asist` varchar(4) NOT NULL,
  PRIMARY KEY (`nota_id`),
  KEY `IDX_C8D03E0D6735A52A` (`cedu`),
  KEY `IDX_C8D03E0D76D4C273` (`secc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`nota_id`, `cedu`, `secc_id`, `nota`, `asist`) VALUES
(1, '14697066', 1, 16, '80'),
(2, '15410809', 1, 17, '82'),
(3, '20660142', 1, 19, '95'),
(4, '20660753', 1, 19, '95'),
(5, '25251152', 1, 18, '92'),
(6, '25251356', 1, 19, '95'),
(7, '25251357', 1, 19, '95'),
(8, '25972558', 1, 19, '96'),
(9, '26536743', 1, 19, '96'),
(10, '30599191', 1, 17, '90'),
(11, '21510884', 8, 13, '76'),
(12, '21510904', 8, 16, '80'),
(13, '23471661', 8, 12, '75'),
(14, '23888171', 8, 12, '76'),
(15, '25202636', 8, 18, '92'),
(16, '25290814', 8, 19, '96'),
(17, '25367568', 8, 18, '90'),
(18, '21510884', 9, 13, '76'),
(19, '21510904', 9, 17, '82'),
(20, '23471661', 9, 12, '76'),
(21, '23888171', 9, 15, '77'),
(22, '25202636', 9, 19, '96'),
(23, '25290814', 9, 19, '96'),
(24, '25367568', 9, 18, '82'),
(25, '21510884', 10, 15, '78'),
(26, '21510904', 10, 17, '80'),
(27, '23471661', 10, 13, '77'),
(28, '23888171', 10, 16, '79'),
(29, '25202636', 10, 19, '96'),
(30, '25290814', 10, 19, '97'),
(31, '25367568', 10, 18, '88'),
(32, '21510884', 11, 12, '76'),
(33, '21510904', 11, 17, '90'),
(34, '23471661', 11, 13, '77'),
(35, '23888171', 11, 14, '79'),
(36, '25202636', 11, 18, '97'),
(37, '25290814', 11, 19, '97'),
(38, '25367568', 11, 17, '89'),
(39, '21510884', 12, 16, '78'),
(40, '21510904', 12, 17, '80'),
(41, '23471661', 12, 16, '79'),
(42, '23888171', 12, 16, '80'),
(43, '25202636', 12, 18, '93'),
(44, '25290814', 12, 18, '94'),
(45, '25367568', 12, 17, '90'),
(46, '25251152', 2, 20, '99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE IF NOT EXISTS `pais` (
  `pais_id` varchar(10) NOT NULL,
  `pais_nomb` varchar(100) NOT NULL,
  PRIMARY KEY (`pais_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`pais_id`, `pais_nomb`) VALUES
('22', 'VENEZUELA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquia`
--

CREATE TABLE IF NOT EXISTS `parroquia` (
  `parroq_codi` varchar(10) NOT NULL,
  `muni_codi` varchar(10) DEFAULT NULL,
  `parroq_nomb` varchar(100) NOT NULL,
  PRIMARY KEY (`parroq_codi`),
  KEY `IDX_23A71668BE437F36` (`muni_codi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parroquia`
--

INSERT INTO `parroquia` (`parroq_codi`, `muni_codi`, `parroq_nomb`) VALUES
('231501', '2315', 'SINAMAICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE IF NOT EXISTS `periodo` (
  `peri_id` int(11) NOT NULL AUTO_INCREMENT,
  `peri_desc` varchar(50) NOT NULL,
  PRIMARY KEY (`peri_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`peri_id`, `peri_desc`) VALUES
(1, '1'),
(2, '2'),
(3, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_academico`
--

CREATE TABLE IF NOT EXISTS `periodo_academico` (
  `pa_id` int(11) NOT NULL AUTO_INCREMENT,
  `pnf_tipo_id` int(11) DEFAULT NULL,
  `pa_anio` year(4) DEFAULT NULL,
  `pa_codi` varchar(10) NOT NULL,
  `pa_ini` date NOT NULL,
  `pa_fin` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`pa_id`),
  KEY `IDX_C6BC86FCDBF7F8A` (`pnf_tipo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `periodo_academico`
--

INSERT INTO `periodo_academico` (`pa_id`, `pnf_tipo_id`, `pa_anio`, `pa_codi`, `pa_ini`, `pa_fin`, `status`) VALUES
(1, 1, 2016, '1', '2016-02-20', '2016-02-29', 1),
(2, 1, 2014, '1', '2014-04-26', '2014-06-28', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pnf`
--

CREATE TABLE IF NOT EXISTS `pnf` (
  `pnf_id` int(11) NOT NULL AUTO_INCREMENT,
  `pnf_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`pnf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `pnf`
--

INSERT INTO `pnf` (`pnf_id`, `pnf_desc`) VALUES
(1, 'INFORMÁTICA'),
(2, 'ADMINISTRACIÓN'),
(3, 'TURISMO'),
(4, 'CONSTRUCCIÓN CIVIL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pnf_tipo`
--

CREATE TABLE IF NOT EXISTS `pnf_tipo` (
  `tipo_id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_desc` varchar(50) NOT NULL,
  PRIMARY KEY (`tipo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `pnf_tipo`
--

INSERT INTO `pnf_tipo` (`tipo_id`, `tipo_desc`) VALUES
(1, 'CTA'),
(2, 'UBV'),
(3, 'TI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pnf_tray_peri`
--

CREATE TABLE IF NOT EXISTS `pnf_tray_peri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pnf_id` int(11) DEFAULT NULL,
  `tray_id` int(11) DEFAULT NULL,
  `peri_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_704C28071BAFD1B3` (`pnf_id`),
  KEY `IDX_704C2807E8C42A45` (`tray_id`),
  KEY `IDX_704C2807750186B8` (`peri_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `pnf_tray_peri`
--

INSERT INTO `pnf_tray_peri` (`id`, `pnf_id`, `tray_id`, `peri_id`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 2),
(3, 1, 1, 3),
(4, 1, 2, 1),
(5, 1, 2, 2),
(6, 1, 2, 3),
(7, 2, 1, 1),
(8, 2, 1, 2),
(9, 2, 1, 3),
(10, 2, 2, 1),
(11, 2, 2, 2),
(12, 2, 2, 3),
(13, 3, 1, 1),
(14, 3, 1, 2),
(15, 3, 1, 3),
(16, 3, 2, 1),
(17, 3, 2, 2),
(18, 3, 2, 3),
(19, 3, 3, 1),
(20, 3, 3, 2),
(21, 3, 3, 3),
(22, 4, 1, 1),
(23, 4, 1, 2),
(24, 4, 1, 3),
(25, 4, 2, 1),
(26, 4, 2, 2),
(27, 4, 2, 3),
(28, 4, 3, 1),
(29, 4, 3, 2),
(30, 4, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pnf_tray_peri_uc`
--

CREATE TABLE IF NOT EXISTS `pnf_tray_peri_uc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ptp_id` int(11) DEFAULT NULL,
  `uc_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_392AB82A448D56D3` (`ptp_id`),
  KEY `IDX_392AB82A4783DC6D` (`uc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=268 ;

--
-- Volcado de datos para la tabla `pnf_tray_peri_uc`
--

INSERT INTO `pnf_tray_peri_uc` (`id`, `ptp_id`, `uc_id`) VALUES
(1, 1, 11),
(2, 1, 3),
(3, 1, 7),
(4, 1, 2),
(5, 1, 14),
(6, 1, 9),
(7, 1, 1),
(8, 2, 11),
(9, 2, 3),
(10, 2, 7),
(11, 2, 2),
(12, 2, 14),
(13, 2, 5),
(14, 2, 9),
(15, 2, 1),
(16, 3, 11),
(17, 3, 3),
(18, 3, 7),
(19, 3, 2),
(20, 3, 14),
(21, 3, 9),
(22, 3, 1),
(23, 4, 12),
(24, 4, 16),
(25, 4, 8),
(26, 4, 13),
(27, 4, 15),
(28, 4, 10),
(29, 4, 1),
(30, 5, 12),
(31, 5, 16),
(32, 5, 8),
(33, 5, 13),
(34, 5, 15),
(35, 5, 4),
(36, 5, 1),
(37, 6, 8),
(38, 6, 13),
(39, 6, 15),
(40, 6, 6),
(41, 6, 1),
(42, 7, 29),
(43, 7, 43),
(44, 7, 22),
(45, 7, 27),
(46, 7, 36),
(47, 7, 34),
(48, 7, 42),
(49, 7, 32),
(50, 8, 29),
(51, 8, 22),
(52, 8, 27),
(53, 8, 36),
(54, 8, 44),
(55, 8, 32),
(56, 8, 41),
(57, 9, 29),
(58, 9, 22),
(59, 9, 27),
(60, 9, 36),
(61, 9, 32),
(62, 9, 24),
(63, 9, 26),
(64, 10, 35),
(65, 10, 39),
(66, 10, 22),
(67, 10, 28),
(68, 10, 37),
(69, 10, 25),
(70, 11, 35),
(71, 11, 23),
(72, 11, 28),
(73, 11, 37),
(74, 11, 21),
(75, 11, 38),
(76, 11, 40),
(77, 12, 43),
(78, 12, 23),
(79, 12, 28),
(80, 12, 37),
(81, 12, 20),
(82, 12, 18),
(83, 12, 19),
(84, 12, 30),
(85, 12, 17),
(86, 12, 33),
(87, 12, 31),
(88, 13, 50),
(89, 13, 55),
(90, 13, 65),
(91, 13, 73),
(92, 13, 78),
(93, 13, 61),
(94, 13, 59),
(95, 13, 60),
(96, 13, 51),
(97, 13, 72),
(98, 14, 55),
(99, 14, 73),
(100, 14, 61),
(101, 14, 59),
(102, 14, 60),
(103, 14, 51),
(104, 14, 72),
(105, 14, 56),
(106, 14, 66),
(107, 14, 68),
(108, 15, 55),
(109, 15, 61),
(110, 15, 59),
(111, 15, 60),
(112, 15, 51),
(113, 15, 72),
(114, 15, 70),
(115, 15, 73),
(116, 15, 52),
(117, 15, 47),
(118, 16, 55),
(119, 16, 59),
(120, 16, 60),
(121, 16, 51),
(122, 16, 72),
(123, 16, 74),
(124, 16, 67),
(125, 16, 71),
(126, 16, 79),
(127, 16, 62),
(128, 17, 55),
(129, 17, 59),
(130, 17, 60),
(131, 17, 51),
(132, 17, 72),
(133, 17, 74),
(134, 17, 54),
(135, 17, 77),
(136, 17, 64),
(137, 17, 62),
(138, 18, 55),
(139, 18, 59),
(140, 18, 60),
(141, 18, 51),
(142, 18, 72),
(143, 18, 74),
(144, 18, 49),
(145, 18, 76),
(146, 18, 80),
(147, 18, 62),
(148, 19, 55),
(149, 19, 59),
(150, 19, 60),
(151, 19, 51),
(152, 19, 81),
(153, 19, 46),
(154, 19, 48),
(155, 19, 75),
(156, 19, 63),
(157, 20, 55),
(158, 20, 59),
(159, 20, 60),
(160, 20, 51),
(161, 20, 72),
(162, 20, 75),
(163, 20, 53),
(164, 20, 45),
(165, 20, 57),
(166, 20, 63),
(167, 21, 55),
(168, 21, 59),
(169, 21, 60),
(170, 21, 51),
(171, 21, 72),
(172, 21, 75),
(173, 21, 82),
(174, 21, 69),
(175, 21, 58),
(176, 21, 63),
(177, 22, 85),
(178, 22, 91),
(179, 22, 92),
(180, 22, 99),
(181, 22, 103),
(182, 22, 102),
(183, 22, 84),
(184, 22, 95),
(185, 22, 96),
(186, 22, 89),
(187, 23, 85),
(188, 23, 91),
(189, 23, 92),
(190, 23, 99),
(191, 23, 103),
(192, 23, 102),
(193, 23, 84),
(194, 23, 95),
(195, 23, 96),
(196, 23, 89),
(197, 23, 100),
(198, 24, 85),
(199, 24, 103),
(200, 24, 102),
(201, 24, 84),
(202, 24, 95),
(203, 24, 96),
(204, 24, 89),
(205, 24, 92),
(206, 24, 100),
(207, 24, 101),
(208, 25, 102),
(209, 25, 84),
(210, 25, 95),
(211, 25, 96),
(212, 25, 89),
(213, 25, 92),
(214, 25, 108),
(215, 25, 90),
(216, 25, 104),
(217, 25, 110),
(218, 26, 93),
(219, 26, 102),
(220, 26, 84),
(221, 26, 95),
(222, 26, 96),
(223, 26, 89),
(224, 26, 104),
(225, 26, 110),
(226, 26, 86),
(227, 26, 87),
(228, 27, 93),
(229, 27, 102),
(230, 27, 84),
(231, 27, 95),
(232, 27, 96),
(233, 27, 89),
(234, 27, 104),
(235, 27, 110),
(236, 27, 87),
(237, 27, 107),
(238, 28, 93),
(239, 28, 102),
(240, 28, 84),
(241, 28, 95),
(242, 28, 96),
(243, 28, 89),
(244, 28, 83),
(245, 28, 97),
(246, 28, 88),
(247, 28, 105),
(248, 29, 93),
(249, 29, 102),
(250, 29, 84),
(251, 29, 95),
(252, 29, 96),
(253, 29, 89),
(254, 29, 88),
(255, 29, 105),
(256, 29, 94),
(257, 29, 98),
(258, 30, 93),
(259, 30, 102),
(260, 30, 84),
(261, 30, 95),
(262, 30, 96),
(263, 30, 89),
(264, 30, 88),
(265, 30, 105),
(266, 30, 109),
(267, 30, 106);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE IF NOT EXISTS `seccion` (
  `secc_id` int(11) NOT NULL AUTO_INCREMENT,
  `aldea_codi` varchar(10) DEFAULT NULL,
  `turn_id` int(11) DEFAULT NULL,
  `pnf_id` int(11) DEFAULT NULL,
  `tray_id` int(11) DEFAULT NULL,
  `peri_id` int(11) DEFAULT NULL,
  `uc_id` int(11) DEFAULT NULL,
  `pa_id` int(11) DEFAULT NULL,
  `secc_codi` varchar(50) NOT NULL,
  PRIMARY KEY (`secc_id`),
  UNIQUE KEY `secc_codi` (`secc_codi`),
  KEY `IDX_E0BD15C9CCDB9FC1` (`aldea_codi`),
  KEY `IDX_E0BD15C91F4F9889` (`turn_id`),
  KEY `IDX_E0BD15C91BAFD1B3` (`pnf_id`),
  KEY `IDX_E0BD15C9E8C42A45` (`tray_id`),
  KEY `IDX_E0BD15C9750186B8` (`peri_id`),
  KEY `IDX_E0BD15C94783DC6D` (`uc_id`),
  KEY `IDX_E0BD15C9256A9B96` (`pa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`secc_id`, `aldea_codi`, `turn_id`, `pnf_id`, `tray_id`, `peri_id`, `uc_id`, `pa_id`, `secc_codi`) VALUES
(1, '23150102', 1, 1, 1, 1, 11, 1, '0001'),
(2, '23150102', 1, 1, 1, 1, 3, 1, '0002'),
(3, '23150102', 1, 1, 1, 1, 7, 1, '0003'),
(4, '23150102', 1, 1, 1, 1, 2, 1, '0004'),
(5, '23150102', 1, 1, 1, 1, 14, 1, '0005'),
(6, '23150102', 1, 1, 1, 1, 9, 1, '0006'),
(7, '23150102', 1, 1, 1, 1, 1, 1, '0007'),
(8, '23150102', 1, 1, 1, 1, 11, 2, '0008'),
(9, '23150102', 1, 1, 1, 1, 3, 2, '0009'),
(10, '23150102', 1, 1, 1, 1, 7, 2, '0010'),
(11, '23150102', 1, 1, 1, 1, 2, 2, '0011'),
(12, '23150102', 1, 1, 1, 1, 14, 2, '0012'),
(13, '23150102', 1, 1, 1, 1, 9, 2, '0013'),
(14, '23150102', 1, 1, 1, 1, 1, 2, '0014'),
(15, '23150102', 1, 1, 1, 2, 11, 2, '0015');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion_doce`
--

CREATE TABLE IF NOT EXISTS `seccion_doce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secc_id` int(11) DEFAULT NULL,
  `cedu` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E89C5D5576D4C273` (`secc_id`),
  KEY `IDX_E89C5D556735A52A` (`cedu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `seccion_doce`
--

INSERT INTO `seccion_doce` (`id`, `secc_id`, `cedu`) VALUES
(1, 1, '12212841'),
(2, 8, '14675897'),
(4, 9, '14675897'),
(5, 10, '18875883'),
(6, 11, '17177047'),
(7, 12, '18875883'),
(8, 13, '11564980');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion_estu`
--

CREATE TABLE IF NOT EXISTS `seccion_estu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secc_id` int(11) DEFAULT NULL,
  `cedu` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5D28F4D676D4C273` (`secc_id`),
  KEY `IDX_5D28F4D66735A52A` (`cedu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Volcado de datos para la tabla `seccion_estu`
--

INSERT INTO `seccion_estu` (`id`, `secc_id`, `cedu`) VALUES
(1, 1, '14697066'),
(2, 1, '15410809'),
(3, 1, '20660142'),
(4, 1, '20660753'),
(5, 1, '25251152'),
(6, 1, '25251356'),
(7, 1, '25251357'),
(8, 1, '25972558'),
(9, 1, '26536743'),
(10, 1, '30599191'),
(11, 2, '25251152'),
(12, 8, '25290814'),
(13, 8, '25202636'),
(14, 8, '23471661'),
(15, 8, '25367568'),
(16, 8, '21510884'),
(17, 8, '23888171'),
(18, 8, '21510904'),
(19, 9, '25290814'),
(20, 9, '25202636'),
(21, 9, '23471661'),
(22, 9, '25367568'),
(23, 9, '21510884'),
(24, 9, '23888171'),
(25, 9, '21510904'),
(26, 10, '25290814'),
(27, 10, '25202636'),
(28, 10, '23471661'),
(29, 10, '25367568'),
(30, 10, '21510884'),
(31, 10, '23888171'),
(32, 10, '21510904'),
(33, 11, '25290814'),
(34, 11, '25202636'),
(35, 11, '23471661'),
(36, 11, '25367568'),
(37, 11, '21510884'),
(38, 11, '23888171'),
(39, 11, '21510904'),
(40, 12, '25290814'),
(41, 12, '25202636'),
(42, 12, '23471661'),
(43, 12, '25367568'),
(44, 12, '21510884'),
(45, 12, '23888171'),
(46, 12, '21510904');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trayecto`
--

CREATE TABLE IF NOT EXISTS `trayecto` (
  `tray_id` int(11) NOT NULL AUTO_INCREMENT,
  `tray_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`tray_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `trayecto`
--

INSERT INTO `trayecto` (`tray_id`, `tray_desc`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE IF NOT EXISTS `turno` (
  `turn_id` int(11) NOT NULL AUTO_INCREMENT,
  `turn_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`turn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`turn_id`, `turn_desc`) VALUES
(1, 'FINES DE SEMANA'),
(2, 'VIERNES Y SÁBADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_curricular`
--

CREATE TABLE IF NOT EXISTS `unidad_curricular` (
  `uc_id` int(11) NOT NULL AUTO_INCREMENT,
  `pnf_id` int(11) DEFAULT NULL,
  `uc_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`uc_id`),
  KEY `IDX_C9B2928B1BAFD1B3` (`pnf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Volcado de datos para la tabla `unidad_curricular`
--

INSERT INTO `unidad_curricular` (`uc_id`, `pnf_id`, `uc_desc`) VALUES
(1, 1, 'ACTIVIDADES ACREDITABLES'),
(2, 1, 'ALGORITMICA Y PROGRAMACION I'),
(3, 1, 'ARQUITECTURA DEL COMPUTADOR'),
(4, 1, 'BASE DE DATOS'),
(5, 1, 'ELECTIVA'),
(6, 1, 'ELECTIVA II'),
(7, 1, 'FORMACION CRITICA I'),
(8, 1, 'FORMACION CRITICA II'),
(9, 1, 'IDIOMAS'),
(10, 1, 'INGIENERIA DEL SOFTWARE I'),
(11, 1, 'MATEMATICA I'),
(12, 1, 'MATEMATICA II'),
(13, 1, 'PROGRAMACION II'),
(14, 1, 'PROYECTO SOCIOTECNOLOGICO I'),
(15, 1, 'PROYECTO SOCIOTECNOLOGICO II'),
(16, 1, 'REDES DE COMPUTADORA'),
(17, 2, 'ADMINISTRACION DE COSTO'),
(18, 2, 'ADMINISTRACION DE EMPRESAS DE TURISMO (ELECTIVA II)'),
(19, 2, 'ADMINISTRACION HOTELERA (ELECTIVA II)'),
(20, 2, 'BANCA, SEGURO Y SERVICIO (ELECTIVA II)'),
(21, 2, 'CALIDAD Y GESTION AMBIENTAL ORGANIZACIONAL (ELECTIVA I)'),
(22, 2, 'CONTABILIDAD I'),
(23, 2, 'CONTABILIDAD II'),
(24, 2, 'DEBERES FORMALES DEL CONTRIBUYENTE'),
(25, 2, 'DEBERES FORMALES DEL CONTRIBUYENTE ISLR'),
(26, 2, 'DEPORTE,ARTE Y RECREACION I'),
(27, 2, 'FORMACION SOCIOCRITICA I'),
(28, 2, 'FORMACION SOCIOCRITICA II'),
(29, 2, 'FUNDAMENTO DE LA ADMINISTRACION'),
(30, 2, 'GESTION DE EMPRESAS AGROPECUARIA Y PESQUERA (ELECTIVA II)'),
(31, 2, 'GESTION DE EMPRESAS PETROLERAS (ELECTIVA II)'),
(32, 2, 'IDIOMAS I'),
(33, 2, 'MARCO LEGAL DE LAS ORGANIZACIONES'),
(34, 2, 'OPERACIONES FINANCIERAS'),
(35, 2, 'ORGANIZACION Y SISTEMA'),
(36, 2, 'PROYECTO I'),
(37, 2, 'PROYECTO II'),
(38, 2, 'SEMINARIO DE HABILIDADES DIRECTIVAS I'),
(39, 2, 'TALENTO HUMANO'),
(40, 2, 'TALLER CONTABILIDAD GUBERNAMENTAL'),
(41, 2, 'TALLER DE ESTADISTICA'),
(42, 2, 'TECNICAS DE EXPRESION ORAL Y ESCRITA'),
(43, 2, 'TECNOLOGIAS DE LA INFORMACION Y COMUNICACION'),
(44, 2, 'TEORIA Y PRACTICA DEL MERCADEO'),
(45, 3, 'ADMINISTRACION DE EMPRESAS TURISTICAS'),
(46, 3, 'ANALISIS DE PROBLEMAS Y TOMA DE DESICIONES'),
(47, 3, 'ANIMACION Y RECREACION'),
(48, 3, 'CALIDAD TURISTICA'),
(49, 3, 'CONTABILIDAD'),
(50, 3, 'DESARROLLO DE SERVICIOS TURISTICOS'),
(51, 3, 'DESARROLLO PERSONAL'),
(52, 3, 'DESARROLLO SUSTENTABLEDE LA ACTIVIDAD TURISTICA'),
(53, 3, 'DISEÑO DE RUTAS Y CIRCUITOS TURISTICOS'),
(54, 3, 'ESTADISTICA'),
(55, 3, 'FORMACION SOCIO POLITICA'),
(56, 3, 'GEOGRAFIA TURISTICA'),
(57, 3, 'GESTION DE ALIMENTOS Y BEBIDAS'),
(58, 3, 'GESTION DE PRODUCTOS TURISTICOS'),
(59, 3, 'IDIOMAS'),
(60, 3, 'INFORMATICA'),
(61, 3, 'INGLES I'),
(62, 3, 'INGLES II'),
(63, 3, 'INGLES III'),
(64, 3, 'INSPECCION Y FISCALIZACION DE LA ACTIVIDAD TURISTICA'),
(65, 3, 'INTRODUCCION A LA ADMINISTRACION'),
(66, 3, 'INTRODUCCION A LA PLANIFICACION'),
(67, 3, 'LEGISLACION TURISTICA'),
(68, 3, 'MERCADEO'),
(69, 3, 'ORGANIZACION DE EVENTOS Y PROTOCOLO'),
(70, 3, 'PATRIMONIO NACIONAL'),
(71, 3, 'PRESUPUESTO'),
(72, 3, 'PRIMEROS AUXILIOS'),
(73, 3, 'PROYECTO I'),
(74, 3, 'PROYECTO II'),
(75, 3, 'PROYECTO III'),
(76, 3, 'REGISTRO Y CONTROL DE SERVICIOS TURISTICOS'),
(77, 3, 'SERVICIOS OPERATIVOS EN EMPRESAS DE ALOJAMIENTO'),
(78, 3, 'SISTEMA TURISTICO'),
(79, 3, 'SISTEMAS COMPUTARIZADOS DE ADMINISTRACION TURISTICA'),
(80, 3, 'SISTEMAS TECNOLOGICOS PARA LA PLANIFICACION TURISTICA'),
(81, 3, 'TRANSPORTE TURISTICO'),
(82, 3, 'TURISMO PARA TODOS'),
(83, 4, 'ADMINISTRACION DE OBRAS'),
(84, 4, 'DEPORTE, ARTE Y RECREACION I'),
(85, 4, 'DIBUJO LIBRE'),
(86, 4, 'DISTRIBUCION ESPACIAL'),
(87, 4, 'ELEMENTOS DE DISEÑO'),
(88, 4, 'ESTABILIZACION DE TERRENOS'),
(89, 4, 'ESTADISTICA'),
(90, 4, 'EXPRESION TRIDIMENSIONAL'),
(91, 4, 'FISICA Y ESTATICA'),
(92, 4, 'FORMACION SOCIO POLITICA'),
(93, 4, 'FORMACION SOCIOPOLITICA'),
(94, 4, 'GESTION DE PROYECTOS'),
(95, 4, 'INFORMATICA INSTRUMENTAL'),
(96, 4, 'INGLES'),
(97, 4, 'INSTALACIONES EN EDIFICACIONES'),
(98, 4, 'INSTALACIONES EN URBANIZACIONES'),
(99, 4, 'MATEMATICA II'),
(100, 4, 'MATERIALES Y TECNICAS DE CONSTRUCCION'),
(101, 4, 'PLANEAMIENTO URBANO'),
(102, 4, 'PROTECCION INTEGRAL'),
(103, 4, 'PROYECTO SOCIOTECNOLOGICO I'),
(104, 4, 'PROYECTO SOCIOTECNOLOGICO II'),
(105, 4, 'PROYECTO SOCIOTECNOLOGICO III (ADMINISTRACION, GESTION Y SUPERVISION DE PROYECTOS)'),
(106, 4, 'PROYECTOS CONSTRUCTIVOS'),
(107, 4, 'SISTEMAS CONSTRUCTIVOS'),
(108, 4, 'SISTEMAS ESTRUCTURALES I'),
(109, 4, 'SUPERVISION DE PROYECTO'),
(110, 4, 'TOPOGRAFIA Y VIALIDAD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `username_canonical` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_canonical` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNIQ_2265B05D92FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_2265B05DA0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`user_id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `created_at`, `update_at`, `last_name`, `first_name`, `gender`) VALUES
(1, 'norka', 'norka', 'norkazuletamilian@gmail.com', 'norkazuletamilian@gmail.com', 0, 'tjwmk1osn5cocok48occ000so8gg08s', 'XcWs0s+XzuT5ysgW182Ka/O5Anpi7XiVq1rgS79TV9SEmfxBAp0VRI5L6lDGYpsY9aURN6Nkci5keVcGUCswVw==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-04-18 18:38:08', '2016-04-18 18:38:08', NULL, NULL, NULL),
(2, 'admin', 'admin', 'efrainbonilla.dev@gmail.com', 'efrainbonilla.dev@gmail.com', 1, 'cv5m4mkhqyo0oo00ggcsk4ck4s4gkss', 'UUvIDsXto56f1rwhil7bLqY8rn3NESjXij8vG4yLCihFkXJmxsYv8Kbp3WA/z1InhZnuKZJ+UF5wBqS/WCh2cQ==', '2016-04-24 21:14:20', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, '2016-04-18 18:38:08', '2016-04-24 21:14:20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE IF NOT EXISTS `zona` (
  `zona_id` int(11) NOT NULL AUTO_INCREMENT,
  `parroq_codi` varchar(10) DEFAULT NULL,
  `zona_nomb` varchar(100) NOT NULL,
  PRIMARY KEY (`zona_id`),
  KEY `IDX_A786041EC384E832` (`parroq_codi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aldea`
--
ALTER TABLE `aldea`
  ADD CONSTRAINT `FK_7E614C8BC384E832` FOREIGN KEY (`parroq_codi`) REFERENCES `parroquia` (`parroq_codi`);

--
-- Filtros para la tabla `aldea_turno`
--
ALTER TABLE `aldea_turno`
  ADD CONSTRAINT `FK_592E0F911F4F9889` FOREIGN KEY (`turn_id`) REFERENCES `turno` (`turn_id`),
  ADD CONSTRAINT `FK_592E0F91CCDB9FC1` FOREIGN KEY (`aldea_codi`) REFERENCES `aldea` (`aldea_codi`);

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `FK_265DE1E3C604D5C6` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`pais_id`);

--
-- Filtros para la tabla `estu_pnf`
--
ALTER TABLE `estu_pnf`
  ADD CONSTRAINT `FK_19186E881BAFD1B3` FOREIGN KEY (`pnf_id`) REFERENCES `pnf` (`pnf_id`),
  ADD CONSTRAINT `FK_19186E886735A52A` FOREIGN KEY (`cedu`) REFERENCES `estudiante` (`cedu`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `FK_FE98F5E09ED65F7A` FOREIGN KEY (`edo_codi`) REFERENCES `estado` (`edo_codi`);

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `FK_C8D03E0D6735A52A` FOREIGN KEY (`cedu`) REFERENCES `estudiante` (`cedu`),
  ADD CONSTRAINT `FK_C8D03E0D76D4C273` FOREIGN KEY (`secc_id`) REFERENCES `seccion` (`secc_id`);

--
-- Filtros para la tabla `parroquia`
--
ALTER TABLE `parroquia`
  ADD CONSTRAINT `FK_23A71668BE437F36` FOREIGN KEY (`muni_codi`) REFERENCES `municipio` (`muni_codi`);

--
-- Filtros para la tabla `periodo_academico`
--
ALTER TABLE `periodo_academico`
  ADD CONSTRAINT `FK_C6BC86FCDBF7F8A` FOREIGN KEY (`pnf_tipo_id`) REFERENCES `pnf_tipo` (`tipo_id`);

--
-- Filtros para la tabla `pnf_tray_peri`
--
ALTER TABLE `pnf_tray_peri`
  ADD CONSTRAINT `FK_704C28071BAFD1B3` FOREIGN KEY (`pnf_id`) REFERENCES `pnf` (`pnf_id`),
  ADD CONSTRAINT `FK_704C2807750186B8` FOREIGN KEY (`peri_id`) REFERENCES `periodo` (`peri_id`),
  ADD CONSTRAINT `FK_704C2807E8C42A45` FOREIGN KEY (`tray_id`) REFERENCES `trayecto` (`tray_id`);

--
-- Filtros para la tabla `pnf_tray_peri_uc`
--
ALTER TABLE `pnf_tray_peri_uc`
  ADD CONSTRAINT `FK_392AB82A448D56D3` FOREIGN KEY (`ptp_id`) REFERENCES `pnf_tray_peri` (`id`),
  ADD CONSTRAINT `FK_392AB82A4783DC6D` FOREIGN KEY (`uc_id`) REFERENCES `unidad_curricular` (`uc_id`);

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD CONSTRAINT `FK_E0BD15C91BAFD1B3` FOREIGN KEY (`pnf_id`) REFERENCES `pnf` (`pnf_id`),
  ADD CONSTRAINT `FK_E0BD15C91F4F9889` FOREIGN KEY (`turn_id`) REFERENCES `turno` (`turn_id`),
  ADD CONSTRAINT `FK_E0BD15C9256A9B96` FOREIGN KEY (`pa_id`) REFERENCES `periodo_academico` (`pa_id`),
  ADD CONSTRAINT `FK_E0BD15C94783DC6D` FOREIGN KEY (`uc_id`) REFERENCES `unidad_curricular` (`uc_id`),
  ADD CONSTRAINT `FK_E0BD15C9750186B8` FOREIGN KEY (`peri_id`) REFERENCES `periodo` (`peri_id`),
  ADD CONSTRAINT `FK_E0BD15C9CCDB9FC1` FOREIGN KEY (`aldea_codi`) REFERENCES `aldea` (`aldea_codi`),
  ADD CONSTRAINT `FK_E0BD15C9E8C42A45` FOREIGN KEY (`tray_id`) REFERENCES `trayecto` (`tray_id`);

--
-- Filtros para la tabla `seccion_doce`
--
ALTER TABLE `seccion_doce`
  ADD CONSTRAINT `FK_E89C5D556735A52A` FOREIGN KEY (`cedu`) REFERENCES `docente` (`cedu`),
  ADD CONSTRAINT `FK_E89C5D5576D4C273` FOREIGN KEY (`secc_id`) REFERENCES `seccion` (`secc_id`);

--
-- Filtros para la tabla `seccion_estu`
--
ALTER TABLE `seccion_estu`
  ADD CONSTRAINT `FK_5D28F4D66735A52A` FOREIGN KEY (`cedu`) REFERENCES `estudiante` (`cedu`),
  ADD CONSTRAINT `FK_5D28F4D676D4C273` FOREIGN KEY (`secc_id`) REFERENCES `seccion` (`secc_id`);

--
-- Filtros para la tabla `unidad_curricular`
--
ALTER TABLE `unidad_curricular`
  ADD CONSTRAINT `FK_C9B2928B1BAFD1B3` FOREIGN KEY (`pnf_id`) REFERENCES `pnf` (`pnf_id`);

--
-- Filtros para la tabla `zona`
--
ALTER TABLE `zona`
  ADD CONSTRAINT `FK_A786041EC384E832` FOREIGN KEY (`parroq_codi`) REFERENCES `parroquia` (`parroq_codi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

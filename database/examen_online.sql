-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2019 a las 00:47:33
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id_area` int(200) NOT NULL,
  `nombre_area` varchar(200) NOT NULL,
  `descripcion_area` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar_curso`
--

CREATE TABLE `asignar_curso` (
  `id_asginar_curso` int(200) NOT NULL,
  `id_curso` int(200) NOT NULL,
  `id_usuario` int(200) NOT NULL,
  `id_temporada` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(200) NOT NULL,
  `nombre_curso` varchar(200) NOT NULL,
  `descripcion_curso` varchar(200) NOT NULL,
  `estado_curso` varchar(200) NOT NULL,
  `id_temporada` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_curso`, `nombre_curso`, `descripcion_curso`, `estado_curso`, `id_temporada`) VALUES
(1, 'Java', 'programacion en java', '', 1),
(2, 'Php', 'programacion web', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(100) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `ruc` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `imagen` varchar(2000) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `correcto` varchar(200) NOT NULL,
  `incorrecto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `empresa`, `ruc`, `direccion`, `telefono`, `descripcion`, `imagen`, `correo`, `correcto`, `incorrecto`) VALUES
(1, 'Examen online sistemasenoferta', '4324', 'av san marino', '242432334', 'colegio sistemasenoferta', 'logo.jpg', 'sistemasenoferta@gmail.com', '2', '-1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `id_examen` int(200) NOT NULL,
  `tema_examen` varchar(200) NOT NULL,
  `descripcion_examen` varchar(200) NOT NULL,
  `id_curso` int(200) NOT NULL,
  `id_temporada` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_alumno`
--

CREATE TABLE `examen_alumno` (
  `id_examen_alumno` int(200) NOT NULL,
  `id_examen` int(200) NOT NULL,
  `id_usuario` int(200) NOT NULL,
  `puntaje` varchar(200) NOT NULL,
  `correcto` varchar(200) NOT NULL,
  `incorrecto` varchar(200) NOT NULL,
  `id_temporada` int(200) NOT NULL,
  `id_curso` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'has logged in the system at ', '2018-11-27 07:58:26'),
(2, 1, 'has logged out the system at ', '2018-11-27 07:59:03'),
(3, 1, 'has logged in the system at ', '2018-11-30 22:32:20'),
(4, 6, 'has logged in the system at ', '2018-12-01 20:28:15'),
(13, 1, 'has logged out the system at ', '2018-11-30 22:42:36'),
(14, 1, 'has logged in the system at ', '2018-12-04 11:12:37'),
(15, 1, 'has logged in the system at ', '2018-12-19 10:16:00'),
(16, 1, 'has logged in the system at ', '2018-12-19 10:21:46'),
(17, 1, 'has logged in the system at ', '2018-12-19 10:27:32'),
(18, 1, 'has logged in the system at ', '2018-12-19 10:33:11'),
(19, 1, 'se ha desconectado el sistema en ', '2018-12-19 10:39:49'),
(20, 1, 'has logged in the system at ', '2018-12-19 10:40:01'),
(21, 1, 'se ha desconectado el sistema en ', '2018-12-19 10:40:04'),
(22, 1, 'has logged in the system at ', '2018-12-19 10:42:35'),
(23, 1, 'se ha desconectado el sistema en ', '2018-12-19 10:42:44'),
(24, 1, 'has logged in the system at ', '2018-12-19 10:43:07'),
(25, 1, 'se ha desconectado el sistema en ', '2018-12-19 10:44:35'),
(26, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-14 10:55:46'),
(27, 1, 'se ha desconectado el sistema en ', '2019-01-14 11:02:35'),
(28, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-14 11:02:41'),
(29, 1, 'se ha desconectado el sistema en ', '2019-01-14 11:09:15'),
(30, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-16 21:05:23'),
(31, 1, 'se ha desconectado el sistema en ', '2019-01-16 21:05:32'),
(32, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-16 21:06:19'),
(33, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-16 21:09:39'),
(34, 1, 'se ha desconectado el sistema en ', '2019-01-16 21:12:48'),
(35, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-16 21:12:52'),
(36, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-16 22:33:53'),
(37, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-17 08:50:57'),
(38, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-17 22:37:23'),
(39, 1, 'se ha desconectado el sistema en ', '2019-01-18 01:25:04'),
(40, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-18 03:35:56'),
(41, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-18 08:25:58'),
(42, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-18 20:31:12'),
(43, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-19 06:39:38'),
(44, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-20 01:27:24'),
(45, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-20 01:43:21'),
(46, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-20 02:56:46'),
(47, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-20 10:44:05'),
(48, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-20 11:13:20'),
(49, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-21 11:27:47'),
(50, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-23 01:38:33'),
(51, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-23 07:15:31'),
(52, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-23 10:39:09'),
(53, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-23 20:39:13'),
(54, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:32:13'),
(55, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:46:48'),
(56, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:48:41'),
(57, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:48:52'),
(58, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:49:01'),
(59, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:52:37'),
(60, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:55:52'),
(61, 1, 'se ha desconectado el sistema en ', '2019-01-24 02:50:25'),
(62, 1, 'se ha desconectado el sistema en ', '2019-01-25 18:59:42'),
(63, 1, 'se ha desconectado el sistema en ', '2019-01-26 12:13:01'),
(64, 1, 'se ha desconectado el sistema en ', '2019-01-26 12:39:03'),
(65, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:34:43'),
(66, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:35:05'),
(67, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:36:18'),
(68, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:37:19'),
(69, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:40:18'),
(70, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:42:37'),
(71, 2, 'se ha desconectado el sistema en ', '2019-01-26 21:53:27'),
(72, 3, 'se ha desconectado el sistema en ', '2019-01-26 23:53:55'),
(73, 2, 'se ha desconectado el sistema en ', '2019-01-27 00:02:46'),
(74, 3, 'se ha desconectado el sistema en ', '2019-01-27 00:26:04'),
(75, 3, 'se ha desconectado el sistema en ', '2019-01-27 00:27:37'),
(76, 4, 'se ha desconectado el sistema en ', '2019-01-27 00:28:53'),
(77, 0, 'se ha desconectado el sistema en ', '2019-02-01 10:49:35'),
(78, 1, 'se ha desconectado el sistema en ', '2019-02-02 01:10:46'),
(79, 1, 'se ha desconectado el sistema en ', '2019-02-08 13:27:52'),
(80, 1, 'se ha desconectado el sistema en ', '2019-02-08 13:29:04'),
(81, 1, 'se ha desconectado el sistema en ', '2019-02-11 12:13:25'),
(82, 1, 'se ha desconectado el sistema en ', '2019-02-17 23:59:49'),
(83, 1, 'se ha desconectado el sistema en ', '2019-02-19 22:06:23'),
(84, 1, 'se ha desconectado el sistema en ', '2019-02-25 00:30:32'),
(85, 1, 'se ha desconectado el sistema en ', '2019-02-27 11:45:10'),
(86, 1, 'se ha desconectado el sistema en ', '2019-02-28 05:20:10'),
(87, 1, 'se ha desconectado el sistema en ', '2019-03-04 01:08:23'),
(88, 1, 'se ha desconectado el sistema en ', '2019-03-04 07:27:54'),
(89, 3, 'se ha desconectado el sistema en ', '2019-03-04 07:28:35'),
(90, 1, 'se ha desconectado el sistema en ', '2019-03-04 07:37:53'),
(91, 3, 'se ha desconectado el sistema en ', '2019-03-04 10:41:27'),
(92, 1, 'se ha desconectado el sistema en ', '2019-03-05 10:17:44'),
(93, 3, 'se ha desconectado el sistema en ', '2019-03-05 10:17:54'),
(94, 1, 'se ha desconectado el sistema en ', '2019-03-05 12:54:15'),
(95, 3, 'se ha desconectado el sistema en ', '2019-03-05 12:56:25'),
(96, 3, 'se ha desconectado el sistema en ', '2019-03-05 13:15:01'),
(97, 1, 'se ha desconectado el sistema en ', '2019-03-05 21:34:11'),
(98, 1, 'se ha desconectado el sistema en ', '2019-03-05 22:56:40'),
(99, 1, 'se ha desconectado el sistema en ', '2019-03-06 09:09:23'),
(100, 1, 'se ha desconectado el sistema en ', '2019-03-06 09:19:54'),
(101, 3, 'se ha desconectado el sistema en ', '2019-03-06 09:32:54'),
(102, 1, 'se ha desconectado el sistema en ', '2019-03-07 08:06:32'),
(103, 1, 'se ha desconectado el sistema en ', '2019-03-08 13:47:16'),
(104, 3, 'se ha desconectado el sistema en ', '2019-03-08 14:13:56'),
(105, 1, 'se ha desconectado el sistema en ', '2019-03-08 14:32:58'),
(106, 1, 'se ha desconectado el sistema en ', '2019-03-08 23:57:14'),
(107, 1, 'se ha desconectado el sistema en ', '2019-03-09 03:23:22'),
(108, 6, 'se ha desconectado el sistema en ', '2019-03-09 04:49:54'),
(109, 1, 'se ha desconectado el sistema en ', '2019-03-09 04:53:28'),
(110, 6, 'se ha desconectado el sistema en ', '2019-03-09 05:07:58'),
(111, 1, 'se ha desconectado el sistema en ', '2019-03-09 05:10:25'),
(112, 6, 'se ha desconectado el sistema en ', '2019-03-09 05:12:26'),
(113, 1, 'se ha desconectado el sistema en ', '2019-03-09 07:41:10'),
(114, 1, 'se ha desconectado el sistema en ', '2019-03-09 12:58:12'),
(115, 1, 'se ha desconectado el sistema en ', '2019-03-09 23:58:32'),
(116, 1, 'se ha desconectado el sistema en ', '2019-03-09 23:59:19'),
(117, 1, 'se ha desconectado el sistema en ', '2019-03-09 23:59:27'),
(118, 1, 'se ha desconectado el sistema en ', '2019-03-10 00:00:22'),
(119, 1, 'se ha desconectado el sistema en ', '2019-03-10 00:00:34'),
(120, 1, 'se ha desconectado el sistema en ', '2019-03-10 01:33:16'),
(121, 5, 'se ha desconectado el sistema en ', '2019-03-10 01:46:17'),
(122, 5, 'se ha desconectado el sistema en ', '2019-03-10 05:54:18'),
(123, 5, 'se ha desconectado el sistema en ', '2019-03-11 12:37:07'),
(124, 5, 'se ha desconectado el sistema en ', '2019-03-11 13:12:30'),
(125, 1, 'se ha desconectado el sistema en ', '2019-03-12 04:02:11'),
(126, 1, 'se ha desconectado el sistema en ', '2019-03-12 08:26:01'),
(127, 3, 'se ha desconectado el sistema en ', '2019-03-12 08:38:10'),
(128, 1, 'se ha desconectado el sistema en ', '2019-03-12 09:10:43'),
(129, 5, 'se ha desconectado el sistema en ', '2019-03-12 12:33:46'),
(130, 0, 'se ha desconectado el sistema en ', '2019-03-12 12:51:49'),
(131, 5, 'se ha desconectado el sistema en ', '2019-03-31 19:59:15'),
(132, 5, 'se ha desconectado el sistema en ', '2019-04-02 11:38:59'),
(133, 5, 'se ha desconectado el sistema en ', '2019-04-04 11:41:47'),
(134, 5, 'se ha desconectado el sistema en ', '2019-04-04 16:01:10'),
(135, 0, 'se ha desconectado el sistema en ', '2019-04-05 18:15:40'),
(136, 5, 'se ha desconectado el sistema en ', '2019-04-06 10:36:44'),
(137, 5, 'se ha desconectado el sistema en ', '2019-04-13 12:32:33'),
(138, 5, 'se ha desconectado el sistema en ', '2019-04-15 11:45:20'),
(139, 5, 'se ha desconectado el sistema en ', '2019-04-15 21:55:45'),
(140, 5, 'se ha desconectado el sistema en ', '2019-04-15 22:13:42'),
(141, 5, 'se ha desconectado el sistema en ', '2019-04-16 11:58:00'),
(142, 5, 'se ha desconectado el sistema en ', '2019-04-16 18:48:57'),
(143, 5, 'se ha desconectado el sistema en ', '2019-04-16 22:39:40'),
(144, 5, 'se ha desconectado el sistema en ', '2019-04-16 23:41:18'),
(145, 5, 'se ha desconectado el sistema en ', '2019-04-17 21:20:15'),
(146, 5, 'se ha desconectado el sistema en ', '2019-04-17 21:28:21'),
(147, 5, 'se ha desconectado el sistema en ', '2019-04-18 09:40:21'),
(148, 5, 'se ha desconectado el sistema en ', '2019-04-18 20:00:53'),
(149, 0, 'se ha desconectado el sistema en ', '2019-04-18 20:00:59'),
(150, 5, 'se ha desconectado el sistema en ', '2019-04-18 23:16:01'),
(151, 5, 'se ha desconectado el sistema en ', '2019-04-18 23:16:38'),
(152, 5, 'se ha desconectado el sistema en ', '2019-04-19 07:47:43'),
(153, 5, 'se ha desconectado el sistema en ', '2019-04-21 09:08:54'),
(154, 5, 'se ha desconectado el sistema en ', '2019-04-21 19:56:32'),
(155, 7, 'se ha desconectado el sistema en ', '2019-04-21 22:30:24'),
(156, 5, 'se ha desconectado el sistema en ', '2019-04-22 23:02:23'),
(157, 5, 'se ha desconectado el sistema en ', '2019-04-22 23:37:21'),
(158, 5, 'se ha desconectado el sistema en ', '2019-04-23 11:40:35'),
(159, 5, 'se ha desconectado el sistema en ', '2019-05-01 12:04:50'),
(160, 5, 'se ha desconectado el sistema en ', '2019-05-02 10:12:30'),
(161, 5, 'se ha desconectado el sistema en ', '2019-05-02 12:30:32'),
(162, 5, 'se ha desconectado el sistema en ', '2019-05-04 12:10:46'),
(163, 5, 'se ha desconectado el sistema en ', '2019-05-04 22:20:56'),
(164, 5, 'se ha desconectado el sistema en ', '2019-05-07 22:22:45'),
(165, 5, 'se ha desconectado el sistema en ', '2019-05-07 22:24:13'),
(166, 8, 'se ha desconectado el sistema en ', '2019-05-08 12:37:35'),
(167, 8, 'se ha desconectado el sistema en ', '2019-05-08 12:37:46'),
(168, 5, 'se ha desconectado el sistema en ', '2019-06-06 19:55:16'),
(169, 5, 'se ha desconectado el sistema en ', '2019-06-06 20:04:23'),
(170, 5, 'se ha desconectado el sistema en ', '2019-06-06 21:29:35'),
(171, 5, 'se ha desconectado el sistema en ', '2019-06-08 01:49:35'),
(172, 5, 'se ha desconectado el sistema en ', '2019-06-15 01:41:48'),
(173, 5, 'se ha desconectado el sistema en ', '2019-06-15 20:17:22'),
(174, 5, 'se ha desconectado el sistema en ', '2019-06-17 12:26:46'),
(175, 5, 'se ha desconectado el sistema en ', '2019-06-17 12:40:53'),
(176, 5, 'se ha desconectado el sistema en ', '2019-06-17 12:45:34'),
(177, 5, 'se ha desconectado el sistema en ', '2019-06-17 13:10:45'),
(178, 5, 'se ha desconectado el sistema en ', '2019-06-18 00:09:22'),
(179, 5, 'se ha desconectado el sistema en ', '2019-06-18 12:58:27'),
(180, 5, 'se ha desconectado el sistema en ', '2019-06-19 01:00:17'),
(181, 5, 'se ha desconectado el sistema en ', '2019-06-19 01:36:36'),
(182, 5, 'se ha desconectado el sistema en ', '2019-06-20 00:29:38'),
(183, 5, 'se ha desconectado el sistema en ', '2019-06-21 16:38:12'),
(184, 5, 'se ha desconectado el sistema en ', '2019-06-21 21:00:10'),
(185, 9, 'se ha desconectado el sistema en ', '2019-06-21 21:10:28'),
(186, 5, 'se ha desconectado el sistema en ', '2019-06-22 01:24:14'),
(187, 5, 'se ha desconectado el sistema en ', '2019-06-22 01:30:22'),
(188, 5, 'se ha desconectado el sistema en ', '2019-06-28 22:44:04'),
(189, 5, 'se ha desconectado el sistema en ', '2019-07-02 12:41:06'),
(190, 0, 'se ha desconectado el sistema en ', '2019-07-03 12:05:34'),
(191, 5, 'se ha desconectado el sistema en ', '2019-07-03 15:27:59'),
(192, 5, 'se ha desconectado el sistema en ', '2019-07-03 23:35:23'),
(193, 5, 'se ha desconectado el sistema en ', '2019-07-04 23:14:59'),
(194, 5, 'se ha desconectado el sistema en ', '2019-07-04 23:44:59'),
(195, 5, 'se ha desconectado el sistema en ', '2019-07-09 15:49:09'),
(196, 5, 'se ha desconectado el sistema en ', '2019-07-09 16:04:46'),
(197, 5, 'se ha desconectado el sistema en ', '2019-07-09 16:14:12'),
(198, 5, 'se ha desconectado el sistema en ', '2019-07-10 22:56:59'),
(199, 5, 'se ha desconectado el sistema en ', '2019-07-15 00:22:34'),
(200, 5, 'se ha desconectado el sistema en ', '2019-07-15 13:00:29'),
(201, 5, 'se ha desconectado el sistema en ', '2019-07-15 20:42:58'),
(202, 5, 'se ha desconectado el sistema en ', '2019-07-16 12:43:53'),
(203, 5, 'se ha desconectado el sistema en ', '2019-07-16 15:50:45'),
(204, 5, 'se ha desconectado el sistema en ', '2019-07-16 22:51:21'),
(205, 5, 'se ha desconectado el sistema en ', '2019-07-18 21:25:32'),
(206, 5, 'se ha desconectado el sistema en ', '2019-07-21 11:18:10'),
(207, 5, 'se ha desconectado el sistema en ', '2019-07-21 22:52:24'),
(208, 9, 'se ha desconectado el sistema en ', '2019-07-21 22:52:46'),
(209, 5, 'se ha desconectado el sistema en ', '2019-07-21 23:03:12'),
(210, 5, 'se ha desconectado el sistema en ', '2019-07-25 16:46:23'),
(211, 5, 'se ha desconectado el sistema en ', '2019-07-26 20:01:45'),
(212, 5, 'se ha desconectado el sistema en ', '2019-07-27 01:07:23'),
(213, 5, 'se ha desconectado el sistema en ', '2019-07-27 11:21:48'),
(214, 5, 'se ha desconectado el sistema en ', '2019-07-29 00:43:00'),
(215, 5, 'se ha desconectado el sistema en ', '2019-07-29 12:53:32'),
(216, 5, 'se ha desconectado el sistema en ', '2019-07-29 13:09:16'),
(217, 5, 'se ha desconectado el sistema en ', '2019-07-30 12:53:43'),
(218, 5, 'se ha desconectado el sistema en ', '2019-07-31 13:05:23'),
(219, 5, 'se ha desconectado el sistema en ', '2019-07-31 18:46:29'),
(220, 6, 'se ha desconectado el sistema en ', '2019-07-31 19:10:21'),
(221, 0, 'se ha desconectado el sistema en ', '2019-07-31 22:19:09'),
(222, 5, 'se ha desconectado el sistema en ', '2019-08-04 14:47:19'),
(223, 0, 'se ha desconectado el sistema en ', '2019-08-05 21:37:13'),
(224, 5, 'se ha desconectado el sistema en ', '2019-08-06 11:34:12'),
(225, 5, 'se ha desconectado el sistema en ', '2019-08-06 18:02:23'),
(226, 5, 'se ha desconectado el sistema en ', '2019-08-06 18:44:28'),
(227, 5, 'se ha desconectado el sistema en ', '2019-08-07 23:04:38'),
(228, 5, 'se ha desconectado el sistema en ', '2019-08-08 10:45:15'),
(229, 5, 'se ha desconectado el sistema en ', '2019-08-09 13:05:40'),
(230, 5, 'se ha desconectado el sistema en ', '2019-08-11 12:13:38'),
(231, 11, 'se ha desconectado el sistema en ', '2019-08-11 23:32:35'),
(232, 11, 'se ha desconectado el sistema en ', '2019-08-12 23:39:26'),
(233, 5, 'se ha desconectado el sistema en ', '2019-08-13 16:44:32'),
(234, 5, 'se ha desconectado el sistema en ', '2019-08-13 22:55:21'),
(235, 5, 'se ha desconectado el sistema en ', '2019-08-14 11:08:47'),
(236, 11, 'se ha desconectado el sistema en ', '2019-08-14 11:39:38'),
(237, 5, 'se ha desconectado el sistema en ', '2019-08-14 12:12:15'),
(238, 5, 'se ha desconectado el sistema en ', '2019-08-15 00:31:22'),
(239, 5, 'se ha desconectado el sistema en ', '2019-08-16 11:52:18'),
(240, 11, 'se ha desconectado el sistema en ', '2019-08-16 12:23:12'),
(241, 5, 'se ha desconectado el sistema en ', '2019-08-18 22:28:48'),
(242, 11, 'se ha desconectado el sistema en ', '2019-08-19 00:07:22'),
(243, 5, 'se ha desconectado el sistema en ', '2019-08-20 14:32:17'),
(244, 11, 'se ha desconectado el sistema en ', '2019-08-20 14:57:21'),
(245, 5, 'se ha desconectado el sistema en ', '2019-08-20 16:28:58'),
(246, 11, 'se ha desconectado el sistema en ', '2019-08-20 16:41:57'),
(247, 5, 'se ha desconectado el sistema en ', '2019-08-20 19:24:15'),
(248, 11, 'se ha desconectado el sistema en ', '2019-08-20 19:25:45'),
(249, 5, 'se ha desconectado el sistema en ', '2019-08-20 20:16:43'),
(250, 5, 'se ha desconectado el sistema en ', '2019-08-21 10:42:43'),
(251, 11, 'se ha desconectado el sistema en ', '2019-08-21 10:44:27'),
(252, 5, 'se ha desconectado el sistema en ', '2019-08-21 10:46:02'),
(253, 11, 'se ha desconectado el sistema en ', '2019-08-21 10:47:36'),
(254, 5, 'se ha desconectado el sistema en ', '2019-08-21 10:48:07'),
(255, 9, 'se ha desconectado el sistema en ', '2019-08-21 10:49:51'),
(256, 5, 'se ha desconectado el sistema en ', '2019-08-21 11:19:12'),
(257, 5, 'se ha desconectado el sistema en ', '2019-08-21 11:19:58'),
(258, 9, 'se ha desconectado el sistema en ', '2019-08-21 11:22:41'),
(259, 5, 'se ha desconectado el sistema en ', '2019-08-21 11:33:22'),
(260, 5, 'se ha desconectado el sistema en ', '2019-08-21 11:35:56'),
(261, 9, 'se ha desconectado el sistema en ', '2019-08-21 11:44:16'),
(262, 5, 'se ha desconectado el sistema en ', '2019-08-21 11:49:08'),
(263, 9, 'se ha desconectado el sistema en ', '2019-08-21 11:51:34'),
(264, 9, 'se ha desconectado el sistema en ', '2019-08-21 17:04:40'),
(265, 5, 'se ha desconectado el sistema en ', '2019-08-21 17:06:50'),
(266, 11, 'se ha desconectado el sistema en ', '2019-08-21 17:16:59'),
(267, 5, 'se ha desconectado el sistema en ', '2019-08-22 08:57:56'),
(268, 9, 'se ha desconectado el sistema en ', '2019-08-22 09:25:07'),
(269, 5, 'se ha desconectado el sistema en ', '2019-08-22 09:31:20'),
(270, 5, 'se ha desconectado el sistema en ', '2019-08-22 17:33:01'),
(271, 9, 'se ha desconectado el sistema en ', '2019-08-22 17:35:31'),
(272, 5, 'se ha desconectado el sistema en ', '2019-08-22 17:35:41'),
(273, 11, 'se ha desconectado el sistema en ', '2019-08-22 17:36:06'),
(274, 9, 'se ha desconectado el sistema en ', '2019-08-22 18:27:30'),
(275, 5, 'se ha desconectado el sistema en ', '2019-08-23 12:28:26'),
(276, 9, 'se ha desconectado el sistema en ', '2019-08-23 12:46:27'),
(277, 11, 'se ha desconectado el sistema en ', '2019-08-23 12:47:09'),
(278, 5, 'se ha desconectado el sistema en ', '2019-08-23 12:48:04'),
(279, 6, 'se ha desconectado el sistema en ', '2019-08-23 12:48:56'),
(280, 6, 'se ha desconectado el sistema en ', '2019-08-23 12:52:19'),
(281, 5, 'se ha desconectado el sistema en ', '2019-08-23 12:53:07'),
(282, 5, 'se ha desconectado el sistema en ', '2019-08-23 12:54:15'),
(283, 5, 'se ha desconectado el sistema en ', '2019-08-23 12:55:18'),
(284, 10, 'se ha desconectado el sistema en ', '2019-08-23 12:55:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricular_curso_alumno`
--

CREATE TABLE `matricular_curso_alumno` (
  `id_matricular_curso_alumno` int(200) NOT NULL,
  `id_curso` int(200) NOT NULL,
  `id_usuario` int(200) NOT NULL,
  `id_temporada` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id_opcion` int(200) NOT NULL,
  `descripcion_opcion` varchar(200) NOT NULL,
  `id_pregunta` int(200) NOT NULL,
  `id_examen` int(200) NOT NULL,
  `correcta` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones_cliente`
--

CREATE TABLE `opciones_cliente` (
  `id_opciones_cliente` int(200) NOT NULL,
  `descripcion_opcion` varchar(200) NOT NULL,
  `estado_opcion` varchar(200) NOT NULL,
  `codigo_pregunta` varchar(200) NOT NULL,
  `id_usuario` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pregunta` int(200) NOT NULL,
  `titulo_pregunta` varchar(200) NOT NULL,
  `id_examen` int(200) NOT NULL,
  `numero` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta_contesta`
--

CREATE TABLE `pregunta_contesta` (
  `id_pregunta_contesta` int(200) NOT NULL,
  `id_examen` int(200) NOT NULL,
  `id_pregunta` int(200) NOT NULL,
  `id_opcion` int(200) NOT NULL,
  `id_estudiante` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporada`
--

CREATE TABLE `temporada` (
  `id_temporada` int(200) NOT NULL,
  `nombre_temporada` varchar(200) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `anio` varchar(200) NOT NULL,
  `estado_temporada` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporal`
--

CREATE TABLE `temporal` (
  `id_temporal` int(200) NOT NULL,
  `id_conductor` int(200) NOT NULL,
  `id_propietario` int(200) NOT NULL,
  `id_bus_salida` int(200) NOT NULL,
  `id_cliente` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `temporal`
--

INSERT INTO `temporal` (`id_temporal`, `id_conductor`, `id_propietario`, `id_bus_salida`, `id_cliente`) VALUES
(1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `imagen`, `tipo`, `nombre`, `apellido`, `telefono`, `correo`) VALUES
(5, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', '1.jpg', 'administrador', 'sf', 'fdf', '54345', 'sistemasenoferta@gmail.com'),
(6, 'mercury', 'a1Bz20ydqelm8m1wqlabe10f7e5afbbb3a79ce619739541149', '', 'docente', 'fredy', 'mercury', '345543', 'mercury@gmail.com'),
(9, 'vinicius', 'a1Bz20ydqelm8m1wql7fa81ff5e6a88a34ca2392240268c68f', '', 'docente', 'vinicius jr', 'vinicius', '423424', 'vinicius@gmail.com'),
(10, 'sergio', 'a1Bz20ydqelm8m1wql827ccb0eea8a706c4c34a16891f84e7b', '', 'estudiante', 'sergio', 'bumburi', '2432432', 'sergio@gmail.com'),
(11, 'suckov', 'a1Bz20ydqelm8m1wql0d17ee1b14dd29544057f6d7a65cc746', '1.jpg', 'estudiante', 'suckov', 'hainster', '42342432', 'suckov@gmail.com'),
(12, 'erickson', 'a1Bz20ydqelm8m1wql591b252c0c8f97ff08c4e21336637393', '', 'estudiante', 'Nuk', 'erickson', '5435', 'erickson@gmail.com'),
(13, 'abrahan', 'a1Bz20ydqelm8m1wql5a426394e8c9e2ebca67054be30d2be8', '', 'estudiante', 'Abrahan', 'Valdelomar', '434543', 'abrahan@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `asignar_curso`
--
ALTER TABLE `asignar_curso`
  ADD PRIMARY KEY (`id_asginar_curso`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`id_examen`);

--
-- Indices de la tabla `examen_alumno`
--
ALTER TABLE `examen_alumno`
  ADD PRIMARY KEY (`id_examen_alumno`);

--
-- Indices de la tabla `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indices de la tabla `matricular_curso_alumno`
--
ALTER TABLE `matricular_curso_alumno`
  ADD PRIMARY KEY (`id_matricular_curso_alumno`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id_opcion`);

--
-- Indices de la tabla `opciones_cliente`
--
ALTER TABLE `opciones_cliente`
  ADD PRIMARY KEY (`id_opciones_cliente`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indices de la tabla `pregunta_contesta`
--
ALTER TABLE `pregunta_contesta`
  ADD PRIMARY KEY (`id_pregunta_contesta`);

--
-- Indices de la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD PRIMARY KEY (`id_temporada`);

--
-- Indices de la tabla `temporal`
--
ALTER TABLE `temporal`
  ADD PRIMARY KEY (`id_temporal`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignar_curso`
--
ALTER TABLE `asignar_curso`
  MODIFY `id_asginar_curso` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `examen`
--
ALTER TABLE `examen`
  MODIFY `id_examen` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `examen_alumno`
--
ALTER TABLE `examen_alumno`
  MODIFY `id_examen_alumno` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT de la tabla `matricular_curso_alumno`
--
ALTER TABLE `matricular_curso_alumno`
  MODIFY `id_matricular_curso_alumno` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id_opcion` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `opciones_cliente`
--
ALTER TABLE `opciones_cliente`
  MODIFY `id_opciones_cliente` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pregunta` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pregunta_contesta`
--
ALTER TABLE `pregunta_contesta`
  MODIFY `id_pregunta_contesta` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `temporada`
--
ALTER TABLE `temporada`
  MODIFY `id_temporada` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `temporal`
--
ALTER TABLE `temporal`
  MODIFY `id_temporal` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

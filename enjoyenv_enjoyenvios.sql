-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2020 a las 05:36:15
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `enjoyenv_enjoyenvios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `firstname` mediumtext NOT NULL,
  `email` mediumtext NOT NULL,
  `password` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `email`, `password`) VALUES
(5, 'Mikel', 'tiestomikel@gmail.com', '$2y$10$7FWyeSeA./a.1w.q6QLwQO9Z7lVSqmvEctzEv0qFhRwFSl992j732');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfdiop`
--

CREATE TABLE `cfdiop` (
  `id` int(200) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `descripcion` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cfdiop`
--

INSERT INTO `cfdiop` (`id`, `clave`, `descripcion`) VALUES
(1, 'P01', 'P01 Por definir'),
(2, 'G03', 'G03 Gastos en general');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id` int(255) NOT NULL,
  `idUsuario` int(255) NOT NULL,
  `infoEnvio` text NOT NULL,
  `totalPago` float NOT NULL,
  `codigoRastreo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id`, `idUsuario`, `infoEnvio`, `totalPago`, `codigoRastreo`) VALUES
(32, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"fas\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"dwadaw\",\"fecha\":\"2020-09-07T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadwadaw\"},\"puntosEntrega\":[{\"direccion\":\"santa maria la ribera\",\"interior\":\"dwadwa\",\"contenido\":\"dwadwa\",\"nombre\":\"Carlos\",\"correo\":\"dwadwa\",\"telefono\":\"ddwadwa\",\"referencias\":\"dwadaw\"}],\"codigoRastreo\":\"5f564f37c8\",\"fechaRegistro\":\"2020-09-07 23:18:15\",\"estatusEnvio\":3,\"distancia\":7.66}}', 7.66, '5f564f37c8'),
(33, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dawdwa\",\"contenido\":\"dwadwa\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"dwada\",\"fecha\":\"2020-09-07T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dawdaw\"},\"puntosEntrega\":[{\"direccion\":\"Santa Mar\\u00eda la Ribera, Ciudad de M\\u00e9xico, CDMX\",\"interior\":\"dwadaw\",\"contenido\":\"dwada\",\"nombre\":\"dawda\",\"correo\":\"dwa\",\"telefono\":\"wad\",\"referencias\":\"dawaw\"},{\"direccion\":\"centro ciudad de mexico\",\"interior\":\"dwadwa\",\"contenido\":\"dwada\",\"nombre\":\"dwada\",\"correo\":\"dawda\",\"telefono\":\"dwada\",\"referencias\":\"dawd\"}],\"codigoRastreo\":\"5f564f9b34\",\"fechaRegistro\":\"2020-09-07 23:19:55\",\"estatusEnvio\":0,\"distancia\":7.66}}', 7.66, '5f564f9b34'),
(34, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dwad\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5565592873\",\"fecha\":\"2020-09-07T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\"},\"puntosEntrega\":[{\"direccion\":\"santa maria la ribera\",\"interior\":\"dawda\",\"contenido\":\"dwadaw\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"daw\",\"telefono\":\"dwad\",\"referencias\":\"dawdaw\"},{\"direccion\":\"centro ciudad de mexico\",\"interior\":\"awdaw\",\"contenido\":\"dwadwa\",\"nombre\":\"dawd\",\"correo\":\"dwa\",\"telefono\":\"dwa\",\"referencias\":\"ddwada\"}],\"codigoRastreo\":\"5f56516ee3\",\"fechaRegistro\":\"2020-09-07 23:27:42\",\"estatusEnvio\":0,\"distancia\":7.66}}', 7.66, '5f56516ee3'),
(35, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dwad\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5565592873\",\"fecha\":\"2020-09-07T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\"},\"puntosEntrega\":[{\"direccion\":\"CDMX\",\"interior\":\"sadwa\",\"contenido\":\"dwa\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"dwad\",\"telefono\":\"daw\",\"referencias\":\"dwadwa\"},{\"direccion\":\"santa maria la ribera\",\"interior\":\"dwadaw\",\"contenido\":\"dwadaw\",\"nombre\":\"dwada\",\"correo\":\"dwada\",\"telefono\":\"dawda\",\"referencias\":\"dawd\"}],\"codigoRastreo\":\"5f56536bdf\",\"fechaRegistro\":\"2020-09-07 23:36:11\",\"estatusEnvio\":0,\"distancia\":7.66}}', 7.66, '5f56536bdf'),
(36, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dwad\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"dwadwa\",\"fecha\":\"2020-09-07T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadwa\"},\"puntosEntrega\":[{\"direccion\":\"CDMX\",\"interior\":\"dwad\",\"contenido\":\"dwad\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"dwad\",\"telefono\":\"dwa\",\"referencias\":\"ddwa\"},{\"direccion\":\"santa maria la ribera\",\"interior\":\"dwadwa\",\"contenido\":\"ddaw\",\"nombre\":\"dwadaw\",\"correo\":\"dwada\",\"telefono\":\"dwada\",\"referencias\":\"dawda\"},{\"direccion\":\"museo de cera ciudad de mexico\",\"interior\":\"dwadaw\",\"contenido\":\"dawda\",\"nombre\":\"dawdaw\",\"correo\":\"dawdaw\",\"telefono\":\"dawdaw\",\"referencias\":\"dawdaw\"}],\"codigoRastreo\":\"5f56544229\",\"fechaRegistro\":\"2020-09-07 23:39:46\",\"estatusEnvio\":0,\"distancia\":10.9}}', 10.9, '5f56544229'),
(38, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ciudad de mexico\",\"interior\":\"130\",\"contenido\":\"Cajas\",\"nombre\":\"Carlos\",\"correo\":\"emailadwa\",\"telefono\":\"5555555555\",\"fecha\":\"2020-09-11T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dawdwadwadawdawd\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera\",\"interior\":\"dwadsa\",\"contenido\":\"dwadwa\",\"nombre\":\"dwadaw\",\"correo\":\"dwadwad\",\"telefono\":\"55555555\",\"referencias\":\"dwadaw\"},{\"direccion\":\"Reforma 222\",\"interior\":\"dwadaw\",\"contenido\":\"Mikel Ugarte Ramirez\",\"nombre\":\"dwadwa\",\"correo\":\"dwadaw\",\"telefono\":\"dwadaw\",\"referencias\":\"dwadaw\"}],\"codigoRastreo\":\"5f5bdffd5d\",\"fechaRegistro\":\"2020-09-12 04:37:17\",\"estatusEnvio\":2,\"distancia\":7.87}}', 7.87, '5f5bdffd5d'),
(39, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"123\",\"contenido\":\"dawdaw\",\"nombre\":\"dwadwa\",\"correo\":\"dawdwa\",\"telefono\":\"55555555\",\"fecha\":\"2020-09-11T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"sdwadwada\"},\"puntosEntrega\":[{\"direccion\":\"Ciudad de mexico\",\"interior\":\"wadwa\",\"contenido\":\"dwadaw\",\"nombre\":\"ddwadaw\",\"correo\":\"dwadaw\",\"telefono\":\"dawdwa\",\"referencias\":\"dawdwa\"},{\"direccion\":\"reforma 222\",\"interior\":\"dwadaw\",\"contenido\":\"dwadwa\",\"nombre\":\"dawdwadaw\",\"correo\":\"dawdwa\",\"telefono\":\"dwadaw\",\"referencias\":\"awd\"}],\"codigoRastreo\":\"5f5be0ef13\",\"fechaRegistro\":\"2020-09-12 04:41:19\",\"estatusEnvio\":0,\"distancia\":7.77}}', 7.77, '5f5be0ef13'),
(40, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"wadwa\",\"contenido\":\"dawdwa\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5564167869\",\"fecha\":\"2020-09-14T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadwadaw\"},\"puntosEntrega\":[{\"direccion\":\"Jardin balbuena\",\"interior\":\"adwadwa\",\"contenido\":\"dwada\",\"nombre\":\"dawdaw\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5564167869\",\"referencias\":\"adwadwadaw\"}],\"codigoRastreo\":\"5f601fe5a6\",\"fechaRegistro\":\"2020-09-15 09:59:01\",\"estatusEnvio\":0,\"distancia\":2.03}}', 2.03, '5f601fe5a6'),
(41, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwada\",\"contenido\":\"dwadawaw\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5564167869\",\"fecha\":\"2020-09-14T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dawdawdwa\"},\"puntosEntrega\":[{\"direccion\":\"santa maria la ribera\",\"interior\":\"dwadwa\",\"contenido\":\"dwaaw\",\"nombre\":\"awdwadaw\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5564167869\",\"referencias\":\"dwadwadaw\"},{\"direccion\":\"reforma 222\",\"interior\":\"adwadwa\",\"contenido\":\"dwadaw\",\"nombre\":\"awdwad\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5564167869\",\"referencias\":\"adwadawdaw\"}],\"codigoRastreo\":\"5f60207e81\",\"fechaRegistro\":\"2020-09-15 10:01:34\",\"estatusEnvio\":0,\"distancia\":11.55}}', 11.55, '5f60207e81'),
(42, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadaw\",\"contenido\":\"dwadaw\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5565167869\",\"fecha\":\"2020-09-14T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dawadwadwa\"},\"puntosEntrega\":[{\"direccion\":\"reforma 222\",\"interior\":\"ddwadaw\",\"contenido\":\"dawdaw\",\"nombre\":\"Carlos\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5564167869\",\"referencias\":\"dawdwa\"}],\"codigoRastreo\":\"5f6020fb5f\",\"fechaRegistro\":\"2020-09-15 10:03:39\",\"estatusEnvio\":2,\"distancia\":6.07}}', 6.07, '5f6020fb5f'),
(43, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dwadaw\",\"nombre\":\"dwadaw\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5564167869\",\"fecha\":\"2020-09-19T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadaw\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dawdwa\",\"contenido\":\"dawd\",\"nombre\":\"dwad\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5564167869\",\"referencias\":\"dwadaw\"}],\"codigoRastreo\":\"5f6636ae2f\",\"fechaRegistro\":\"2020-09-20 00:49:50\",\"estatusEnvio\":0,\"distancia\":7.21}}', 7.21, '5f6636ae2f'),
(44, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dwad\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5565592873\",\"fecha\":\"2020-09-19T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadaw\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dawdwa\",\"contenido\":\"dwadwa\",\"nombre\":\"wadwa\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5564167869\",\"referencias\":\"dwadaw\"}],\"codigoRastreo\":\"5f6637ae55\",\"fechaRegistro\":\"2020-09-20 00:54:06\",\"estatusEnvio\":0,\"distancia\":7.21}}', 7.21, '5f6637ae55'),
(45, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dawdwa\",\"nombre\":\"dwadwa\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5565592873\",\"fecha\":\"2020-09-19T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadwa\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dwadwa\",\"contenido\":\"dawda\",\"nombre\":\"dwadaw\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5564167869\",\"referencias\":\"dwadaw\"}],\"codigoRastreo\":\"5f663aa186\",\"fechaRegistro\":\"2020-09-20 01:06:41\",\"estatusEnvio\":0,\"distancia\":7.21}}', 7.21, '5f663aa186'),
(46, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"1\",\"contenido\":\"dwadaw\",\"nombre\":\"dawdaw\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5528586604\",\"fecha\":\"2020-09-21T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadwa\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dwadwa\",\"contenido\":\"dwadwa\",\"nombre\":\"dwada\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5528586604\",\"referencias\":\"dawdwa\"}],\"codigoRastreo\":\"5f68f90a91\",\"fechaRegistro\":\"2020-09-22 03:03:38\",\"estatusEnvio\":0,\"distancia\":7.8}}', 7.8, '5f68f90a91'),
(47, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwa\",\"contenido\":\"dwadaw\",\"nombre\":\"dwawad\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5528586604\",\"fecha\":\"2020-09-21T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadwa\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dawdwa\",\"contenido\":\"dwadwa\",\"nombre\":\"dwa\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5564167869\",\"referencias\":\"dwad\"}],\"codigoRastreo\":\"5f68fa09e3\",\"fechaRegistro\":\"2020-09-22 03:07:53\",\"estatusEnvio\":0,\"distancia\":7.8}}', 7.8, '5f68fa09e3'),
(48, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dawdwa\",\"nombre\":\"dwadwa\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5564167869\",\"fecha\":\"2020-09-21T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dwadwa\",\"contenido\":\"dwad\",\"nombre\":\"dwadwad\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5528586604\",\"referencias\":\"dwad\"}],\"codigoRastreo\":\"5f68fa5e9c\",\"fechaRegistro\":\"2020-09-22 03:09:18\",\"estatusEnvio\":0,\"distancia\":7.8}}', 7.8, '5f68fa5e9c'),
(49, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dwadwa\",\"nombre\":\"dwad\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5564167869\",\"fecha\":\"2020-09-21T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwada\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dwadwa\",\"contenido\":\"dwadaw\",\"nombre\":\"dwadaw\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5528586604\",\"referencias\":\"dwadwa\"}],\"codigoRastreo\":\"5f68fd9433\",\"fechaRegistro\":\"2020-09-22 03:23:00\",\"estatusEnvio\":0,\"distancia\":7.8}}', 7.8, '5f68fd9433'),
(50, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"awdwa\",\"contenido\":\"dwadwa\",\"nombre\":\"dwadwa\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5528586604\",\"fecha\":\"2020-09-21T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadwa\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dwadwa\",\"contenido\":\"dawdwa\",\"nombre\":\"dwadwa\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5528586604\",\"referencias\":\"dwadwa\"}],\"codigoRastreo\":\"5f68fe1eba\",\"fechaRegistro\":\"2020-09-22 03:25:18\",\"estatusEnvio\":0,\"distancia\":7.8}}', 7.8, '5f68fe1eba'),
(51, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dawdwa\",\"nombre\":\"dwada\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5528586604\",\"fecha\":\"2020-09-21T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadwa\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dwadwa\",\"contenido\":\"dwa\",\"nombre\":\"dwadwa\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5528586604\",\"referencias\":\"dwadwa\"}],\"codigoRastreo\":\"5f69053961\",\"fechaRegistro\":\"2020-09-22 03:55:37\",\"estatusEnvio\":0,\"distancia\":7.8}}', 7.8, '5f69053961'),
(52, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"1\",\"contenido\":\"dawdwa\",\"nombre\":\"dwadwa\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5565592873\",\"fecha\":\"2020-09-30\",\"hora\":\"\",\"referencias\":\"dwadwa\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dwadwa\",\"contenido\":\"dwa\",\"nombre\":\"dwada\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5528586604\",\"referencias\":\"dwa\"}],\"codigoRastreo\":\"5f6905a696\",\"fechaRegistro\":\"2020-09-22 03:57:26\",\"estatusEnvio\":0,\"distancia\":7.8}}', 7.8, '5f6905a696'),
(53, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"1\",\"contenido\":\"dwadwa\",\"nombre\":\"dawdwa\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5528586604\",\"fecha\":\"2020-09-21\",\"hora\":\"\",\"referencias\":\"dwad\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dwadaw\",\"contenido\":\"dwada\",\"nombre\":\"dwadwa\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5528586604\",\"referencias\":\"dwada\"}],\"codigoRastreo\":\"5f690acfa7\",\"fechaRegistro\":\"2020-09-21 15:19:27\",\"estatusEnvio\":0,\"distancia\":7.8}}', 7.8, '5f690acfa7'),
(54, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dwadwa\",\"nombre\":\"dwadwa\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5564167869\",\"fecha\":\"2020-09-21\",\"hora\":\"\",\"referencias\":\"dwadwa\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"sdwa\",\"contenido\":\"dwa\",\"nombre\":\"dwadwa\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5528586604\",\"referencias\":\"dwad\"}],\"codigoRastreo\":\"5f692ccf3c\",\"fechaRegistro\":\"2020-09-21 17:44:31\",\"estatusEnvio\":0,\"distancia\":7.8}}', 7.8, '5f692ccf3c'),
(55, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"contenido\":\"dwadwa\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5528586604\",\"fecha\":\"2020-09-21\",\"hora\":\"\",\"referencias\":\"dawdwa\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"contenido\":\"dwad\",\"nombre\":\"dwadaw\",\"correo\":\"tiesto@gmail.com\",\"telefono\":\"5528586604\",\"referencias\":\"awdwa\"}],\"codigoRastreo\":\"5f69606e7d\",\"fechaRegistro\":\"2020-09-21 21:24:46\",\"estatusEnvio\":0,\"distancia\":7.8}}', 7.8, '5f69606e7d');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id` int(100) NOT NULL,
  `kilometros` bigint(255) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `titulo` mediumtext NOT NULL,
  `precio` bigint(255) NOT NULL,
  `uuid` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` (`id`, `kilometros`, `descripcion`, `titulo`, `precio`, `uuid`) VALUES
(2, 4002, 'TEST2', 'TEST2', 3502, '1gj327ti12'),
(10, 200, 'TEST', 'TEST', 200, '5f57c8e5ef'),
(11, 200, 'Basico', 'Paquete Basico', 400, '5f57c8edae'),
(14, 500, 'Premum', 'Premum', 900, '5f5bde50a8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repartidores`
--

CREATE TABLE `repartidores` (
  `id` int(255) NOT NULL,
  `informacion` text NOT NULL,
  `status` int(255) NOT NULL,
  `pagar` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `repartidores`
--

INSERT INTO `repartidores` (`id`, `informacion`, `status`, `pagar`) VALUES
(1, '{\"nombre\":\"Oscar Lezama Morales\",\"correo\":\"oscarlez2003@yahoo.com.mx\",\"telefono\":\"5531653800\",\"edad\":\"48\",\"direccion\":\"Calzada Chabacano 115 U o 102\",\"colonia\":\"Ampliaciu00f3n Asturias\",\"status\":0}', 0, 0),
(2, '{\"nombre\":\"Juan Humberto Lu00f3pez Oliva\",\"correo\":\"indomable1976@gmail.com\",\"telefono\":\"7791249456\",\"edad\":\"44\",\"direccion\":\"Mares de Oceanu00eda Mz48 Lt1 2A\",\"colonia\":\"Fracc. Ex Hda de Paula\",\"status\":0}', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` text NOT NULL,
  `password` varchar(2048) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `creditos` float NOT NULL DEFAULT 0,
  `facturacion` tinyint(1) NOT NULL,
  `info` text NOT NULL,
  `codigoConfirmacion` varchar(60000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `email`, `direccion`, `telefono`, `password`, `created`, `modified`, `creditos`, `facturacion`, `info`, `codigoConfirmacion`) VALUES
(2, 'Mikel Ugarteza', 'tiestomikel@gmail.com', 'Santa maria la riberaaa', '5564167869', '$2y$10$7FWyeSeA./a.1w.q6QLwQO9Z7lVSqmvEctzEv0qFhRwFSl992j732', '2019-08-07 21:02:03', '2020-09-22 02:24:46', 25692.7, 1, '{\"nombreFiscal\":\"Fiscal sss\",\"razonSocial\":\"Razon social\",\"ubicacionEmpresa\":\"JTGoeS\",\"cfdi\":\"P01\",\"tipoPersona\":\"FI\",\"rfc\":\"UARM970102P4A\"}', 'CONFIRMADO'),
(149, 'mikelk', 'mikelugarterz@hotmail.com', '', '', '$2y$10$vLP0vcY/FfPWDILLV3U0EuCTPHCkXOcIYrOFgWbY6BgSt2lzbf4Km', '2020-09-04 13:31:48', '2020-09-04 19:20:54', 0, 0, '', 'CONFIRMADO'),
(150, 'Julio', 'maadix@gmail.com', '', '', '$2y$10$.UZ.deiDXieV2lEIFQBTL.xcrTR.U6jq/kLBBpGbcf7Wvm2Ote2QS', '2020-09-04 14:20:34', '2020-09-04 19:20:58', 0, 0, '', 'CONFIRMADO'),
(151, 'Mikel', 'piolin@gail.mx', '', '', '$2y$10$Do0rynZmUKC4bX3cHfFokOiDTWZrn7/4G9YR2sXr2Jo1J3vitUKA.', '2020-09-15 18:04:39', '2020-09-15 23:04:39', 0, 0, '', '5f6148873252c'),
(152, 'Mikel', 'piolin@gdmail.com', '', '', '$2y$10$e83u0d5HhNH7yYTam5hi2OlSnwHDXCUwzJ.FrFdcfDPx5bUVE1idi', '2020-09-15 18:06:00', '2020-09-15 23:06:00', 0, 0, '', '5f6148d8b5153'),
(153, 'Mikel', 'adawdaw@fawaw.com', '', '', '$2y$10$hVVkV0MMGy6DXsQLnpf8Y.wC1mFYuu8FPmD3can/W1LhAFosuMvqu', '2020-09-15 18:06:37', '2020-09-15 23:06:37', 0, 0, '', '5f6148fde185f'),
(154, 'Mikel', 'tiestomikel@gmail.mx', '', '', '$2y$10$YD/1Ers255/iWiANvPuzBOcJnE.aRuDD2WhLtZiZhwr11ITC07EHq', '2020-09-15 18:08:44', '2020-09-15 23:08:44', 0, 0, '', '5f61497cdf449');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cfdiop`
--
ALTER TABLE `cfdiop`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cfdiop`
--
ALTER TABLE `cfdiop`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

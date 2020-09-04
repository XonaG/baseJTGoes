-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2020 a las 21:12:07
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
  `totalPago` int(11) NOT NULL,
  `codigoRastreo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id`, `idUsuario`, `infoEnvio`, `totalPago`, `codigoRastreo`) VALUES
(1, 19, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"santa maria la ribera 92\",\"nombre\":\"\",\"correo\":\"\",\"telefono\":\"\",\"fecha\":\"\"},\"puntosEntrega\":[{\"direccion\":\"santa maria la ribera 80\",\"nombre\":\"\",\"correo\":\"\",\"telefono\":\"\"}],\"codigoRastreo\":\"5e7d6224d1\",\"fechaRegistro\":\"2020-03-27 10:17:08\",\"estatusEnvio\":2,\"distancia\":0.520000000000000017763568394002504646778106689453125,\"total\":30,\"repartidores\":[\"0\"]}}', 30, '5e7d6224d1'),
(2, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Jardu00edn Balbuena, 15900 Ciudad de Mu00e9xico, CDMX, Mu00e9xico\",\"nombre\":\"adawdaw\",\"correo\":\"correo@correo.com\",\"telefono\":\"55555\",\"fecha\":\"31/03/2020\"},\"puntosEntrega\":[{\"direccion\":\"Sta Maru00eda la Ribera, 06400 Ciudad de Mu00e9xico, CDMX, Mu00e9xico\",\"nombre\":\"Mikel\",\"correo\":\"correo@correo.com\",\"telefono\":\"23123123\"}],\"codigoRastreo\":\"5e7d62fb6e\",\"fechaRegistro\":\"2020-03-27 10:20:43\",\"estatusEnvio\":2,\"distancia\":16.030000000000001136868377216160297393798828125,\"total\":160.330000000000012505552149377763271331787109375,\"repartidores\":[\"0\"]}}', 160, '5e7d62fb6e'),
(3, 19, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"santa maria la ribera 92\",\"nombre\":\"carlos\",\"correo\":\"carlos@enjoyenvios.mx\",\"telefono\":\"55355767894\",\"fecha\":\"2020-03-31T06:00:00.000Z\"},\"puntosEntrega\":[{\"direccion\":\"santa maria la ribera 100\",\"nombre\":\"pepe\",\"correo\":\"pepe@correo.mx\",\"telefono\":\"5535576894\"}],\"codigoRastreo\":\"5e7d63f424\",\"fechaRegistro\":\"2020-03-27 10:24:52\",\"estatusEnvio\":2,\"distancia\":0.91000000000000003108624468950438313186168670654296875,\"total\":30,\"repartidores\":[\"0\"]}}', 30, '5e7d63f424'),
(4, 19, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"santa maria la ribera 93\",\"nombre\":\"\",\"correo\":\"\",\"telefono\":\"\",\"fecha\":\"\"},\"puntosEntrega\":[{\"direccion\":\"santa maria la ribera 80\",\"nombre\":\"\",\"correo\":\"\",\"telefono\":\"\"}],\"codigoRastreo\":\"5e7d66ee22\",\"fechaRegistro\":\"2020-03-27 10:37:34\",\"estatusEnvio\":2,\"distancia\":0.95999999999999996447286321199499070644378662109375,\"total\":30,\"repartidores\":[\"0\"]}}', 30, '5e7d66ee22'),
(5, 38, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Reforma 222\",\"nombre\":\"Ro\",\"correo\":\"rodrett@hotmail.com\",\"telefono\":\"55656\",\"fecha\":\"2020-04-02T06:00:00.000Z\"},\"puntosEntrega\":[{\"direccion\":\"Santa Maru00eda la ribera 93 \",\"nombre\":\"Ro\",\"correo\":\"rodrett@hotmail.com\",\"telefono\":\"\"}],\"codigoRastreo\":\"5e854e9def\",\"fechaRegistro\":\"2020-04-02 10:31:57\",\"estatusEnvio\":2,\"distancia\":2.70999999999999996447286321199499070644378662109375,\"total\":30,\"repartidores\":[\"1\"]}}', 30, '5e854e9def'),
(6, 59, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Mercado el Mirador,  Lomas de Padierna, Tlalpan, 14240, CDMX \",\"nombre\":\"Kathia Garcu00eda\",\"correo\":\"kathia_esteli@hotmail.com\",\"telefono\":\"19444402\",\"fecha\":\"2020-04-03T06:00:00.000Z\"},\"puntosEntrega\":[{\"direccion\":\"Calle 1 Mz2 Lt14, Emilio Portes Gil, Tlalpan, 14240, CDMX\",\"nombre\":\"Juan Antonio Delgado\",\"correo\":\"antonio.delgonz@gmail.com\",\"telefono\":\"0445534441378\"}],\"codigoRastreo\":\"5e86a31a0e\",\"fechaRegistro\":\"2020-04-03 10:44:42\",\"estatusEnvio\":2,\"distancia\":0.83999999999999996891375531049561686813831329345703125,\"total\":30,\"repartidores\":[\"0\"]}}', 30, '5e86a31a0e'),
(7, 19, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"santa maria la ribera 93\",\"nombre\":\"El buen Charly\",\"correo\":\"carlos.periodista@hotmail.com\",\"telefono\":\"5535576894\",\"fecha\":\"2020-04-04T06:00:00.000Z\"},\"puntosEntrega\":[{\"direccion\":\"colinas de san josu00e9, privada Marcos, tlalnepantla\",\"nombre\":\"Marina\",\"correo\":\"\",\"telefono\":\"5568814715\"}],\"codigoRastreo\":\"5e88c7a7f0\",\"fechaRegistro\":\"2020-04-05 01:45:11\",\"estatusEnvio\":2,\"distancia\":15.519999999999999573674358543939888477325439453125,\"total\":155.210000000000007958078640513122081756591796875,\"repartidores\":[\"0\"]}}', 155, '5e88c7a7f0'),
(8, 38, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Reforma 222\",\"nombre\":\"Ro\",\"correo\":\"\",\"telefono\":\"\",\"fecha\":\"2020-04-07T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"\"},\"puntosEntrega\":[{\"direccion\":\"Condesa 50\",\"nombre\":\"\",\"correo\":\"\",\"telefono\":\"\",\"referencias\":\"\"},{\"direccion\":\"Avenida Bucareli 10\",\"nombre\":\"\",\"correo\":\"\",\"telefono\":\"\",\"referencias\":\"\"}],\"codigoRastreo\":\"5e8be315de\",\"fechaRegistro\":\"2020-04-07 10:19:01\",\"estatusEnvio\":2,\"distancia\":954.5399999999999636202119290828704833984375,\"total\":9545.350000000000363797880709171295166015625}}', 9545, '5e8be315de'),
(9, 38, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Reforma 222\",\"nombre\":\"Roberro\",\"correo\":\"rodrett@hotmail.com\",\"telefono\":\"5534696439\",\"fecha\":\"2020-04-07T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"Reja negra \"},\"puntosEntrega\":[{\"direccion\":\"Insurgentes sur 36\",\"nombre\":\"Arturo\",\"correo\":\"rodrett@hotmail.com\",\"telefono\":\"5534696439\",\"referencias\":\"Reja azul \"}],\"codigoRastreo\":\"5e8be57221\",\"fechaRegistro\":\"2020-04-07 10:29:06\",\"estatusEnvio\":2,\"distancia\":0.689999999999999946709294817992486059665679931640625,\"total\":30,\"repartidores\":[\"3\"]}}', 30, '5e8be57221'),
(10, 38, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Santa Maru00eda la ribera 93\",\"nombre\":\"Juan\",\"correo\":\"\",\"telefono\":\"5544338744\",\"fecha\":\"2020-04-07T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"\"},\"puntosEntrega\":[{\"direccion\":\"Reforma 222\",\"nombre\":\"Pepe\",\"correo\":\"\",\"telefono\":\"5566775432\",\"referencias\":\"\"}],\"codigoRastreo\":\"5e8be9df71\",\"fechaRegistro\":\"2020-04-07 10:47:59\",\"estatusEnvio\":2,\"distancia\":2.979999999999999982236431605997495353221893310546875,\"total\":30,\"repartidores\":[\"1\"]}}', 30, '5e8be9df71'),
(11, 38, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Reforma 222\",\"nombre\":\"Ro\",\"correo\":\"rodrett@hotmail.com\",\"telefono\":\"55555555\",\"fecha\":\"2020-04-09T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"Fachada azul\"},\"puntosEntrega\":[{\"direccion\":\"Santa Maru00eda la ribera 93\",\"nombre\":\"Ro\",\"correo\":\"rodrett@hotmail.com\",\"telefono\":\"55555555\",\"referencias\":\"Reja negra \"}],\"codigoRastreo\":\"5e8e7c3318\",\"fechaRegistro\":\"2020-04-09 09:36:51\",\"estatusEnvio\":2,\"distancia\":2.70999999999999996447286321199499070644378662109375,\"total\":30,\"repartidores\":[\"3\"]}}', 30, '5e8e7c3318'),
(12, 19, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"santa maria la ribera 93\",\"nombre\":\"\",\"correo\":\"\",\"telefono\":\"\",\"fecha\":\"2020-04-18T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"\"},\"puntosEntrega\":[{\"direccion\":\"santa maria la ribera 100\",\"nombre\":\"\",\"correo\":\"\",\"telefono\":\"\",\"referencias\":\"\"}],\"codigoRastreo\":\"5e9b84db5e\",\"fechaRegistro\":\"2020-04-19 06:53:15\",\"estatusEnvio\":2,\"distancia\":1.1599999999999999200639422269887290894985198974609375,\"total\":30,\"repartidores\":[\"3\"]}}', 30, '5e9b84db5e'),
(13, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"130\",\"contenido\":\"Contendio\",\"nombre\":\"Mikel\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"5565592873\",\"fecha\":\"2020-04-30T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadwa\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"132\",\"contenido\":\"dwadaw\",\"nombre\":\"dwadwa\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"522344324\",\"referencias\":\"dawadaw\"}],\"codigoRastreo\":\"5ea0eb281d\",\"fechaRegistro\":\"2020-04-23 09:11:04\",\"estatusEnvio\":2,\"distancia\":9.75,\"total\":97.4599999999999937472239253111183643341064453125,\"repartidores\":[\"1\"]}}', 97, '5ea0eb281d'),
(14, 19, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Santa Maru00eda la ribera 93\",\"interior\":\"1\",\"contenido\":\"Caja\",\"nombre\":\"Carlos\",\"correo\":\"carlos@correo.mx\",\"telefono\":\"5535576894\",\"fecha\":\"2020-04-24T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"Entre sorjuana y u00e1lzate \"},\"puntosEntrega\":[{\"direccion\":\"Polanco i\",\"interior\":\"12\",\"contenido\":\"Caja\",\"nombre\":\"Pepe\",\"correo\":\"pepe@pepe.mx\",\"telefono\":\"5535576894\",\"referencias\":\"Tienda a un lado \"}],\"codigoRastreo\":\"5ea23ce2a7\",\"fechaRegistro\":\"2020-04-24 09:12:02\",\"estatusEnvio\":2,\"distancia\":5.61000000000000031974423109204508364200592041015625,\"total\":56.1099999999999994315658113919198513031005859375,\"repartidores\":[\"3\"]}}', 56, '5ea23ce2a7'),
(15, 38, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Santa Maru00eda la ribera 93\",\"interior\":\"17\",\"contenido\":\"Caha\",\"nombre\":\"Carkos\",\"correo\":\"vagsha\",\"telefono\":\"Hhsms\",\"fecha\":\"2020-04-29T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"Di\"},\"puntosEntrega\":[{\"direccion\":\"Polanco i\",\"interior\":\"V\",\"contenido\":\"Cv\",\"nombre\":\"Di\",\"correo\":\"tu\",\"telefono\":\"Hi\",\"referencias\":\"Di\"}],\"codigoRastreo\":\"5ea9098365\",\"fechaRegistro\":\"2020-04-29 12:58:43\",\"estatusEnvio\":2,\"distancia\":5.61000000000000031974423109204508364200592041015625,\"total\":56.1099999999999994315658113919198513031005859375,\"repartidores\":[\"3\"]}}', 56, '5ea9098365'),
(16, 19, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"santa maria la ribera 93\",\"interior\":\"90\",\"contenido\":\"das\",\"nombre\":\"asd\",\"correo\":\"dad\",\"telefono\":\"5535576894\",\"fecha\":\"2020-05-05T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"asdasd\"},\"puntosEntrega\":[{\"direccion\":\"reforma 222\",\"interior\":\"asd\",\"contenido\":\"asdasd\",\"nombre\":\"asd\",\"correo\":\"asd\",\"telefono\":\"asd\",\"referencias\":\"asd\"}],\"codigoRastreo\":\"5eb074c45e\",\"fechaRegistro\":\"2020-05-05 04:02:12\",\"estatusEnvio\":2,\"distancia\":3.2400000000000002131628207280300557613372802734375,\"total\":32.409999999999996589394868351519107818603515625,\"repartidores\":[\"3\"]}}', 32, '5eb074c45e'),
(17, 60, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Manuel Carpio 99 Santa Maru00eda la Ribera\",\"interior\":\"12\",\"contenido\":\"Bolsa\",\"nombre\":\"Karla Horta\",\"correo\":\"coyoteblanco2020@gmail.com\",\"telefono\":\"5528827244\",\"fecha\":\"2020-05-07T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"Dentro de Plaza morisko sobre la entrada principal\"},\"puntosEntrega\":[{\"direccion\":\"Henequen 61 Iztacalco\",\"interior\":\"001\",\"contenido\":\"Bolsa\",\"nombre\":\"Pilar Iturralde\",\"correo\":\"coyoteblanco2020@gmail.com\",\"telefono\":\"55 2111 7828\",\"referencias\":\"Edificio 61 depto 001col Infonavit Iztacalco\"}],\"codigoRastreo\":\"5eb081eb8e\",\"fechaRegistro\":\"2020-05-05 04:58:19\",\"estatusEnvio\":2,\"distancia\":17.46000000000000085265128291212022304534912109375,\"total\":174.6200000000000045474735088646411895751953125,\"repartidores\":[\"2\"]}}', 175, '5eb081eb8e'),
(18, 19, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"manuel carpio 99, santa maria la ribera\",\"interior\":\"local 12\",\"contenido\":\"blusas\",\"nombre\":\"karla horta barrera\",\"correo\":\"coyoteblanco2020@gmail.com\",\"telefono\":\"5528827244\",\"fecha\":\"2020-05-08T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"Dentro de la plaza que estu00e1 frente al Kiosko morisco\"},\"puntosEntrega\":[{\"direccion\":\"plutarco elias calles, 180, iztapalapa\",\"interior\":\"301\",\"contenido\":\"blusas\",\"nombre\":\"jorge sandoval\",\"correo\":\"coyoteblanco2020@gmail.com\",\"telefono\":\"5585758085\",\"referencias\":\"edificio B12, depto 301, unidad las americas, atras del chedraui del eje 6, antes de periferico\"}],\"codigoRastreo\":\"5eb4b75b9e\",\"fechaRegistro\":\"2020-05-08 09:35:23\",\"estatusEnvio\":2,\"distancia\":23.92999999999999971578290569595992565155029296875,\"total\":239.340000000000003410605131648480892181396484375,\"repartidores\":[\"2\"]}}', 239, '5eb4b75b9e'),
(19, 43, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Camino Santa Teresa 890\",\"interior\":\"101\",\"contenido\":\"Regalo\",\"nombre\":\"Laura\",\"correo\":\"launader88@gmail.com\",\"telefono\":\"56525310\",\"fecha\":\"2020-05-13T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"referecia: edificio ladrillo, techo verde)\"},\"puntosEntrega\":[{\"direccion\":\"Plaza sama center S Central 911\",\"interior\":\"1\",\"contenido\":\"regalos\",\"nombre\":\"erica garduño\",\"correo\":\"launader88@gmail.com\",\"telefono\":\"21503937\",\"referencias\":\"centro de atencion a clientes de telcel\"}],\"codigoRastreo\":\"5ebae92660\",\"fechaRegistro\":\"2020-05-13 02:21:26\",\"estatusEnvio\":0,\"distancia\":15.339999999999999857891452847979962825775146484375,\"total\":153.3899999999999863575794734060764312744140625}}', 153, '5ebae92660'),
(20, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dawda\",\"contenido\":\"wdadwa\",\"nombre\":\"Mikel\",\"correo\":\"dul_ce22@hotmail.com\",\"telefono\":\"ddawdwa\",\"fecha\":\"\",\"hora\":\"\",\"referencias\":\"dawdwada\"},\"puntosEntrega\":[{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwadwa\",\"contenido\":\"dwadwa\",\"nombre\":\"dwadwa\",\"correo\":\"dawdwa\",\"telefono\":\"dwadwa\",\"referencias\":\"dwadwa\"}],\"codigoRastreo\":\"5ebc558f12\",\"fechaRegistro\":\"2020-05-14 04:16:15\",\"estatusEnvio\":0,\"distancia\":8.24,\"total\":82.39}}', 82, '5ebc558f12'),
(21, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"daw\",\"contenido\":\"dwa\",\"nombre\":\"dwa\",\"correo\":\"dwa\",\"telefono\":\"dwa\",\"fecha\":\"2020-05-13T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadawd\"},\"puntosEntrega\":[{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"daw\",\"contenido\":\"dada\",\"nombre\":\"daw\",\"correo\":\"dawd\",\"telefono\":\"dawdwa\",\"referencias\":\"dawdaw\"}],\"codigoRastreo\":\"5ebc7a2244\",\"fechaRegistro\":\"2020-05-14 06:52:18\",\"estatusEnvio\":0,\"distancia\":9.74,\"total\":97.44}}', 97, '5ebc7a2244'),
(22, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwad\",\"contenido\":\"dwad\",\"nombre\":\"dawdwa\",\"correo\":\"dwad\",\"telefono\":\"daw\",\"fecha\":\"2020-05-13T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadawwad\"},\"puntosEntrega\":[{\"direccion\":\"Av. Cerro de las Torres 395, Campestre Churubusco, Coyoacán\",\"interior\":\"dawdwa\",\"contenido\":\"dwada\",\"nombre\":\"dwa\",\"correo\":\"dwad\",\"telefono\":\"dwadwad\",\"referencias\":\"dawdaw\"},{\"direccion\":\"Reforma 222, Ciudad de México\",\"interior\":\"dwadwa\",\"contenido\":\"dawdwa\",\"nombre\":\"dwadaw\",\"correo\":\"dwadaw\",\"telefono\":\"dwadwa\",\"referencias\":\"dwadwa\"}],\"codigoRastreo\":\"5ebc7a4f90\",\"fechaRegistro\":\"2020-05-14 06:53:03\",\"estatusEnvio\":0,\"distancia\":24.98,\"total\":249.78}}', 250, '5ebc7a4f90'),
(23, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"CIUDAD DE MEXICO\",\"interior\":\"dawd\",\"contenido\":\"dwada\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"dwadwa\",\"fecha\":\"2020-08-25T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dawdwad\"},\"puntosEntrega\":[],\"codigoRastreo\":\"5f45b2a728\",\"fechaRegistro\":\"2020-08-26 08:53:59\",\"estatusEnvio\":0,\"distancia\":3.33}}', 3, '5f45b2a728'),
(24, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"CIUDAD DE MEXICO\",\"interior\":\"dawd\",\"contenido\":\"dwada\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"dwadwa\",\"fecha\":\"2020-08-25T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dawdwad\"},\"puntosEntrega\":[{\"direccion\":\"santa maria la ribera\",\"interior\":\"dwad\",\"contenido\":\"dwa\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"dwad\",\"telefono\":\"dwada\",\"referencias\":\"dawdaw\"},{\"direccion\":\"reforma 222\",\"interior\":\"DWADWA\",\"contenido\":\"DAWd\",\"nombre\":\"daw\",\"correo\":\"dwa\",\"telefono\":\"dwada\",\"referencias\":\"dwadaw\"}],\"codigoRastreo\":\"5f45b36ad3\",\"fechaRegistro\":\"2020-08-26 08:57:14\",\"estatusEnvio\":0,\"distancia\":3.33}}', 3, '5f45b36ad3'),
(25, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"dawdwadwadwadwa\",\"interior\":\"dawd\",\"contenido\":\"dwada\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"dwadwa\",\"fecha\":\"2020-08-25T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dawdwad\"},\"puntosEntrega\":[{\"direccion\":\"awdwadwadwadwadawwadawdaw\",\"interior\":\"dwad\",\"contenido\":\"dwa\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"dwad\",\"telefono\":\"dwada\",\"referencias\":\"dawdaw\"},{\"direccion\":\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"interior\":\"DWADWA\",\"contenido\":\"DAWd\",\"nombre\":\"daw\",\"correo\":\"dwa\",\"telefono\":\"dwada\",\"referencias\":\"dwadaw\"}],\"codigoRastreo\":\"5f45b3f21a\",\"fechaRegistro\":\"2020-08-26 08:59:30\",\"estatusEnvio\":0,\"distancia\":0}}', 0, '5f45b3f21a'),
(26, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"CIUDAD DE MEXICO\",\"interior\":\"dawd\",\"contenido\":\"dwada\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"dwadwa\",\"fecha\":\"2020-08-25T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dawdwad\"},\"puntosEntrega\":[{\"direccion\":\"santa maria la ribera\",\"interior\":\"dwad\",\"contenido\":\"dwa\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"dwad\",\"telefono\":\"dwada\",\"referencias\":\"dawdaw\"},{\"direccion\":\"reforma 222\",\"interior\":\"DWADWA\",\"contenido\":\"DAWd\",\"nombre\":\"daw\",\"correo\":\"dwa\",\"telefono\":\"dwada\",\"referencias\":\"dwadaw\"}],\"codigoRastreo\":\"5f45b471bf\",\"fechaRegistro\":\"2020-08-26 09:01:37\",\"estatusEnvio\":0,\"distancia\":3.33}}', 3, '5f45b471bf'),
(27, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Santa maria la ribera 93\",\"interior\":\"dwad\",\"contenido\":\"dwadaw\",\"nombre\":\"Carlosd\",\"correo\":\"contacto@enjoyenvios.mx\",\"telefono\":\"awdwa\",\"fecha\":\"2020-08-25T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadawda\"},\"puntosEntrega\":[{\"direccion\":\"CDMX\",\"interior\":\"dawdaw\",\"contenido\":\"dwadaw\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"dwadaw\",\"telefono\":\"dwadwa\",\"referencias\":\"dwa\"}],\"codigoRastreo\":\"5f45b72b36\",\"fechaRegistro\":\"2020-08-26 09:13:15\",\"estatusEnvio\":0,\"distancia\":4.21}}', 4, '5f45b72b36'),
(28, 2, '{\"envio\":{\"puntoRecogida\":{\"direccion\":\"Ret. 8 de Lazaro Pavia Edif. 130 -1\",\"interior\":\"dwada\",\"contenido\":\"dwadwa\",\"nombre\":\"Mikel Ugarte\",\"correo\":\"tiestomikel@gmail.com\",\"telefono\":\"dwadaw\",\"fecha\":\"2020-08-25T05:00:00.000Z\",\"hora\":\"\",\"referencias\":\"dwadwa\"},\"puntosEntrega\":[{\"direccion\":\"CIUDAD DE MEXICO\",\"interior\":\"dwadaw\",\"contenido\":\"dwadaw\",\"nombre\":\"Carlosd\",\"correo\":\"dwadaw\",\"telefono\":\"dwadaw\",\"referencias\":\"dawda\"}],\"codigoRastreo\":\"5f45b78e6f\",\"fechaRegistro\":\"2020-08-26 09:14:54\",\"estatusEnvio\":0,\"distancia\":3.97}}', 4, '5f45b78e6f');

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
(1, 100, 'Aprovecha 100 KM por $200.00 pesos', 'Paquete basico', 200, '12d3hku34'),
(2, 400, 'TEST', 'TEST', 350, '1gj327ti12'),
(3, 700, 'TEST', 'TEST', 500, '1321llkjh1hl32'),
(4, 1000, 'TEST', 'TEST', 800, '022b1jhk32h1');

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
  `password` varchar(2048) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `creditos` float NOT NULL DEFAULT 0,
  `info` text NOT NULL,
  `codigoConfirmacion` varchar(60000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `email`, `password`, `created`, `modified`, `creditos`, `info`, `codigoConfirmacion`) VALUES
(2, 'Mikel Ugarte', 'tiestomikel@gmail.com', '$2y$10$7FWyeSeA./a.1w.q6QLwQO9Z7lVSqmvEctzEv0qFhRwFSl992j732', '2019-08-07 21:02:03', '2020-09-03 21:05:35', 1400, '{\"nombreEmpresa\":\"Empresa X\",\"ubicacionEmpresa\":\"JTGoes\",\"cfdi\":\"G03\"}', 'CONFIRMADO'),
(149, 'mikelk', 'mikelugarterz@hotmail.com', '$2y$10$vLP0vcY/FfPWDILLV3U0EuCTPHCkXOcIYrOFgWbY6BgSt2lzbf4Km', '2020-09-04 13:31:48', '2020-09-04 18:31:48', 0, '', '5f5288140fae3');

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cfdiop`
--
ALTER TABLE `cfdiop`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

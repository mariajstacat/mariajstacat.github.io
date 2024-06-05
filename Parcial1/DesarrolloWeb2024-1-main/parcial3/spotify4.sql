-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 02:43 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify4`
--

-- --------------------------------------------------------

--
-- Table structure for table `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Lady Gaga', 'Stefani Joanne Angelina Germanotta, más conocida por su nombre artístico Lady Gaga, es una cantante, compositora, productora, bailarina, actriz, activista y diseñadora de moda estadounidense.?'),
(2, 'Crush 40', 'Crush 40, originalmente llamada Sons of Angels, es una banda japonesa y norteamericana de rock formada en 1998, conocidos principalmente por realizar bandas sonoras para los videojuegos de SEGA, particularmente para la serie Sonic the Hedgehog.'),
(3, 'Odetari ', 'Taha Othman Ahmad, conocido profesionalmente como Odetari, es un cantante, rapero, compositor y productor discográfico estadounidense. Comenzó a producir y lanzar música a los 13 años.'),
(4, 'Crystal Castles', 'Crystal Castles fue un grupo de música electrónica y experimental canadiense formado en 2006 por el productor Ethan Kath y la cantante Alice Glass, que luego dejó la banda y fue reemplazada por Edith Frances'),
(5, 'Tee Lopes', 'Tiago Lopes, más conocido como Tee Lopes, es un compositor portugués-estadounidense principalmente de videojuegos. Es mejor conocido por sus contribuciones a la serie Sonic the Hedgehog que comienza con el videojuego Sonic Mania de 2017.'),
(6, 'Mitski', 'Mitsuki Miyawaki, conocida artísticamente como Mitski, es una cantante y compositora nipo-estadounidense.?'),
(7, 'Kali Uchis', 'Karly Marina Loaiza, conocida artísticamente como Kali Uchis, es una cantante, compositora y productora musical colombo-estadounidense'),
(8, 'Oro Solido', 'Oro Solido es un grupo de merengue con sede en Nueva York. Oro Solido ha vendido varios álbumes, alcanzando el estatus de nombre familiar. Su música incluso ha aparecido en películas y se ha reproducido en estaciones de música tropical desde 1995.'),
(9, 'xxanteria', 'Artista músical que crea ritmos desde 2023.'),
(16, 'LE SSERAFIM', 'Le Sserafim, es un grupo femenino surcoreano formado por Source Music. Está compuesto por cinco miembros: Sakura, Chaewon, Yunjin, Kazuha y Eunchae. El grupo hizo su debut oficial el 2 de mayo de 2022 con el EP Fearless.'),
(17, 'Slipknot', 'Slipknot es una banda estadounidense de metal alternativo formada en 1995 en Des Moines, Iowa, Estados Unidos. Sus integrantes en la actualidad son Corey Taylor, Jim Root, Mick Thomson, Shawn Crahan y Sid Wilson.'),
(18, 'Kendrick Lamar', 'Kendrick Lamar Duckworth (Compton, Los Ángeles, California, 17 de junio de 1987) es un rapero, compositor, productor discográfico estadounidense. Lamar es ampliamente considerado como uno de los mejores raperos de todos los tiempos');

-- --------------------------------------------------------

--
-- Table structure for table `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artistas_canciones`
--

INSERT INTO `artistas_canciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 1, 1),
(3, 3, 3),
(5, 18, 8),
(6, 18, 9),
(7, 2, 6),
(8, 2, 5),
(9, 6, 11),
(10, 6, 10),
(11, 6, 12),
(12, 16, 13);

-- --------------------------------------------------------

--
-- Table structure for table `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Poker Face', 2, '00:03:57', '2009-12-09', 1, 'blanco y negro'),
(3, 'DICE & ROLL (official audio)', 14, '00:02:00', '2024-03-20', 1, 'cartas alrededor, con color rojo'),
(5, 'All of Me', 5, '00:03:52', '2007-10-02', 1, 'miniatura del famoso juego de Shadow the Hedgehog'),
(6, 'All Hail Shadow', 5, '00:04:02', '2022-03-04', 1, 'azul metalico'),
(8, 'Not Like Us', 3, '00:04:33', '2024-05-04', 1, 'casa de drake lleno de SA'),
(9, 'euphoria', 3, '00:06:23', '2024-04-30', 1, 'definicion de euphoria'),
(10, 'My Love Mine All Mine', 8, '00:02:17', '2023-09-14', 1, 'idk'),
(11, 'First Love/Late Spring', 8, '00:04:38', '2023-06-17', 1, 'edificio en blanco y negro'),
(12, 'Me and My Husband', 8, '00:02:17', '2020-12-04', 1, 'mitski siendo maquillada'),
(13, 'ANTIFRAGILE', 4, '00:04:19', '2023-05-01', 1, 'im fearless album');

-- --------------------------------------------------------

--
-- Table structure for table `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuarios_id`, `canciones_id`) VALUES
(1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'metal'),
(2, 'pop'),
(3, 'rap'),
(4, 'k-pop'),
(5, 'j-rock'),
(6, 'hip hop'),
(7, 'phonk'),
(8, 'alt'),
(9, 'merengue'),
(14, 'electrónica');

-- --------------------------------------------------------

--
-- Table structure for table `membresia`
--

CREATE TABLE `membresia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membresia`
--

INSERT INTO `membresia` (`id`, `descripcion`, `precio`) VALUES
(1, 'Membresia individual:\r\nAccede a los atributos que premium te ofrece por 39.99 y alcanzarás canciones', 39.99),
(2, 'Membresia duo:\r\nComparte con tu pareja, amigo o hermano(a) una cuenta premium, cada quien tendrá su ', 59.99),
(3, 'Membresia familiar:\r\nConecta desde 6 cuentas premium de spotify y comparte con tu familia, cada quie', 119.99),
(4, 'Membresía Gratis:\r\nLa aplicación predeterminada ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playlists_canciones`
--

CREATE TABLE `playlists_canciones` (
  `id` int(11) NOT NULL,
  `playlists_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'MJ', 'jacobo.boj@mail.com', 2),
(2, 'Walter', 'waltwhite13@mail.xom', 4),
(3, 'marcat', 'mariajstacat@meow.com', 1),
(4, 'Sapo', 'saramer004@mail.com', 4),
(5, 'alan3', 'urralan1763@mail.com', 3),
(6, 'sao', 'shadianisao00@mail.com', 3),
(7, 'Jack09', 'jaredhernandez@mail.com\r\n', 3),
(8, 'boojo', 'bojorquezann11@mail.com', 1),
(9, 'GojoLovee', 'satorusuguru2@mail.xom', 4),
(10, 'yukiyuki', 'yaridabigail@meow.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indexes for table `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`) USING BTREE;

--
-- Indexes for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `playlists_canciones`
--
ALTER TABLE `playlists_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlists_id` (`playlists_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlists_canciones`
--
ALTER TABLE `playlists_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Constraints for table `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Constraints for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `playlists_canciones`
--
ALTER TABLE `playlists_canciones`
  ADD CONSTRAINT `playlists_canciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlists_canciones_ibfk_2` FOREIGN KEY (`playlists_id`) REFERENCES `playlists` (`id`),
  ADD CONSTRAINT `playlists_canciones_ibfk_3` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

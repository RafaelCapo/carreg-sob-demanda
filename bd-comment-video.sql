-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 21-Set-2020 às 19:37
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd-comment-video`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8_bin NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`) VALUES
(8, 'asdasdasdas', 'asdasdasdasdas'),
(7, 'asdasdasdasd', 'asdasdasdas'),
(6, 'Marcos Magalhães', 'Outro teste!'),
(5, 'Bruno Magalhães', 'muito bom!'),
(4, 'Rafael Capoani', 'Se inscreva na Lista VIP!'),
(3, 'Rafael Capoani', 'Se você gostou do conteúdo deixe seu Like no vídeo!'),
(2, 'Rafael Capoani', 'Se inscreva no canal!'),
(131, 'asdsadasdassadas', '123'),
(1, 'Rafael Capoani', 'Olá mundo!');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

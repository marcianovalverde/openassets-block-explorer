-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 19/05/2020 às 12:32
-- Versão do servidor: 10.3.22-MariaDB-0+deb10u1
-- Versão do PHP: 7.3.14-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `openassets`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `openassets`
--

CREATE TABLE `openassets` (
  `txid` int(11) NOT NULL,
  `addresses` int(11) NOT NULL,
  `addressFrom` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `i` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `issueTxid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `isIssurance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

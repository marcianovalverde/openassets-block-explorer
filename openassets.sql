-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 20/05/2020 às 09:39
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
  `id` int(11) NOT NULL,
  `txid` varchar(255) NOT NULL,
  `addresses` varchar(255) NOT NULL,
  `addressfrom` varchar(255) NOT NULL,
  `asset_Id` varchar(255) NOT NULL,
  `i` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `issueTxid` varchar(255) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `isIssurance` varchar(255) NOT NULL,
  `vout` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `openassets`
--
ALTER TABLE `openassets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `openassets`
--
ALTER TABLE `openassets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

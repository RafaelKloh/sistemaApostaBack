-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Fev-2024 às 23:02
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_apostas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `sorteio`
--

CREATE TABLE `sorteio` (
  `idSorteio` int(11) NOT NULL,
  `dataSorteio` varchar(10) NOT NULL,
  `numeroMaquina` int(11) NOT NULL,
  `animalSorteado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sorteio`
--

INSERT INTO `sorteio` (`idSorteio`, `dataSorteio`, `numeroMaquina`, `animalSorteado`) VALUES
(61, '07-02-2024', 18, 'cachorro'),
(62, '06-02-2024', 68, 'macaco'),
(63, '05-02-2024', 9, 'burro'),
(65, '08-02-2024', 88, 'tigre'),
(66, '09-02-2024', 48, 'elefante');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `sorteio`
--
ALTER TABLE `sorteio`
  ADD PRIMARY KEY (`idSorteio`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `sorteio`
--
ALTER TABLE `sorteio`
  MODIFY `idSorteio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

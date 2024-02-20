-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Fev-2024 às 01:39
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
-- Estrutura da tabela `aposta`
--

CREATE TABLE `aposta` (
  `idAposta` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `numeroUsuario` varchar(4) NOT NULL,
  `data` varchar(10) NOT NULL,
  `valorApostado` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aposta`
--

INSERT INTO `aposta` (`idAposta`, `idUsuario`, `numeroUsuario`, `data`, `valorApostado`) VALUES
(18, 39, '10', '08-02-2024', '21.00'),
(19, 39, '32', '08-02-2024', '123.00'),
(20, 2, '23', '14-02-2024', '123.00'),
(21, 2, '2342', '14-02-2024', '234.00'),
(22, 39, '256', '13-02-2024', '58.00'),
(23, 2, '0002', '15-02-2024', '1234.00'),
(24, 2, '0001', '15-02-2024', '5764576.00'),
(25, 39, '7854', '19-02-2024', '1.00'),
(26, 2, '8145', '19-02-2024', '5.00'),
(27, 2, '7425', '19-02-2024', '7.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sorteio`
--

CREATE TABLE `sorteio` (
  `idSorteio` int(11) NOT NULL,
  `dataSorteio` varchar(10) NOT NULL,
  `numeroMaquina` varchar(4) NOT NULL,
  `animalSorteado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sorteio`
--

INSERT INTO `sorteio` (`idSorteio`, `dataSorteio`, `numeroMaquina`, `animalSorteado`) VALUES
(119, '14-02-2024', '4314', 'borboleta'),
(120, '09-02-2024', '4995', 'veado'),
(121, 'NaN-NaN-Na', '0569', 'porco'),
(122, 'NaN-NaN-Na', '7861', 'leao'),
(123, 'NaN-NaN-Na', '9710', 'burro'),
(124, 'NaN-NaN-Na', '2362', 'leao'),
(125, 'NaN-NaN-Na', '3426', 'carneiro'),
(126, 'NaN-NaN-Na', '2297', 'vaca'),
(127, 'NaN-NaN-Na', '4181', 'touro'),
(128, 'NaN-NaN-Na', '2642', 'cavalo'),
(129, 'NaN-NaN-Na', '2613', 'borboleta'),
(131, '12-02-2024', '8571', 'porco'),
(132, '10-02-2024', '0959', 'jacare'),
(133, '15-02-2024', '5530', 'camelo'),
(134, '18-02-2024', '3019', 'cachorro'),
(135, '08-02-2024', '7406', 'aguia'),
(136, '19-02-2024', '6408', 'aguia'),
(137, '20-02-2024', '5303', 'avestruz');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idTipoUsuario` int(11) NOT NULL,
  `descricao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipousuario`
--

INSERT INTO `tipousuario` (`idTipoUsuario`, `descricao`) VALUES
(1, 'usuario'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `idTipoUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `email`, `senha`, `idTipoUsuario`) VALUES
(1, 'undefined', 'undefined', 'undefined', 1),
(2, 'Paulo', 'paulo@gmail.com', '1', 1),
(35, 'ramos', 'ramos@gmail', '1', 1),
(36, 'ramos', 'fdsafsa@gamil.com', '1', 1),
(37, 'rafw', 'rafrsadfa@gmail.com', '12', 1),
(38, 'rfadsfsa', 'dsofhafou@gmail', '1', 1),
(39, 'teste', 'teste@gmail.com', '1', 1),
(40, 'teste', 'u@gmail.com', 'jf', 1),
(41, 'adimino', 'admin@gmail.com', '1', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aposta`
--
ALTER TABLE `aposta`
  ADD PRIMARY KEY (`idAposta`);

--
-- Índices para tabela `sorteio`
--
ALTER TABLE `sorteio`
  ADD PRIMARY KEY (`idSorteio`);

--
-- Índices para tabela `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idTipoUsuario`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aposta`
--
ALTER TABLE `aposta`
  MODIFY `idAposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `sorteio`
--
ALTER TABLE `sorteio`
  MODIFY `idSorteio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de tabela `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `idTipoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

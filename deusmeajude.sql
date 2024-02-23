-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/02/2024 às 00:46
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `deusmeajude`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aposta`
--

CREATE TABLE `aposta` (
  `idAposta` int(11) NOT NULL,
  `idUSuario` int(11) NOT NULL,
  `numeroUsuario` varchar(4) NOT NULL,
  `data` varchar(10) NOT NULL,
  `valorApostado` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `aposta`
--

INSERT INTO `aposta` (`idAposta`, `idUSuario`, `numeroUsuario`, `data`, `valorApostado`) VALUES
(1, 1, '0004', '23-02-2024', 44.00),
(2, 1, '0003', '23-02-2024', 22.00),
(3, 1, '4675', '22-02-2024', 50.00),
(4, 1, '5987', '22-02-2024', 0.00),
(5, 4, '5899', '22-02-2024', 50.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sorteio`
--

CREATE TABLE `sorteio` (
  `idSorteio` int(11) NOT NULL,
  `dataSorteio` varchar(10) NOT NULL,
  `numeroMaquina` varchar(4) NOT NULL,
  `animalSorteado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `sorteio`
--

INSERT INTO `sorteio` (`idSorteio`, `dataSorteio`, `numeroMaquina`, `animalSorteado`) VALUES
(1, '22-02-2024', '0960', 'Jacare'),
(2, '21-02-2024', '3573', 'Pavao');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idTipoUsuario` int(11) NOT NULL,
  `descricao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tipousuario`
--

INSERT INTO `tipousuario` (`idTipoUsuario`, `descricao`) VALUES
(1, 'usuario'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `idTipoUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `email`, `senha`, `idTipoUsuario`) VALUES
(1, 'teste', 'teste@gmail.com', '1', 1),
(2, 'admin', 'admin@gmail.com', '1', 2),
(3, 'undefined', 'undefined', 'undefined', 1),
(4, 'RAFAELLL', 'rafael@gmail.com', '2', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aposta`
--
ALTER TABLE `aposta`
  ADD PRIMARY KEY (`idAposta`),
  ADD KEY `idUSuario` (`idUSuario`);

--
-- Índices de tabela `sorteio`
--
ALTER TABLE `sorteio`
  ADD PRIMARY KEY (`idSorteio`);

--
-- Índices de tabela `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idTipoUsuario`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aposta`
--
ALTER TABLE `aposta`
  MODIFY `idAposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sorteio`
--
ALTER TABLE `sorteio`
  MODIFY `idSorteio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `idTipoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aposta`
--
ALTER TABLE `aposta`
  ADD CONSTRAINT `aposta_ibfk_1` FOREIGN KEY (`idUSuario`) REFERENCES `usuario` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

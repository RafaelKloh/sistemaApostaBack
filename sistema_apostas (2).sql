-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Fev-2024 às 23:02
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
(27, 2, '7425', '19-02-2024', '7.00'),
(28, 2, '9827', '18-02-2024', '12.00'),
(29, 2, '1259', '21-02-2024', '539.00'),
(62, 2, '0001', '21-02-2024', '50.00'),
(63, 2, '0001', '21-02-2024', '50.00'),
(64, 2, '0001', '21-02-2024', '50.00'),
(65, 2, '0001', '21-02-2024', '50.00'),
(66, 2, '1258', '21-02-2024', '50.00'),
(67, 2, '1258', '21-02-2024', '50.00'),
(68, 2, '1258', '21-02-2024', '50.00'),
(69, 2, '1258', '-2005', '50.00'),
(70, 2, '1259', '-2005', '50.00'),
(71, 2, '1259', '21-02-2024', '50.00'),
(72, 39, '5478', '21-02-2024', '36.00'),
(73, 2, '0015', '22-02-2024', '20.00'),
(74, 2, '0007', '22-02-2024', '77.00'),
(75, 2, '0045', '23-02-2024', '25.00'),
(76, 2, '0045', '23-02-2024', '45.00');

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
(141, '19-02-2024', '3630', 'Camelo'),
(142, '20-02-2024', '8954', 'Gato'),
(143, '18-02-2024', '0541', 'Cavalo'),
(144, '17-02-2024', '8025', 'Carneiro'),
(145, 'NaN-NaN-Na', '1147', 'Elefante'),
(146, 'NaN-NaN-Na', '5387', 'Tigre'),
(147, '21-02-2024', '5134', 'Cobra'),
(148, '22-02-2024', '2448', 'Elefante');

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
(2, 'Paulo', 'paulo@gmail.com', '1', 1),
(39, 'teste', 'teste@gmail.com', '1', 1),
(41, 'adimino', 'admin@gmail.com', '1', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aposta`
--
ALTER TABLE `aposta`
  ADD PRIMARY KEY (`idAposta`),
  ADD KEY `idUsuario` (`idUsuario`);

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
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idTipoUsuario` (`idTipoUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aposta`
--
ALTER TABLE `aposta`
  MODIFY `idAposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `sorteio`
--
ALTER TABLE `sorteio`
  MODIFY `idSorteio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

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

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aposta`
--
ALTER TABLE `aposta`
  ADD CONSTRAINT `aposta_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

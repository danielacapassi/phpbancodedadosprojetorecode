-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31-Out-2020 às 04:31
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `recode`
--
CREATE DATABASE IF NOT EXISTS `recode` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `recode`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `msg`, `data`) VALUES
(1, 'teste2', 'teste2', '2020-10-30 16:24:19'),
(2, 'teste4', 'teste4', '2020-10-30 16:24:35'),
(3, 'teste5', 'teste5\r\n', '2020-10-30 17:03:07'),
(4, 'Daniela Capassi Moreira', 'Olá, gostaria de comprar uma Geladeira Frost Free Brastemp Side Inverse 540 litros que está no de R$5819.00 de acordo com anúncio no site.', '2020-10-30 23:00:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idpedidos` int(11) NOT NULL,
  `nomedocliente` varchar(150) NOT NULL,
  `endereco` varchar(230) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `nome do produto` varchar(200) NOT NULL,
  `valorunitario` decimal(8,2) NOT NULL,
  `quantidade` int(10) NOT NULL,
  `valortotal` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idpedidos`, `nomedocliente`, `endereco`, `telefone`, `nome do produto`, `valorunitario`, `quantidade`, `valortotal`) VALUES
(1, 'Daniela Capassi Moreira', 'Rua:Sebastião da Nóbrega, 66  cep:0402-160  Interlagos', '11 -5522-0355', 'Refrigerador Brastemp Frost Free - 375Litros', '2269.00', 1, '2269.00'),
(2, 'Antonia Maria da Silva', 'Rua: Joaquim Nabuco,  44 cep:07923-010 Jardim Aleatório', '13-4567-3426', 'Forno de micro-ondas Philco com Porta Espelhada - 25 Litros', '2269.00', 1, '2269.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `categoria` varchar(55) NOT NULL,
  `descricao` varchar(155) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `categoria`, `descricao`, `preco`, `precofinal`, `imagem`) VALUES
(1, 'geladeira', 'Geladeira Frost Free Brastemp Side Inverse 540 litros', '6389.00', '5819.00', 'imagens/geladeira1.jpeg'),
(2, 'geladeira', 'Refrigerador Consul Frost Free com 2 Portas Inox', '2269.00', '2199.00', 'imagens/geladeira2.jpeg'),
(3, 'geladeira', 'Refrigerador Brastemp Frost Free - 375Litros', '2499.00', '2269.00', 'imagens/geladeira3.jpeg'),
(4, 'fogao', 'Fogão Consul 4 Bocas com Acendimento Automático - Inox', '1259.00', '949.00', 'imagens/fogao1.jpeg'),
(5, 'fogao', 'Fogão Atlas 4 Bocas Mônaco Automático', '559.00', '499.00', 'imagens/fogao2.jpeg'),
(6, 'lavalouca', 'Lava-louças Brastemp Ative! 8 Serviços - Branca', '2097.00', '1987.00', 'imagens/lavalouca1.jpeg'),
(7, 'lavalouca', 'Lava-Louças Electrolux Display Digital - Inox', '3859.00', '3649.00', 'imagens/lavalouca2.jpeg'),
(8, 'lavadoraderoupas', 'Lavadora de Roupas Automática Brastemp 9KG Branca - 110V', '1899.90', '1799.90', 'imagens/lavadora1.jpeg'),
(9, 'lavadoraderoupas', 'Lavadora Philco 12KG Cor Branca - 110V', '3199.90', '3099.90', 'imagens/lavadora2.jpeg'),
(10, 'microondas', 'Forno de Micro-ondas Electrolux Branco - 20Litros', '559.00', '449.00', 'imagens/microondas1.jpeg'),
(11, 'microondas', 'Forno de micro-ondas Philco com Porta Espelhada - 25 Litros', '759.00', '699.00', 'imagens/microondas2.jpeg'),
(12, 'microondas', 'Forno de Micro-ondas Consul Espelhado - 32 Litro', '700.00', '689.00', 'imagens/microondas3.jpeg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedidos`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

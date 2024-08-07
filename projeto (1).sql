-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/08/2024 às 13:09
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id_carrinho` int(11) NOT NULL,
  `quantidadeProduto` int(11) NOT NULL,
  `valorUnitario` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `finalizarpedido`
--

CREATE TABLE `finalizarpedido` (
  `id_finalizar_pedido` int(11) NOT NULL,
  `id_carrinho` int(11) NOT NULL,
  `data_hora_pedido` datetime NOT NULL,
  `situacao_pedido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(100) NOT NULL,
  `descricao_produto` text NOT NULL,
  `imagem_produto` varchar(255) DEFAULT NULL,
  `valor_produto` decimal(10,2) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `codigo_produto` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome_produto`, `descricao_produto`, `imagem_produto`, `valor_produto`, `categoria`, `codigo_produto`) VALUES
(16, 'dsa', 'dsa', 'Free  Wallpaper, Book, Light Background Images, Fantasy Magic Books Black Background Photo Background PNG and Vectors.jpeg', 432.00, 'cafe_tradicional', 432),
(17, '', '', '', 0.00, '', 0),
(18, 'dsa', 'ewq', 'Free  Wallpaper, Book, Light Background Images, Fantasy Magic Books Black Background Photo Background PNG and Vectors.jpeg', 222.00, 'cafe_especial', 333);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nome`, `sobrenome`, `cpf`, `telefone`, `email`, `senha`) VALUES
(3, 'Patrick', '', '000.000.000-12', '', 'Patrick@gmail.com', '123'),
(18, 'Rock', 'MalBoa', '233232', '32232', 'rock@hotmail.com', '000000'),
(23, 'Curso de php', 'ds', '01138275980', '2222', 'joaopedro@hotmail.com', '151515'),
(25, 'Curso de php', 'ds', '01138275980', '2222', 'joaopedro@hotmail.com', '151515'),
(27, 'Curso de php', 'ds', '01138275980', '2222', 'joaopedro@hotmail.com', '151515'),
(30, 'Patrick@gmail.com', 'ds', '01138275980', '22', 'joaopedro@hotmail.com', '151515'),
(31, 'Patrick@gmail.com', 'ds', '01138275980', '22222', 'joaopedro@hotmail.com', '151515'),
(32, 'Curso de php', 'ds', '01138275980', '333', 'joaopedro@hotmail.com', '151515'),
(33, 'Curso de php', 'ds', '01138275980', '333', 'joaopedro@hotmail.com', '151515'),
(34, 'ssss', 's', 's', '3', 'joaopedro@hotmail.com', '151515'),
(35, 'ssss', 's', 's', '3', 'joaopedro@hotmail.com', '151515'),
(36, 'Patrick@gmail.com', 'ds', '01138275980', '2222', 'joaopedro@hotmail.com', '151515'),
(37, 'Totinho', 'Do Buteco', '01138275980', '45455544', 'toninhodobuteco@hotmail.com', '101010'),
(38, 'dsa', 'dsa', 'dsa', '32', '3232@gmail.com', 'dsadsa'),
(39, 'Alesandra', 'UHL', '212.255.555-55', '33333333333', 'alesandra@gmail.com', '123'),
(40, 'dsa', 'dsa', '212.255.555-55', '654', '3232@gmail.com', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id_carrinho`);

--
-- Índices de tabela `finalizarpedido`
--
ALTER TABLE `finalizarpedido`
  ADD PRIMARY KEY (`id_finalizar_pedido`),
  ADD KEY `id_carrinho` (`id_carrinho`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id_carrinho` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `finalizarpedido`
--
ALTER TABLE `finalizarpedido`
  MODIFY `id_finalizar_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `finalizarpedido`
--
ALTER TABLE `finalizarpedido`
  ADD CONSTRAINT `finalizarpedido_ibfk_1` FOREIGN KEY (`id_carrinho`) REFERENCES `carrinho` (`id_carrinho`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

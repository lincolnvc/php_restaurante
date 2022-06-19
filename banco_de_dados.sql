-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tempo de Geração: 14/06/2016 às 16:52
-- Versão do servidor: 5.5.50-cll
-- Versão do PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `jrnextco_rest`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `ordem` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `data_registro` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Fazendo dump de dados para tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `alias`, `descricao`, `ordem`, `img`, `status`, `data_registro`) VALUES
(1, 'LANCHES', 'lanches', '', 1, 'banner300x200.jpg', 1, '0000-00-00 00:00:00'),
(2, 'BEBIDAS', 'bebidas', '', 5, 'refri_lata.jpg', 1, '0000-00-00 00:00:00'),
(3, 'PORÇÕES', 'porcoes', '', 3, 'prato-comida-620x330.jpg', 1, '0000-00-00 00:00:00'),
(4, 'COMBOS', 'combos', '', 4, 'icon_kit.png', 1, '0000-00-00 00:00:00'),
(5, 'ADICIONAIS', 'adicionais', '', 2, 'icon_adicionais.png', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `complemento` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `notas` longtext NOT NULL,
  `data_registro` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Fazendo dump de dados para tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `celular`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `notas`, `data_registro`) VALUES
(1, 'teste', '', '', '', '', '', '', '', '', '', '', '', '30/03/2016 15:37:29'),
(2, 'Francisco', '', '', '', '94940200', 'Avenida Monte Carlo', '333', '', 'Vila Monte Carlo', 'Cachoeirinha', 'RS', '', '31/03/2016 20:09:38'),
(3, 'Joao', '', '', '', '', '', '', '', '', '', '', '', '31/03/2016 20:11:41'),
(6, 'mellone', 'teste@teste.com.br', '1123456789', '', '02115999', 'Paes de barros', '1445', 'AP. 12069', 'Mooca', 'São Pulo', 'SP', 'Gosta de borda de carne moida', '27/05/2016 12:36:02'),
(5, 'Ricardo dos Santos', 'contato@meusite.com', '(51) 8193-4608', 'WhatsApp', '95780-000', ' Rua xxxx', '2440', '', 'Centro', 'Montenegro', 'RS', 'Teste de cadastro', '07/04/2016 15:06:26'),
(7, 'nardelia', 'att@att.com.br', '31 88888-88888', '', '30505505', ' ', '', '', '', '', '', '', '07/06/2016 16:39:36'),
(8, 'douglas', '', '', '', '', '', '', '', '', '', '', '', '11/06/2016 11:23:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto_guiche` mediumtext NOT NULL,
  `razao_social` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) NOT NULL,
  `cnpj_cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `config`
--

INSERT INTO `config` (`id`, `texto_guiche`, `razao_social`, `nome_fantasia`, `cnpj_cpf`, `telefone`, `celular`, `email`, `website`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `logo`) VALUES
(1, 'JrNext', 'JrNext', 'JrNext', '000.000.000/0001-00', '(00) 0000-0000', '(00) 0000-0000', 'meuemail@mail.com', 'www.meusite.com.br', '00000-000', 'Avenida Brasil', '1000', '', 'Centro', 'Ipiranga do Piaui', 'PI', '0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `guiche`
--

CREATE TABLE IF NOT EXISTS `guiche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido` varchar(5) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=230 ;

--
-- Fazendo dump de dados para tabela `guiche`
--

INSERT INTO `guiche` (`id`, `pedido`, `status`) VALUES
(229, '117', 0),
(227, '113', 0),
(228, '112', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_pedidos`
--

CREATE TABLE IF NOT EXISTS `itens_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(40) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=875 ;

--
-- Fazendo dump de dados para tabela `itens_pedidos`
--

INSERT INTO `itens_pedidos` (`id`, `id_pedido`, `id_produto`, `nome_produto`, `quantidade`, `valor`) VALUES
(1, 1, -10, 'Desconto', 1, 0),
(2, 1, -1, 'Dinheiro', 1, 10),
(3, 1, 1, 'teste ', 1, 5),
(4, 1, 1, 'teste ', 1, 5),
(5, 2, -10, 'Desconto', 1, 0),
(6, 2, -1, 'Dinheiro', 1, 10),
(7, 2, 1, 'teste 2 g', 1, 5),
(8, 2, 1, 'teste 2 g', 1, 5),
(67, 7, -3, 'Cartão de Débito', 1, 8),
(20, 4, 2, 'coca cola 2l 2 l', 1, 8),
(19, 4, 2, 'coca cola 2l 2 l', 1, 8),
(102, 6, 0, 'Troco', 1, 5),
(101, 6, -10, 'Desconto', 1, 0),
(69, 3, -10, 'Desconto', 1, 8),
(43, 10, -10, 'Desconto', 1, 0),
(66, 7, -10, 'Desconto', 1, 0),
(45, 10, -1, 'Dinheiro', 1, 10),
(54, 8, -1, 'Dinheiro', 1, 50),
(53, 8, 0, 'Troco', 1, 37),
(44, 10, 0, 'Troco', 1, 2),
(46, 10, 2, 'coca cola 2l 2 l', 1, 8),
(60, 11, 1, 'teste 2 g', 1, 5),
(59, 11, -1, 'Dinheiro', 1, 20),
(57, 11, -10, 'Desconto', 1, 0),
(58, 11, 0, 'Troco', 1, 7),
(55, 8, 1, 'teste 2 g', 1, 5),
(56, 8, 2, 'coca cola 2l 2 l', 1, 8),
(61, 11, 2, 'coca cola 2l 2 l', 1, 8),
(68, 7, 2, 'coca cola 2l 2 l', 1, 8),
(70, 3, 2, 'coca cola 2l 2 l', 1, 8),
(97, 12, -10, 'Desconto', 1, 0),
(94, 13, -10, 'Desconto', 1, 0),
(90, 14, -10, 'Desconto', 1, 0),
(85, 15, -10, 'Desconto', 1, 0),
(82, 16, -10, 'Desconto', 1, 0),
(83, 16, -1, 'Dinheiro', 1, 8),
(84, 16, 2, 'coca cola 2l 2 l', 1, 8),
(86, 15, 0, 'Troco', 1, 37),
(87, 15, -1, 'Dinheiro', 1, 50),
(88, 15, 1, 'teste 2 g', 1, 5),
(89, 15, 2, 'coca cola 2l 2 l', 1, 8),
(91, 14, 0, 'Troco', 1, 12),
(92, 14, -1, 'Dinheiro', 1, 20),
(93, 14, 2, 'coca cola 2l 2 l', 1, 8),
(95, 13, -3, 'Cartão de Débito', 1, 8),
(96, 13, 2, 'coca cola 2l 2 l', 1, 8),
(98, 12, 0, 'Troco', 1, 5),
(99, 12, -2, 'Cartão de Crédito', 1, 13),
(100, 12, 2, 'coca cola 2l 2 l', 1, 8),
(103, 6, -3, 'Cartão de Débito', 1, 13),
(104, 6, 2, 'coca cola 2l 2 l', 1, 8),
(105, 18, -10, 'Desconto', 1, 0),
(106, 18, 0, 'Troco', 1, 10),
(107, 18, -1, 'Dinheiro', 1, 50),
(108, 18, 3, 'Hamburguer ', 1, 10),
(109, 18, 3, 'Hamburguer ', 1, 10),
(110, 18, 3, 'Hamburguer ', 1, 10),
(111, 18, 3, 'Hamburguer ', 1, 10),
(112, 19, -10, 'Desconto', 1, 0),
(113, 19, 0, 'Troco', 1, 2),
(114, 19, -1, 'Dinheiro', 1, 20),
(115, 19, 2, 'coca cola 2l 2 l', 1, 8),
(116, 19, 3, 'Hamburguer ', 1, 10),
(117, 20, -1, 'Dinheiro', 1, 20),
(118, 20, -1, 'Dinheiro', 1, 0.2),
(119, 20, 2, 'coca cola 2l 2 l', 1, 8),
(120, 20, 2, 'coca cola 2l 2 l', 1, 8),
(128, 21, -10, 'Desconto', 1, 0),
(129, 21, 0, 'Troco', 1, 2),
(145, 22, 3, 'Hamburguer ', 1, 10),
(130, 21, -1, 'Dinheiro', 1, 10),
(131, 21, 2, 'coca cola 2l 2 l', 1, 8),
(388, 63, 2, 'coca cola 2l 2 l', 1, 8),
(144, 22, -3, 'Cartão de Débito', 1, 18),
(143, 22, -10, 'Desconto', 1, 0),
(146, 22, 2, 'coca cola 2l 2 l', 1, 8),
(673, 103, 6, 'ad 1 100 g', 1, 2),
(244, 32, -1, 'Dinheiro', 1, 8),
(246, 35, -10, 'Desconto', 1, 0),
(247, 35, -1, 'Dinheiro', 1, 8),
(656, 97, 5, 'Fanta Laranja 1 un', 1, 10),
(669, 96, 2, 'coca cola 2l 2 l', 1, 8),
(667, 96, 5, 'Fanta Laranja 1 un', 1, 10),
(192, 17, 2, 'coca cola 2l 2 l', 1, 8),
(191, 17, 3, 'Hamburguer 150 g', 1, 10),
(190, 17, 4, 'Xis Povão 200 g', 1, 25),
(544, 89, 3, 'Hamburguer 150 g', 1, 10),
(543, 89, 3, 'Hamburguer 150 g', 1, 10),
(542, 89, 3, 'Hamburguer 150 g', 1, 10),
(541, 89, 3, 'Hamburguer 150 g', 1, 10),
(540, 89, 3, 'Hamburguer 150 g', 1, 10),
(243, 32, -10, 'Desconto', 1, 0),
(385, 63, 3, 'Hamburguer 150 g', 1, 10),
(539, 89, 2, 'coca cola 2l 400 ml', 1, 8),
(538, 89, 5, 'Coca Cola 1 un', 1, 10),
(212, 30, -10, 'Desconto', 1, 0),
(213, 30, -1, 'Dinheiro', 1, 61),
(214, 30, 4, 'Xis Povão 200 g', 1, 25),
(215, 30, 2, 'coca cola 2l 2 l', 1, 8),
(216, 30, 2, 'coca cola 2l 2 l', 1, 8),
(217, 30, 3, 'Hamburguer 150 g', 1, 10),
(218, 30, 3, 'Hamburguer 150 g', 1, 10),
(668, 96, 2, 'Cola Cola 2L 2 l', 1, 8),
(315, 34, 0, 'Troco', 1, 42),
(314, 34, -10, 'Desconto', 1, 0),
(234, 37, 3, 'Hamburguer 150 g', 1, 10),
(235, 38, -10, 'Desconto', 1, 0),
(236, 38, -2, 'Cartão de Crédito', 1, 38),
(237, 38, -1, 'Dinheiro', 1, 5),
(238, 38, 2, 'coca cola 2l 2 l', 1, 8),
(239, 38, 4, 'Xis Povão 200 g', 1, 25),
(240, 38, 3, 'Hamburguer 150 g', 1, 10),
(245, 32, 2, 'coca cola 2l 2 l', 1, 8),
(248, 35, 2, 'coca cola 2l 2 l', 1, 8),
(387, 63, 3, 'Hamburguer 150 g', 1, 10),
(386, 63, 3, 'Hamburguer 150 g', 1, 10),
(586, 84, 2, 'coca cola 2l 2 l', 1, 8),
(537, 89, 2, 'coca cola 2l 400 ml', 1, 8),
(536, 89, 5, 'Coca Cola 1 un', 1, 10),
(585, 84, -1, 'Dinheiro', 1, 8),
(284, 41, 4, 'Xis Povão 200 g', 1, 25),
(283, 41, 4, 'Xis Povão 200 g', 1, 25),
(281, 41, -2, 'Cartão de Crédito', 1, 5),
(282, 41, -1, 'Dinheiro', 1, 28),
(280, 41, -5, 'Outros', 1, 25),
(279, 41, -10, 'Desconto', 1, 0),
(285, 41, 2, 'coca cola 2l 2 l', 1, 8),
(289, 42, -2, 'Cartão de Crédito', 1, 33),
(288, 42, -10, 'Desconto', 1, 0),
(290, 42, 4, 'Xis Povão 200 g', 1, 25),
(291, 42, 2, 'coca cola 2l 2 l', 1, 8),
(666, 96, 2, 'Cola Cola 2L 2 l', 1, 8),
(609, 94, 2, 'coca cola 2l 400 ml', 1, 8),
(295, 44, -10, 'Desconto', 1, 0),
(296, 44, 0, 'Troco', 1, 2),
(297, 44, -1, 'Dinheiro', 1, 50),
(298, 44, 3, 'Hamburguer 150 g', 1, 10),
(299, 44, 3, 'Hamburguer 150 g', 1, 10),
(300, 44, 3, 'Hamburguer 150 g', 1, 10),
(301, 44, 3, 'Hamburguer 150 g', 1, 10),
(302, 44, 2, 'coca cola 2l 2 l', 1, 8),
(303, 45, -10, 'Desconto', 1, 0),
(304, 45, 0, 'Troco', 1, 26),
(305, 45, -1, 'Dinheiro', 1, 60),
(306, 45, 2, 'coca cola 2l 2 l', 1, 8),
(307, 45, 2, 'coca cola 2l 2 l', 1, 8),
(308, 45, 2, 'coca cola 2l 2 l', 1, 8),
(309, 45, 3, 'Hamburguer 150 g', 1, 10),
(569, 88, -10, 'Desconto', 1, 0),
(570, 88, -2, 'Cartão de Crédito', 1, 8),
(571, 88, 2, 'coca cola 2l 2 l', 1, 8),
(316, 34, -1, 'Dinheiro', 1, 50),
(317, 34, 2, 'coca cola 2l 2 l', 1, 8),
(318, 47, -10, 'Desconto', 1, 0),
(319, 47, 0, 'Troco', 1, 40),
(320, 47, -1, 'Dinheiro', 1, 50),
(321, 47, 3, 'Hamburguer 150 g', 1, 10),
(605, 93, 4, 'Xis Povão 200 g', 1, 25),
(604, 93, 3, 'Hamburguer 150 g', 1, 10),
(615, 95, 4, 'Xis Povão 200 g', 1, 25),
(327, 50, -10, 'Desconto', 1, 0),
(328, 50, 0, 'Troco', 1, 7),
(329, 50, -1, 'Dinheiro', 1, 50),
(330, 50, 4, 'Xis Povão 200 g', 1, 25),
(331, 50, 3, 'Hamburguer 150 g', 1, 10),
(332, 50, 2, 'coca cola 2l 2 l', 1, 8),
(603, 93, 2, 'coca cola 2l 400 ml', 1, 8),
(567, 25, 2, 'coca cola 2l 2 l', 1, 8),
(495, 85, -1, 'Dinheiro', 1, 50),
(496, 85, 3, 'Hamburguer 150 g', 1, 10),
(602, 93, 5, 'Coca Cola 1 un', 1, 10),
(580, 87, 2, 'coca cola 2l 2 l', 1, 8),
(498, 85, 2, 'coca cola 2l 400 ml', 1, 8),
(497, 85, 4, 'Xis Povão 200 g', 1, 25),
(565, 25, -10, 'Desconto', 1, 0),
(566, 25, -3, 'Cartão de Débito', 1, 8),
(614, 95, 6, 'ad 1 100 g', 1, 2),
(579, 87, -2, 'Cartão de Crédito', 1, 8),
(584, 84, -10, 'Desconto', 1, 0),
(350, 59, 2, 'coca cola 2l 2 l', 1, 8),
(351, 59, 2, 'coca cola 2l 2 l', 1, 8),
(352, 60, 2, 'coca cola 2l 2 l', 1, 8),
(353, 60, 2, 'coca cola 2l 2 l', 1, 8),
(578, 87, -10, 'Desconto', 1, 0),
(613, 95, 5, 'Fanta Laranja 1 un', 1, 10),
(583, 86, 2, 'coca cola 2l 2 l', 1, 8),
(582, 86, -2, 'Cartão de Crédito', 1, 8),
(581, 86, -10, 'Desconto', 1, 0),
(412, 62, 2, 'coca cola 2l 2 l', 1, 8),
(366, 65, 2, 'coca cola 2l 2 l', 1, 8),
(384, 63, 2, 'coca cola 2l 2 l', 1, 8),
(364, 64, 2, 'coca cola 2l 2 l', 1, 8),
(367, 65, 2, 'coca cola 2l 2 l', 1, 8),
(368, 65, 2, 'coca cola 2l 2 l', 1, 8),
(369, 65, 2, 'coca cola 2l 2 l', 1, 8),
(370, 65, 2, 'coca cola 2l 2 l', 1, 8),
(451, 73, 2, 'coca cola 2l 2 l', 1, 8),
(450, 73, 6, 'ad 1 1 un', 1, 2),
(411, 62, 6, 'ad 1 1 un', 1, 2),
(410, 62, 6, 'ad 1 1 un', 1, 2),
(409, 62, 6, 'ad 1 1 un', 1, 2),
(408, 62, 6, 'ad 1 1 un', 1, 2),
(407, 62, 3, 'Hamburguer 150 g', 1, 10),
(406, 62, -3, 'Cartão de Débito', 1, 26),
(405, 62, -10, 'Desconto', 1, 0),
(449, 73, 4, 'Xis Povão 200 g', 1, 25),
(448, 73, -1, 'Dinheiro', 1, 50),
(446, 73, -10, 'Desconto', 1, 0),
(447, 73, 0, 'Troco', 1, 15),
(485, 83, 2, 'coca cola 2l 400 ml', 1, 8),
(484, 83, 5, 'Coca Cola 1 un', 1, 10),
(574, 82, 2, 'coca cola 2l 2 l', 1, 8),
(482, 83, -10, 'Desconto', 1, 0),
(483, 83, -3, 'Cartão de Débito', 1, 18),
(573, 82, -2, 'Cartão de Crédito', 1, 8),
(572, 82, -10, 'Desconto', 1, 0),
(471, 80, 3, 'Hamburguer 150 g', 1, 10),
(472, 80, 2, 'coca cola 2l 400 ml', 1, 8),
(473, 80, 2, 'coca cola 2l 400 ml', 1, 8),
(474, 80, 2, 'coca cola 2l 400 ml', 1, 8),
(558, 90, 2, 'coca cola 2l 400 ml', 1, 8),
(534, 89, -1, 'Dinheiro', 1, 80),
(535, 89, 6, 'ad 1 100 kg', 1, 2),
(533, 89, -2, 'Cartão de Crédito', 1, 8),
(557, 90, 3, 'Hamburguer 150 g', 1, 10),
(556, 90, 4, 'Xis Povão 200 g', 1, 25),
(555, 90, -3, 'Cartão de Débito', 1, 51),
(563, 91, -2, 'Cartão de Crédito', 1, 8),
(562, 91, -10, 'Desconto', 1, 0),
(559, 90, 2, 'coca cola 2l 400 ml', 1, 8),
(564, 91, 2, 'coca cola 2l 2 l', 1, 8),
(655, 97, 5, 'Fanta Laranja 1 un', 1, 10),
(654, 97, 2, 'Cola Cola 2L 2 l', 1, 8),
(645, 98, 4, 'Xis Povão 200 g', 1, 25),
(644, 98, 3, 'Hamburguer 150 g', 1, 10),
(642, 98, 6, 'ad 1 100 g', 1, 2),
(643, 98, 6, 'ad 1 100 g', 1, 2),
(641, 98, 5, 'Fanta Laranja 1 un', 1, 10),
(653, 99, 5, 'Fanta Laranja 1 un', 1, 10),
(652, 99, 2, 'Cola Cola 2L 2 l', 1, 8),
(651, 99, 2, 'Cola Cola 2L 2 l', 1, 8),
(650, 99, 2, 'Cola Cola 2L 2 l', 1, 8),
(657, 97, 2, 'coca cola 2l 2 l', 1, 8),
(658, 100, 2, 'Cola Cola 2L 2 l', 1, 8),
(659, 100, 4, 'Xis Povão 200 g', 1, 25),
(672, 103, 6, 'ad 1 100 g', 1, 2),
(727, 106, 0, 'Troco', 1, 15),
(726, 102, 2, 'coca cola 2l 2 l', 1, 8),
(674, 103, 6, 'ad 1 100 g', 1, 2),
(675, 103, 6, 'ad 1 100 g', 1, 2),
(676, 103, 6, 'ad 1 100 g', 1, 2),
(677, 103, 6, 'ad 1 100 g', 1, 2),
(678, 103, 6, 'ad 1 100 g', 1, 2),
(679, 103, 6, 'ad 1 100 g', 1, 2),
(680, 103, 6, 'ad 1 100 g', 1, 2),
(716, 104, 6, 'ad 1 100 g', 1, 2),
(715, 104, 6, 'ad 1 100 g', 1, 2),
(714, 104, 6, 'ad 1 100 g', 1, 2),
(713, 104, 6, 'ad 1 100 g', 1, 2),
(712, 104, 6, 'ad 1 100 g', 1, 2),
(711, 104, 6, 'ad 1 100 g', 1, 2),
(710, 104, -1, 'Dinheiro', 1, 50),
(709, 104, 0, 'Troco', 1, 32),
(708, 104, -10, 'Desconto', 1, 0),
(717, 104, 6, 'ad 1 100 g', 1, 2),
(718, 104, 6, 'ad 1 100 g', 1, 2),
(719, 104, 6, 'ad 1 100 g', 1, 2),
(725, 105, 3, 'Hamburguer 150 g', 1, 10),
(724, 105, 4, 'Xis Povão 200 g', 1, 25),
(723, 105, 5, 'Fanta Laranja 1 un', 1, 10),
(728, 106, -1, 'Dinheiro', 1, 50),
(729, 106, 3, 'Hamburguer 150 g', 1, 10),
(730, 106, 4, 'Xis Povão 200 g', 1, 25),
(838, 111, 2, 'Cola Cola 2L 2 l', 1, 8),
(837, 107, 2, 'coca cola 2l 2 l', 1, 8),
(835, 110, 3, 'Hamburguer 150 g', 1, 10),
(834, 110, 6, 'ad 1 100 g', 1, 2),
(833, 110, 5, 'Fanta Laranja 1 un', 1, 10),
(832, 108, 2, 'coca cola 2l 2 l', 1, 8),
(831, 108, -1, 'Dinheiro', 1, 10),
(830, 108, 0, 'Troco', 1, 2),
(829, 108, -10, 'Desconto', 1, 0),
(827, 109, 4, 'Xis Povão 200 g', 1, 25),
(826, 109, 5, 'Fanta Laranja 1 un', 1, 10),
(825, 109, 2, 'Cola Cola 2L 2 l', 1, 8),
(824, 109, 5, 'Fanta Laranja 1 un', 1, 10),
(823, 109, 5, 'Fanta Laranja 1 un', 1, 10),
(822, 109, 5, 'Fanta Laranja 1 un', 1, 10),
(821, 109, -1, 'Dinheiro', 1, 100),
(820, 109, 0, 'Troco', 1, 17),
(819, 109, -10, 'Desconto', 1, 0),
(828, 109, 3, 'Hamburguer 150 g', 1, 10),
(836, 110, 3, 'Hamburguer 150 g', 1, 10),
(839, 112, 4, 'Xis Povão 200 g', 1, 25),
(840, 113, 4, 'Xis Povão 200 g', 1, 25),
(841, 113, 4, 'Xis Povão 200 g', 1, 25),
(842, 113, 2, 'Cola Cola 2L 2 l', 1, 8),
(843, 114, 5, 'Fanta Laranja 1 un', 1, 10),
(844, 114, 3, 'Hamburguer 150 g', 1, 10),
(845, 114, 4, 'Xis Povão 200 g', 1, 25),
(846, 115, 5, 'Fanta Laranja 1 un', 1, 10),
(859, 116, 4, 'Xis Povão 200 g', 1, 25),
(858, 116, 4, 'Xis Povão 200 g', 1, 25),
(856, 116, -10, 'Desconto', 1, 0),
(857, 116, -1, 'Dinheiro', 1, 58),
(860, 116, 2, 'Cola Cola 2L 2 l', 1, 8),
(861, 117, 5, 'Fanta Laranja 1 un', 1, 10),
(862, 118, -10, 'Desconto', 1, 0),
(863, 118, -1, 'Dinheiro', 1, 10),
(864, 118, 5, 'Fanta Laranja 1 un', 1, 10),
(865, 119, -10, 'Desconto', 1, 0),
(866, 119, 0, 'Troco', 1, 1),
(867, 119, -1, 'Dinheiro', 1, 11),
(868, 119, 5, 'Fanta Laranja 1 un', 1, 10),
(869, 120, -10, 'Desconto', 1, 9),
(870, 120, 0, 'Troco', 1, 14),
(871, 120, -1, 'Dinheiro', 1, 50),
(872, 120, 5, 'Fanta Laranja 1 un', 1, 10),
(873, 120, 3, 'Hamburguer 150 g', 1, 10),
(874, 120, 4, 'Xis Povão 200 g', 1, 25);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesas`
--

CREATE TABLE IF NOT EXISTS `mesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `lugares` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Fazendo dump de dados para tabela `mesas`
--

INSERT INTO `mesas` (`id`, `nome`, `lugares`, `status`) VALUES
(1, 'M01', 4, 0),
(2, 'M02', 6, 0),
(3, 'M03', 5, 0),
(4, 'Mesa 4', 6, 0),
(5, 'MESA 5', 4, 0),
(7, 'MESA TOP', 4, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(20) NOT NULL,
  `hora` time NOT NULL,
  `id_cliente` int(11) DEFAULT '0',
  `cliente` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `sub_total` double NOT NULL,
  `desconto` double NOT NULL DEFAULT '0',
  `total` double NOT NULL,
  `obs` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=121 ;

--
-- Fazendo dump de dados para tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `data`, `hora`, `id_cliente`, `cliente`, `estado`, `sub_total`, `desconto`, `total`, `obs`) VALUES
(1, '10/12/2015', '00:47:08', 0, 'Sem Cliente', 1, 10, 0, 10, ''),
(2, '10/12/2015', '01:12:43', 0, 'Sem Cliente', 1, 10, 0, 10, ''),
(3, '31/03/2016', '18:04:18', 0, 'Sem Cliente', 1, 8, 8, 0, ''),
(4, '30/03/2016', '15:41:55', 1, 'teste', 1, 16, 16, 0, ''),
(6, '31/03/2016', '20:23:39', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(7, '31/03/2016', '18:03:42', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(8, '30/03/2016', '22:22:00', 0, 'Sem Cliente', 1, 13, 0, 13, ''),
(11, '31/03/2016', '12:49:55', 0, 'Sem Cliente', 1, 13, 0, 13, ''),
(10, '30/03/2016', '20:36:57', 0, 'Sem Cliente', 1, 8, 0, 8, ''),
(12, '31/03/2016', '20:23:30', 2, 'Francisco', 1, 8, 0, 8, ''),
(13, '31/03/2016', '20:23:21', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(14, '31/03/2016', '20:23:04', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(15, '31/03/2016', '20:22:50', 2, 'Francisco', 1, 13, 0, 13, ''),
(16, '31/03/2016', '20:22:19', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(17, '07/04/2016', '15:20:44', 5, 'Ricardo dos ', 1, 43, 43, 0, ''),
(18, '31/03/2016', '20:24:33', 0, 'Sem Cliente', 1, 40, 0, 40, ''),
(19, '01/04/2016', '20:03:40', 0, 'Sem Cliente', 1, 18, 0, 18, ''),
(20, '01/04/2016', '20:04:14', 0, 'Sem Cliente', 1, 16, -4.2, 20.2, ''),
(21, '04/04/2016', '11:19:07', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(22, '05/04/2016', '14:30:27', 0, 'Sem Cliente', 1, 18, 0, 18, 'coca'),
(93, '23/05/2016', '16:45:14', 0, 'Sem Cliente', 1, 53, 53, 0, ''),
(25, '23/05/2016', '15:41:32', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(103, '07/06/2016', '17:13:45', 0, 'Sem Cliente', 0, 18, 0, 18, ''),
(100, '30/05/2016', '22:00:12', 0, 'Sem Cliente', 0, 33, 0, 33, ''),
(102, '07/06/2016', '23:17:42', 6, 'mellone', 0, 8, 0, 8, 'coca'),
(30, '13/04/2016', '11:38:17', 0, 'Sem Cliente', 1, 61, 0, 61, ''),
(32, '17/04/2016', '00:32:33', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(34, '11/05/2016', '02:01:24', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(85, '23/05/2016', '11:28:56', 0, 'Sem Cliente', 1, 43, -7, 50, ''),
(35, '17/04/2016', '00:33:00', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(37, '14/04/2016', '23:45:17', 0, 'Sem Cliente', 1, 10, 10, 0, ''),
(38, '17/04/2016', '00:13:15', 0, 'Sem Cliente', 1, 43, 0, 43, ''),
(91, '23/05/2016', '15:38:04', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(98, '27/05/2016', '17:51:56', 2, 'Francisco', 1, 49, 49, 0, 'TESET'),
(99, '28/05/2016', '02:12:16', 0, 'Sem Cliente', 1, 34, 34, 0, ''),
(41, '18/04/2016', '18:42:33', 0, 'Sem Cliente', 1, 58, 0, 58, ''),
(42, '25/04/2016', '01:57:50', 0, 'Sem Cliente', 1, 33, 0, 33, ''),
(96, '30/05/2016', '22:03:04', 0, 'Sem Cliente', 1, 34, 34, 0, 'coca'),
(44, '26/04/2016', '00:40:47', 5, 'Ricardo dos ', 1, 48, 0, 48, ''),
(45, '08/05/2016', '12:08:07', 0, 'Sem Cliente', 1, 34, 0, 34, ''),
(97, '28/05/2016', '02:13:14', 0, 'Sem Cliente', 0, 36, 0, 36, 'coca'),
(47, '11/05/2016', '02:16:32', 0, 'Sem Cliente', 1, 10, 0, 10, ''),
(94, '23/05/2016', '17:59:51', 0, 'Sem Cliente', 0, 8, 0, 8, ''),
(50, '12/05/2016', '02:33:22', 5, 'Ricardo dos ', 1, 43, 0, 43, ''),
(88, '23/05/2016', '15:41:43', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(89, '23/05/2016', '15:28:59', 0, 'Sem Cliente', 1, 88, 0, 88, 'lanc'),
(86, '23/05/2016', '15:42:12', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(87, '23/05/2016', '15:42:06', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(73, '15/05/2016', '07:23:26', 3, 'Joao', 1, 35, 0, 35, ''),
(59, '13/05/2016', '20:32:04', 0, 'Sem Cliente', 0, 16, 0, 16, ''),
(60, '13/05/2016', '20:35:07', 0, 'Sem Cliente', 0, 16, 0, 16, ''),
(62, '14/05/2016', '19:16:31', 0, 'Sem Cliente', 1, 26, 0, 26, 'coca'),
(63, '14/05/2016', '19:11:51', 0, 'Sem Cliente', 1, 46, 46, 0, 'coca'),
(64, '13/05/2016', '20:41:13', 0, 'Sem Cliente', 0, 8, 0, 8, ''),
(65, '13/05/2016', '20:45:03', 0, 'Sem Cliente', 0, 40, 0, 40, ''),
(95, '27/05/2016', '16:52:21', 2, 'Francisco', 1, 37, 37, 0, ''),
(90, '23/05/2016', '15:34:52', 0, 'Sem Cliente', 1, 51, 0, 51, '000005'),
(83, '20/05/2016', '10:03:56', 0, 'Sem Cliente', 1, 18, 0, 18, ''),
(84, '23/05/2016', '15:42:23', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(82, '23/05/2016', '15:41:52', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(80, '17/05/2016', '06:43:52', 2, 'Francisco', 0, 34, 0, 34, ''),
(104, '07/06/2016', '17:17:47', 0, 'Sem Cliente', 1, 18, 0, 18, ''),
(105, '07/06/2016', '17:32:37', 0, 'Sem Cliente', 1, 45, 45, 0, ''),
(106, '07/06/2016', '23:20:43', 7, 'nardelia', 1, 35, 0, 35, ''),
(107, '11/06/2016', '11:15:13', 0, 'Sem Cliente', 0, 8, 0, 8, 'coca'),
(108, '07/06/2016', '23:52:43', 0, 'Sem Cliente', 1, 8, 0, 8, 'coca'),
(109, '07/06/2016', '23:51:30', 0, 'Sem Cliente', 1, 83, 0, 83, ''),
(110, '11/06/2016', '11:14:55', 0, 'Sem Cliente', 0, 32, 0, 32, 'teste'),
(111, '11/06/2016', '11:16:07', 0, 'Sem Cliente', 0, 8, 0, 8, ''),
(112, '11/06/2016', '11:21:39', 0, 'Sem Cliente', 0, 25, 0, 25, ''),
(113, '11/06/2016', '11:24:14', 8, 'douglas', 0, 58, 0, 58, ''),
(114, '11/06/2016', '11:30:00', 1, 'teste', 0, 45, 0, 45, ''),
(115, '11/06/2016', '11:55:02', 0, 'Sem Cliente', 0, 10, 0, 10, 'douglas'),
(116, '11/06/2016', '11:59:46', 8, 'douglas', 1, 58, 0, 58, ''),
(117, '11/06/2016', '12:08:59', 8, 'douglas', 0, 10, 0, 10, ''),
(118, '11/06/2016', '12:10:51', 8, 'douglas', 1, 10, 0, 10, ''),
(119, '11/06/2016', '12:11:14', 0, 'Sem Cliente', 1, 10, 0, 10, 'douglas'),
(120, '11/06/2016', '12:11:47', 1, 'teste', 1, 45, 9, 36, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos_espera_html`
--

CREATE TABLE IF NOT EXISTS `pedidos_espera_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Fazendo dump de dados para tabela `pedidos_espera_html`
--

INSERT INTO `pedidos_espera_html` (`id`, `html`) VALUES
(114, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="114" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 494px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 494px;"><div class="cupom_produto odd lista_odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>45.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(100, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="100" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 518px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 518px;"><div class="cupom_produto odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>33.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(97, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="97" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 1404px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 1404px;"><div class="cupom_produto odd lista_odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>36.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(80, '\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="80" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 494px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 494px;"><div class="cupom_produto odd lista_odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>34.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                '),
(115, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="115" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 492px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 492px;"><div class="cupom_produto odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>10.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(117, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="117" style="display:none;" val_desc="NaN"></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 492px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 492px;"><div class="cupom_produto odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>10.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(110, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="110" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 556px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 556px;"><div class="cupom_produto odd lista_odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>32.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(111, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="111" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 492px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 492px;"><div class="cupom_produto odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>8.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(112, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="112" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 492px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 492px;"><div class="cupom_produto odd lista_odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>25.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(113, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="113" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 492px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 492px;"><div class="cupom_produto odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>58.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(102, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="102" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 518px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 518px;"><div class="cupom_produto odd lista_odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>8.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(107, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="107" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 556px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 556px;"><div class="cupom_produto odd lista_odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>32.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            '),
(94, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="94" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 518px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 518px;"><div class="cupom_produto odd lista_odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>8.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            ');
INSERT INTO `pedidos_espera_html` (`id`, `html`) VALUES
(103, '\n                        		\n                        		\n                        		\n                        		\n                        			<div class="espera_nome_cliente" id_guiche="003">Sem Cliente - 003</div>	<div class="espera_lista_itens_left">coca cola 2l 2 <br></div>	<div class="espera_lista_itens_right">8.00<br></div>	<div class="espera_titulo">		<div class="espera_mesa" id_mesa_c="">		</div>		<div class="espera_total">			R$ 8.00		</div>	</div>	<div class="espera_nota_completa" style="display:none;"><div id="cupom_id_nota" id_nota="103" style="display:none;" val_desc=""></div><div class="col_1_row_1">	<div id="cupom_cliente" title="Ver Histórico" cupom_id_cliente="">		<div id="cupom_nome">Sem Cliente</div>		<span id="cupom_telefone"></span>	</div>	<div id="cupom_pesquisar_cliente" title="Selecionar Cliente">		<i class="fa fa-search fa-2x"></i>	</div>	<div id="cupom_mesa" title="Selecionar Mesa" id_mesa_c="">		<i class="fa fa-cutlery fa-2x"></i>	</div></div><div class="col_1_row_1_5">	Obs: <input type="text" id="obs_pedido" value="coca"></div><div class="col_1_row_2">	<div class="produto_atual_left">		<div id="cupom_id_prod" id_prod="2"></div>		<div id="cupom_quantidade" value="1"></div>		<div id="cupom_descricao">coca cola 2l 2 l</div>	</div>	<div class="produto_atual_right">		<div id="cupom_unitario">Unitário (R$)</div>		<div id="cupom_valor_unitario">8.00</div>	</div></div><div class="col_1_row_3" style="height: 774px;">	<div class="col_1_row_3" id="cupom_nota" style="height: 774px;"><div class="cupom_produto odd lista_odd" id_prod="2">	<div>		<div class="cupom_produto_col1">		    <div class="cupom_produto_quantidade" value="1">Nome</div>		    <div class="cupom_produto_descricao">coca cola 2l 2 l</div>		</div>		<div class="produto_produto_deletar" title="Remover Produto">		    <i class="fa fa-trash-o fa-2x"></i>		</div>		<div class="cupom_produto_col3">		    <div class="cupom_produto_total">Total (R$)</div>		    <div class="cupom_produto_valor_total">8.00</div>		</div>		<div class="cupom_produto_col2">		    <div class="cupom_produto_unitario">Valor (R$)</div>		    <div class="cupom_produto_valor_unitario">8.00</div>		</div>	</div>	<div style="display:none">		<div class="cupom_produto_mensagem_del">			Deseja deletar esse Produto?		</div>		<div class="cupom_produto_cancel_del" title="Não">		    <i class="fa fa-times fa-2x"></i>		</div>		<div class="cupom_produto_conf_del" title="Sim">		    <i class="fa fa-check fa-2x"></i>		</div>	</div></div></div></div><div class="col_1_row_4">	<div>		<div id="cupom_cancelar" title="Cancelar Pedido">			<i class="fa fa-trash-o fa-2x"></i><br>Cancelar		</div>		<div id="cupom_espera" title="Colocar Pedido em Espera">			<i class="fa fa-exchange fa-2x"></i><br>Em Espera		</div>		<div id="cupom_receber" title="Fechar Pedido">			<i class="fa fa-money fa-2x"></i><br>Receber		</div>		<div id="cupom_total">			<span>A RECEBER (R$)</span>			<p>18.00</p>		</div>	</div>	<div style="display:none">		<div class="cupom_pedido_cancel_del" title="Não">			<i class="fa fa-times fa-3x"></i>		</div>		<div class="cupom_pedido_conf_del" title="Sim">			<i class="fa fa-check fa-3x"></i>		</div>		<div class="cupom_pedido_mensagem_del">			Deseja Cancelar esse Pedido?		</div>	</div></div></div>	<div class="espera_item_editar" style="display: none;"> <i class="fa fa-sign-out fa-rotate-180"></i> </div>	<div class="espera_item_chamar" style="display: none;"> <i class="fa fa-bell"></i> </div>                                                                                                                                            ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `unidade` varchar(5) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `adicional` tinyint(1) NOT NULL DEFAULT '0',
  `imprimir` tinyint(4) NOT NULL,
  `imagem` varchar(40) NOT NULL DEFAULT 'sem_imagem.png',
  `valor` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `descricao_completa` longtext NOT NULL,
  `data_registro` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categoria`, `nome`, `descricao`, `unidade`, `quantidade`, `adicional`, `imprimir`, `imagem`, `valor`, `status`, `descricao_completa`, `data_registro`) VALUES
(3, 1, 'Hamburguer', '', 'g', 150, 0, 1, 'xsaladaduplo.png', 10, 1, '', '07/04/2016 14:42:03'),
(2, 2, 'Cola Cola 2L', '', 'l', 2, 0, 1, 'coca-2-l1.png', 8, 1, '', '27/05/2016 16:21:32'),
(4, 1, 'Xis Povão', '', 'g', 200, 0, 1, 'bobs-burger-duplo.g_.png', 25, 1, '', '07/04/2016 14:41:44'),
(5, 2, 'Fanta Laranja', '', 'un', 1, 0, 0, 'images.jpg', 10, 1, '', '27/05/2016 16:21:11'),
(6, 5, 'ad 1', '', 'g', 100, 0, 1, 'cheddar_fatiado.png', 2, 1, 'adicional ', '27/05/2016 16:23:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `notas` longtext NOT NULL,
  `data_log` varchar(20) NOT NULL,
  `data_registro` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `telefone`, `celular`, `senha`, `status`, `notas`, `data_log`, `data_registro`) VALUES
(1, 'Administrador', 'admin', '(00) 0000-0000', '(00) 0000-0000', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', 1, '', '21/05/2014 09:56:26', '25/06/2015 10:26:06');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

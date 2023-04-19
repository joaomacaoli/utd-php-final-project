-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31-Mar-2023 às 02:06
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `system`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clients`
--

CREATE TABLE `clients` (
  `id_client` int(6) NOT NULL,
  `client_name` varchar(50) DEFAULT NULL,
  `client_email` varchar(50) DEFAULT NULL,
  `client_adddress` varchar(50) DEFAULT NULL,
  `client_password` varchar(50) DEFAULT NULL,
  `client_cpf` varchar(15) DEFAULT NULL,
  `client_phone` varchar(20) DEFAULT NULL,
  `client_type` varchar(10) DEFAULT NULL,
  `client_created_in` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clients`
--

INSERT INTO `clients` (`id_client`, `client_name`, `client_email`, `client_password`, `client_cpf`, `client_phone`, `client_type`, `client_adddress`, `client_created_in`) VALUES
(1, 'CARLA RAFAELA TELES', 'RAFAELA@EMAIL.COM', '1234', '12345678999', '85999544255', 'BRONZE', 'RUA BEM ALÍ, 223', '2023-03-24 23:24:07'),
(2, 'ERIC EVANGELISTA', 'ERIC@EMAIL.COM', '1234', '12345678998', '85999544222', 'PRATA', 'RUA BEM ALI, 555', '2023-03-24 23:24:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `items`
--

CREATE TABLE `items` (
  `id_item` int(6) NOT NULL,
  `product_id` int(6) DEFAULT NULL,
  `item_quantity` int(2) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item_created_in` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `items`
--

INSERT INTO `items` (`id_item`, `product_id`, `item_quantity`, `order_id`, `item_created_in`) VALUES
(1, 1, 2, 1, '2023-03-23 23:27:46'),
(2, 3, 1, 1, '2023-03-23 23:27:46'),
(3, 5, 3, 1, '2023-03-23 23:27:46'),
(4, 6, 2, 2, '2023-03-24 00:02:02'),
(5, 7, 5, 2, '2023-03-24 00:02:02'),
(6, 2, 3, 2, '2023-03-24 00:02:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id_log` int(11) NOT NULL,
  `log_content` text NOT NULL,
  `log_type` varchar(30) NOT NULL,
  `log_created_in` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `order_number` varchar(10) DEFAULT NULL,
  `client_id` int(6) DEFAULT NULL,
  `user_id` int(6) DEFAULT NULL,
  `order_created_in` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`id_order`, `order_number`, `client_id`, `user_id`, `order_created_in`) VALUES
(1, '0000000001', 1, 1, '2023-03-23 23:27:42'),
(2, '0000000002', 2, 1, '2023-03-24 00:02:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id_product` int(6) NOT NULL,
  `product_name` varchar(40) DEFAULT NULL,
  `product_code` varchar(12) DEFAULT NULL,
  `product_price` float(6,2) DEFAULT NULL,
  `product_stock` int(4) DEFAULT NULL,
  `product_created_in` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `product_code`, `product_price`, `product_stock`, `product_created_in`) VALUES
(1, 'Biscoito Rechado Morango', '000000000001', 2.99, 100, '2023-03-24 23:42:30'),
(2, 'Biscoito Rechado Chocolate', '000000000002', 2.99, 100, '2023-03-24 23:42:30'),
(3, 'Biscoito Rechado Escureto', '000000000003', 2.99, 100, '2023-03-24 23:42:30'),
(4, 'Refrigerante Coca Cola Lata', '000000000004', 3.99, 100, '2023-03-24 23:42:30'),
(5, 'Refrigerante Fanta Uva Lata', '000000000005', 3.59, 100, '2023-03-24 23:42:30'),
(6, 'Refrigerante Fanta Laranja Lata', '000000000006', 3.59, 100, '2023-03-24 23:42:30'),
(7, 'Salgadinho Cheetos Onda Requeijao P', '000000000007', 1.99, 100, '2023-03-24 23:42:30'),
(8, 'Salgadinho Cheetos Lua Requeijao P', '000000000008', 1.99, 100, '2023-03-24 23:42:30'),
(9, 'Ref São Geraldo 2lt', '000000000009', 8.99, 100, '2023-03-24 23:42:30'),
(10, 'Salgadinho Fandangos Presunto P', '000000000010', 1.99, 100, '2023-03-24 23:42:30'),
(11, 'Ypioca Ouro 100 Anos', '00000PRABB00', 89.99, 200, '2023-03-29 22:55:47'),
(13, 'Caninha Sport Ypioca Verde', '00001BORABBR', 8.99, 300, '2023-03-30 00:18:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id_user` int(6) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_cpf` varchar(15) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `user_adddress` varchar(50) DEFAULT NULL,
  `user_created_in` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id_user`, `user_name`, `user_email`, `user_password`, `user_cpf`, `user_phone`, `user_type`, `user_adddress`, `user_created_in`) VALUES
(1, 'ANTHONY JEFFERSON', 'ANTHONY@EMAIL.COM', '1234', '60393507335', '85999544262', 'ADMIN', 'RUA BEM ALI 222', '2023-03-23 23:10:16');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Índices para tabela `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id_log`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `items`
--
ALTER TABLE `items`
  MODIFY `id_item` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE `suppliers` (
  `id_supplier` int(6) NOT NULL,
  `supplier_name` varchar(50) DEFAULT NULL,
  `supplier_cnpj` varchar(15) DEFAULT NULL,
  `supplier_corporate_name` varchar(50) DEFAULT NULL,
  `supplier_created_in` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id_supplier`);

ALTER TABLE `suppliers`
  MODIFY `id_supplier` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

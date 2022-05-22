-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2022 at 11:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(1, 'admin', 'admin', 'Administrator', '', ''),
(4, 'Torrahclef', 'ay.clef', 'Faith', '', 'Awolu');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Drinks'),
(2, 'Food'),
(3, 'Grapes'),
(8, 'Sugar'),
(9, 'Water'),
(10, 'Wine Yeast'),
(11, 'Pre Sanitized Cork');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(1, 'Adegbammi Femi', 'Ilepa, Ikare Akoko', '0813435386', '1000', 'Coke and others', '2018-05-05', 'He will pay later '),
(2, 'Uli Rotela', '14 Clarion Quay', '522-9876', '100', 'Wine', '2022-05-20', 'This is a VIP customer'),
(3, 'Anita Ortega', 'Navan Road 123', '9874323424', '10892', 'Grapes', '2022-05-19', 'this is important'),
(4, 'Ulilrot', '14 Clarion Quay', '522-9876', '123', 'adsfa', '2022-05-25', 'weaef');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `entry` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `position`, `email`, `address`, `salary`, `entry`) VALUES
(23, 'Ulilrot', 'admin', 'ulirotela@gmail.com', '14 Clarion Quay', 1200, '2022-05-19'),
(24, 'Anita Ortega', 'admin', 'anita@gmail.com', '8 sherrard streetd', 901, '2022-05-19'),
(26, 'Rolando Leon', 'Cashier', 'ulirotela@gmail.com', '14 Clarion Quay', 790, '2022-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  `varietal` varchar(50) NOT NULL,
  `vintage` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `o_price`, `price`, `profit`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `varietal`, `vintage`, `description`) VALUES
(13, 'RBH-abd6', 'Primitivo di Puglia Rocca Antica ', '30', '1000', '970', 2, 5000, '2022-05-28', '2022-05-04', 'Primitivo', '1999', 'Colour: Red Style: Dry'),
(14, 'RBH-fe93', 'Chateau La Fleur Cravignac Saint Emilion Grand Cru ', '30', '150', '120', 399, 400, '2022-05-21', '2022-05-22', 'Merlot', '1986', 'Colour: Red Style: Dry'),
(15, 'RBH-ba51', 'Sangiovese Tenute del Pojo', '8', '15', '7', 499, 500, '2022-05-19', '2022-02-11', 'Sangiovese', '2020', ' Red Wine  Color: Red'),
(16, 'RBH-0cea', 'Cococciola Sidhuri ', '70', '200', '130', 700, 700, '1986-05-20', '2021-12-29', 'Cococciola ', '1986', 'White Wine ');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `due_date`, `name`) VALUES
(10, 'RS-329322', 'Administrator', '05/22/22', 'cash', '500000', '350000', '100', 'Wine Shop Dublin'),
(11, 'RS-05022', 'Administrator', '05/22/22', 'cash', '15', '7', '100', 'Tesco');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `name`, `price`, `discount`, `date`) VALUES
(42, 'RS-329322', '13', '5000', '500000', '350000', 'RBH-abd7', 'Primitivo di Puglia Rocca Antica', '100', '0', '05/22/22'),
(43, 'RS-0262002', '14', '1', '150', '120', 'RBH-fe94', 'Chateau La Fleur Cravignac Saint Emilion Grand Cru ', '150', '0', '05/22/22'),
(44, 'RS-05022', '15', '1', '15', '7', 'RBH-ba52', 'Sangiovese Tenute del Pojo', '15', '0', '05/22/22');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(1, 'Bottle & Company', 'botanic Garden', 'Raphael Orson', '0902673484', 'Phoenix Park '),
(4, 'Preseque Isle Wine Cellars', 'North East. PA', 'Gregory Rogers', '+353-8575479', 'Wine Making Supplies'),
(5, 'E. & J. Gallo Winery’s Global Sourcing', '14 Navan Road ', 'Shila Rogers', '+353-85765434', 'Grapes'),
(6, 'Musgrave Group', ' St Margaret\'s Rd', 'John Pettersons', '+353-85754787', 'Granulated sugar provider'),
(7, 'Kendal Farms', 'South Clarion Quay', 'Anderson Holly', '086-87649283', 'Grapes provider');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`product_id`, `product_code`, `gen_name`, `product_name`, `o_price`, `price`, `profit`, `supplier`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(7, 'RBH-eb66', 'Grapes', 'Wine Grapes', '2', '5', '3', 'Kendal Farms', 5000, 5000, '2022-08-31', '2022-05-22'),
(8, 'RBH-e855', 'Pre Sanitized Cork', 'Cork', '1', '3', '2', 'E. & J. Gallo Winery’s Global Sourcing', 5000, 5000, '2025-06-04', '2022-05-19'),
(9, 'RBH-ffca', 'Sugar', 'Sugar', '1', '2', '1', 'Musgrave Group', 5000, 5000, '2022-12-23', '2022-05-20'),
(10, 'RBH-3226', 'Wine Yeast', 'Wine Yeast', '1', '3', '2', 'Musgrave Group', 5000, 5000, '2026-10-22', '2022-05-11'),
(11, 'RBH-07c9', 'Bottles', 'Bottles 1lt', '2', '5', '3', 'Bottle & Company', 5000, 5000, '2022-11-23', '2022-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(2, 'tobi', 'tobi', 'Cashier Pharmacy', 'Cashier'),
(3, 'admin', 'admin123', 'Administrator', 'admin'),
(5, 'joy', 'joy', 'Alasagba', 'Cashier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 04, 2023 at 02:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swiss_collection`
--

-- --------------------------------------------------------

--
-- Table structure for table `captured_info`
--

CREATE TABLE `captured_info` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `internship_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `captured_info`
--

INSERT INTO `captured_info` (`name`, `email`, `internship_url`) VALUES
('Misha', 'mishagajen@gmail.com', 'https://www.infosys.com'),
('', '', 'https://www.infosys.com'),
('', '', 'https://www.infosys.com'),
('', '', 'https://www.infosys.com'),
('', '', 'https://www.infosys.com'),
('', '', 'https://www.infosys.com'),
('misha', 'misha@gmail.com', 'https://www.infosys.com'),
('', '', 'https://www.infosys.com'),
('mdj', 'deqw@egget.vo', 'https://www.infosys.com'),
('misha', 'mis2@gmail.com', 'https://www.infosys.com'),
('', '', 'https://www.infosys.com'),
('misha', 'tgmisha@gmail.com', 'https://careers.google.com'),
('yiljkk', '3wesrdtfgh4', 'https://careers.google.com'),
('lizz', 'lizzsumesh@gmail.com', 'https://careers.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, '15 Days'),
(2, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `internship_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`name`, `email`, `internship_url`) VALUES
('', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivered_to` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `delivered_to`, `email`, `order_status`) VALUES
(1, 2, 'Self', 'dfGrg', 0),
(3, 2, 'Test  Firstuser', 'lkcnD\'PFP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`detail_id`, `order_id`, `variation_id`, `quantity`, `price`) VALUES
(1, 1, 1, 1, 500),
(3, 3, 3, 1, 890);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_url` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `uploaded_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_desc`, `product_image`, `price`, `category_id`, `product_url`, `dept`, `uploaded_date`) VALUES
(1, 'Software Engineering Internship', 'Gain hands-on experience developing cutting-edge software products and contribute to innovative projects with a team of world-class engineers.', '', 10000, 1, 'https://careers.google.com', 'cs', '2022-03-28'),
(2, 'AI Research Internship', 'Work on groundbreaking artificial intelligence research projects, collaborate with top researchers, and contribute to the development of advanced AI technologies.', '', 5000, 1, 'https://careers.microsoft.com/v2/global/en/home.html', 'cs', '2023-08-03'),
(3, 'iOS App Development Internship', 'Join the iOS development team to create and optimize mobile applications for Apple devices, impacting millions of users worldwide.', '', 10000, 2, 'https://www.apple.com/careers/us/', 'cs', '2023-08-03'),
(4, 'Cloud Solutions Internship', 'Dive into cloud computing technologies, design scalable solutions, and assist in the development of robust and secure cloud-based services.', '', 5000, 1, 'https://www.amazon.jobs/', 'cs', '2023-08-03'),
(5, 'Data Science Internship', 'Utilize data-driven insights to address complex business challenges, work on data analysis and machine learning projects under the guidance of experienced data scientists.', '', 10000, 2, '', 'cs', '2023-08-03'),
(6, 'GPU Architecture Internship', 'Contribute to the design and development of next-generation graphics processing units (GPUs) and work on optimizing performance for cutting-edge gaming, AI, and scientific computing applications.', '', 1000, 2, '', 'cs', '2023-08-03'),
(7, 'Civil Engineering Internship', 'Get hands-on experience in various civil engineering projects, from infrastructure design and construction management to environmental assessments and urban planning', '', 10000, 2, '', 'ce', '2023-08-03'),
(8, 'Transportation Engineering Internship', 'Work with a team of transportation engineers on projects related to highways, railways, airports, and public transportation systems, gaining practical knowledge in transportation planning and design.', '', 1300, 2, '', 'ce', '2023-08-03'),
(9, 'Structural Engineering Internship', 'Participate in the design and analysis of complex structures, such as bridges, buildings, and industrial facilities, and learn about innovative engineering techniques.', '', 5000, 2, '', 'ce', '2023-08-03'),
(10, 'Construction Management Internship', 'Assist in project planning, scheduling, and on-site management, gaining insights into construction operations and safety protocols.', '', 3456, 1, '', 'ce', '2023-08-03'),
(11, 'Environmental Engineering Internship', 'Work on environmental projects related to water resources, waste management, sustainable design, and renewable energy, contributing to a greener and more sustainable future.', '', 2357, 1, '', 'ce', '2023-08-03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(150) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `registered_at` date NOT NULL DEFAULT current_timestamp(),
  `isAdmin` int(11) NOT NULL DEFAULT 0,
  `user_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `contact_no`, `registered_at`, `isAdmin`, `user_address`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', '$2y$10$j9OXXIYS0CG5AYuks62YMeDvuIpo2hZEN4CqfJfujt1yPMnoUq5C6', '9810283472', '2022-04-10', 1, 'newroad'),
(2, 'Test ', 'Firstuser', 'test@gmail.com', '$2y$10$DJOdhZy1InHTKQO6whfyJexVTZCDTlmIYGCXQiPTv7l82AdC9bWHO', '980098322', '2022-04-10', 0, 'matepani-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `variation_id` (`variation_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`variation_id`) REFERENCES `product_size_variation` (`variation_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

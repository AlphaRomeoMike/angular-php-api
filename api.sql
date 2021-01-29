-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 08:44 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `st_deleteUser` (`id` INT)  BEGIN
    	DELETE FROM tbl_users WHERE u_id = id;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `st_getUser` ()  BEGIN
    	SELECT u.u_id as "ID",
        	   u.u_name as "Name",
               u.u_age as "Age",
               u.u_phone as "Phone"
               
               FROM tbl_users u
               ORDER BY u.u_id ASC;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `st_insertUser` (IN `name` VARCHAR(30), IN `age` TINYINT, IN `phone` VARCHAR(15))  BEGIN
    	INSERT INTO tbl_users (u_name, u_age, u_phone) VALUES (name, age, phone);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `st_updateUser` (`name` VARCHAR(30), `age` TINYINT, `phone` VARCHAR(15), `id` INT)  BEGIN
    	UPDATE tbl_users SET 
        	u_name = name,
            u_age  = age,
            u_phone = phone
            	WHERE 
            u_id = id;
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(30) NOT NULL,
  `u_age` tinyint(4) NOT NULL,
  `u_phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `st_deleteUser`(`id` INT)
BEGIN
    	DELETE FROM tbl_users WHERE u_id = id;
    END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `st_getUser`()
BEGIN
    	SELECT u.u_id as "ID",
        	   u.u_name as "Name",
               u.u_age as "Age",
               u.u_phone as "Phone"
               
               FROM tbl_users u
               ORDER BY u.u_id ASC;
    END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `st_insertUser`(IN `name` VARCHAR(30), IN `age` TINYINT, IN `phone` VARCHAR(15))
BEGIN
    	INSERT INTO tbl_users (u_name, u_age, u_phone) VALUES (name, age, phone);
    END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `st_updateUser`(`name` VARCHAR(30), `age` TINYINT, `phone` VARCHAR(15), `id` INT)
BEGIN
    	UPDATE tbl_users SET 
        	u_name = name,
            u_age  = age,
            u_phone = phone
            	WHERE 
            u_id = id;
    END$$
DELIMITER ;

-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生日期: 2013 年 03 月 25 日 03:29
-- 伺服器版本: 5.5.27
-- PHP 版本: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `lms`
--

-- --------------------------------------------------------

--
-- 表的結構 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `account` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 轉存資料表中的資料 `admin`
--

INSERT INTO `admin` (`account`, `password`) VALUES
('kevingyc', 'elu4503');

-- --------------------------------------------------------

--
-- 表的結構 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `account` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(20) CHARACTER SET utf8 NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`account`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 轉存資料表中的資料 `member`
--

INSERT INTO `member` (`account`, `password`, `username`, `email`, `country`, `age`) VALUES
('kevingyc', 'elu4503', '高翊展', '6006s@csie.ntnu.edu.tw', '台北', 24),
('mary', 'mary', '馬力', 'mary@ntnu.edu.tw', '台南', 27);

-- --------------------------------------------------------

--
-- 表的結構 `reading`
--

CREATE TABLE IF NOT EXISTS `reading` (
  `serial` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `content` varchar(50) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 轉存資料表中的資料 `reading`
--

INSERT INTO `reading` (`serial`, `type`, `content`, `name`) VALUES
(1001, 'article', '1001.txt', '網址'),
(1002, 'figure', '1002.jpg', '手機1');

-- --------------------------------------------------------

--
-- 表的結構 `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `account` varchar(20) NOT NULL,
  `serial` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `comments` longtext NOT NULL,
  PRIMARY KEY (`account`,`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 轉存資料表中的資料 `record`
--

INSERT INTO `record` (`account`, `serial`, `time`, `comments`) VALUES
('mary', 1001, 102, 'some website'),
('mary', 1002, 38, 'a cellphone');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

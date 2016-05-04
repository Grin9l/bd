-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 04 2016 г., 18:23
-- Версия сервера: 5.5.45
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `myBase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `role` (`role`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'admin', 'lol@mail.ru', '202cb962ac59075b964b07152d234b70', 'admin'),
(2, 'Сергей Иванович', 'loh@mail.ru', '698d51a19d8a121ce581499d7b701668', ''),
(5, 'Андрей', 'kxsol@mai.ru', 'e4d3a86ed37cde72061cd8c4e7b63bab', ''),
(4, '123', '111', '202cb962ac59075b964b07152d234b70', ''),
(11, 'qqq', 'aaa', 'fdfаа', ''),
(10, '3ц43', '435435', '9fc03dbc5359db21187849b0858ca015', ''),
(9, 'ыфвсыва', 'выасва', 'f3972b5cd3458e8da855ee6cdfea7bc5', ''),
(12, 'User_1', 'mail@1.ru', 'c4ca4238a0b923820dcc509a6f75849b', ''),
(13, 'User_2', 'mail@2.ru', 'c81e728d9d4c2f636f067f89cc14862c', ''),
(14, 'User_3', 'mail@3.ru', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', ''),
(15, 'User_4', 'mail@4.ru', 'a87ff679a2f3e71d9181a67b7542122c', ''),
(16, 'User_5', 'mail@5.ru', 'e4da3b7fbbce2345d7772b0674a318d5', ''),
(17, 'User_6', 'mail@6.ru', '1679091c5a880faf6fb5e6087eb1b2dc', ''),
(18, 'User_7', 'mail@7.ru', '8f14e45fceea167a5a36dedd4bea2543', ''),
(19, 'User_8', 'mail@8.ru', 'c9f0f895fb98ab9159f51fd0297e236d', ''),
(20, 'User_9', 'mail@9.ru', '45c48cce2e2d7fbdea1afc51c7c6ad26', ''),
(21, 'User_10', 'mail@10.ru', 'd3d9446802a44259755d38e6d163e820', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

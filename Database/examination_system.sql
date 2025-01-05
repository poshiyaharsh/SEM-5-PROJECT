-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2024 at 09:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examination_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('667e94277f498', '667e942780d3e'),
('667e942788044', '667e94278a1e6'),
('667e942792d4b', '667e942793bf7'),
('667e94279b956', '667e94279e1ec'),
('667e9427a364b', '667e9427a4b1e'),
('667e9427aa7bc', '667e9427ab71a'),
('667e9427b2892', '667e9427b384b'),
('667e9427ba24d', '667e9427bb22f'),
('667e9427c0b9c', '667e9427c2976'),
('667e9427c8391', '667e9427c9697'),
('667e968b68a96', '667e968b6aef0'),
('667e968b73b0d', '667e968b74f6f'),
('667e968b7ac4a', '667e968b7c1e9'),
('667e968b85992', '667e968b86a8f'),
('667e968b9018a', '667e968b93919'),
('667e968b9c3a1', '667e968b9ed9d'),
('667e968ba4b0b', '667e968ba5f30'),
('667e968bab78e', '667e968bac68b'),
('667e968bb2ba7', '667e968bb586d'),
('667e968bbb896', '667e968bbcbb5'),
('667e9921cd766', '667e9921ceeb9'),
('667e9921d5448', '667e9921d6345'),
('667e9921dc2d8', '667e9921ddcc5'),
('667e9921e4058', '667e9921e55ef'),
('667e9921ee27b', '667e9921ef147'),
('667e992203266', '667e992206513'),
('667e99220c4c8', '667e99220e19a'),
('667e992214d70', '667e992216bf5'),
('667e99221e167', '667e99221f868'),
('667e992226a4f', '667e992228281'),
('667e9c356a372', '667e9c356c24c'),
('667e9c3572f69', '667e9c3575e72'),
('667e9c357b45b', '667e9c357ce1d'),
('667e9c35835a4', '667e9c3584c3b'),
('667e9c358b22d', '667e9c358d6e6'),
('667e9c35968d7', '667e9c3597b37'),
('667e9c359d446', '667e9c359e44e'),
('667e9c35a53c6', '667e9c35a6455'),
('667e9c35abf3e', '667e9c35add35'),
('667e9c35b3742', '667e9c35b4ba0'),
('66fcf5e79dcee', '66fcf5e7a0e36'),
('66fcf5e7aa240', '66fcf5e7ab750'),
('66fcf5e7b20ea', '66fcf5e7b359a'),
('66fcf5e7ba0cf', '66fcf5e7bb55c'),
('66fcf5e7c21de', '66fcf5e7c3708');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `feedback` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('667e9f7cc3804', 'Milan', 'milan@gmail.com', 'Feedback', 'Good Web Software To Learn\r\n', '2024-06-28', '01:33:16pm'),
('667e9f965e4c7', 'Sujal', 'sujal@gmail.com', 'Feedback', 'Good Web Software To Learn\r\n', '2024-06-28', '01:33:42pm'),
('667e9fe00371b', 'Urvish', 'urvish@gmail.com', 'Feedback', 'Good Web Software To Learn', '2024-06-28', '01:34:56pm'),
('66fcf655baee7', 'John Farmer', 'j@gmail.com', 'Bug', 'There Are some bugs', '2024-10-02', '09:29:25am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(255) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('R@gmail.com', '667e9a0a3bf25', 2, 10, 6, 4, '2024-09-11 05:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(255) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('667e94277f498', 'cout <<\"Hello world!\";', '667e942780d3e'),
('667e94277f498', 'Cout << Hello world! ;', '667e942780d47'),
('667e94277f498', 'Out <<\"Hello world!;', '667e942780d49'),
('667e94277f498', 'None of the above', '667e942780d4b'),
('667e942788044', '$var_name', '667e94278a1d9'),
('667e942788044', 'VAR_123', '667e94278a1e6'),
('667e942788044', 'varname@', '667e94278a1e8'),
('667e942788044', 'None of the above', '667e94278a1eb'),
('667e942792d4b', '@', '667e942793bec'),
('667e942792d4b', '#', '667e942793bf5'),
('667e942792d4b', '&', '667e942793bf7'),
('667e942792d4b', '%', '667e942793bf9'),
('667e94279b956', 'Encapsulation', '667e94279e1e2'),
('667e94279b956', 'Inheritance', '667e94279e1e9'),
('667e94279b956', 'Polymorphism', '667e94279e1eb'),
('667e94279b956', 'All of the above', '667e94279e1ec'),
('667e9427a364b', 'Overloaded', '667e9427a4b02'),
('667e9427a364b', 'Encapsulated', '667e9427a4b1a'),
('667e9427a364b', 'Reprehensible', '667e9427a4b1c'),
('667e9427a364b', 'Extensible', '667e9427a4b1e'),
('667e9427aa7bc', 'Dennis Ritchie', '667e9427ab70f'),
('667e9427aa7bc', 'Ken Thompson', '667e9427ab717'),
('667e9427aa7bc', 'Bjarne Stroustrup', '667e9427ab71a'),
('667e9427aa7bc', 'Brian Kernighan', '667e9427ab71b'),
('667e9427b2892', '//Comment', '667e9427b384b'),
('667e9427b2892', '/Comment/', '667e9427b3855'),
('667e9427b2892', 'Comment//', '667e9427b3857'),
('667e9427b2892', 'None of the above', '667e9427b3859'),
('667e9427ba24d', 'High-level Language', '667e9427bb21f'),
('667e9427ba24d', 'Low-level language', '667e9427bb22a'),
('667e9427ba24d', 'Middle-level language', '667e9427bb22f'),
('667e9427ba24d', 'None of the above', '667e9427bb233'),
('667e9427c0b9c', '\n', '667e9427c2976'),
('667e9427c0b9c', '\r', '667e9427c297f'),
('667e9427c0b9c', 'a', '667e9427c2982'),
('667e9427c0b9c', 'None of the above', '667e9427c2984'),
('667e9427c8391', '3', '667e9427c9689'),
('667e9427c8391', '5', '667e9427c9695'),
('667e9427c8391', '4', '667e9427c9697'),
('667e9427c8391', '88', '667e9427c9699'),
('667e968b68a96', '12', '667e968b6aede'),
('667e968b68a96', '32', '667e968b6aeed'),
('667e968b68a96', '64', '667e968b6aeee'),
('667e968b68a96', 'None of these above', '667e968b6aef0'),
('667e968b73b0d', 'Zim Den', '667e968b74f68'),
('667e968b73b0d', 'Guido van Rossum', '667e968b74f6f'),
('667e968b73b0d', 'Niene Stom', '667e968b74f71'),
('667e968b73b0d', 'Wick van Rossum', '667e968b74f73'),
('667e968b7ac4a', '1995', '667e968b7c1d2'),
('667e968b7ac4a', '1972', '667e968b7c1e5'),
('667e968b7ac4a', '1981', '667e968b7c1e7'),
('667e968b7ac4a', '1989', '667e968b7c1e9'),
('667e968b85992', 'English', '667e968b86a85'),
('667e968b85992', 'PHP', '667e968b86a8d'),
('667e968b85992', 'C', '667e968b86a8f'),
('667e968b85992', 'All of the above', '667e968b86a90'),
('667e968b9018a', '.py', '667e968b93919'),
('667e968b9018a', '.python', '667e968b93928'),
('667e968b9018a', '.p', '667e968b9392c'),
('667e968b9018a', 'None of these', '667e968b9392e'),
('667e968b9c3a1', '2008', '667e968b9ed9d'),
('667e968b9c3a1', '2000', '667e968b9edaa'),
('667e968b9c3a1', '2010', '667e968b9edac'),
('667e968b9c3a1', '2005', '667e968b9edad'),
('667e968ba4b0b', 'Key', '667e968ba5f22'),
('667e968ba4b0b', 'Brackets', '667e968ba5f2e'),
('667e968ba4b0b', 'Indentation', '667e968ba5f30'),
('667e968ba4b0b', 'None of these', '667e968ba5f32'),
('667e968bab78e', '/', '667e968bac67d'),
('667e968bab78e', '//', '667e968bac689'),
('667e968bab78e', '#', '667e968bac68b'),
('667e968bab78e', '!', '667e968bac68d'),
('667e968bb2ba7', 'Object', '667e968bb5865'),
('667e968bb2ba7', 'Function', '667e968bb586d'),
('667e968bb2ba7', 'Attribute', '667e968bb586f'),
('667e968bb2ba7', 'Argument', '667e968bb5871'),
('667e968bbb896', 'val', '667e968bbcbb5'),
('667e968bbb896', 'raise', '667e968bbcbc1'),
('667e968bbb896', 'try', '667e968bbcbc4'),
('667e968bbb896', 'with', '667e968bbcbc5'),
('667e9921cd766', 'Object-Oriented', '667e9921ceeae'),
('667e9921cd766', 'Object-Based', '667e9921ceeb9'),
('667e9921cd766', 'Assembly-language', '667e9921ceebb'),
('667e9921cd766', 'High-level', '667e9921ceebe'),
('667e9921d5448', 'Alternative to if-else', '667e9921d6339'),
('667e9921d5448', 'Switch statement', '667e9921d6341'),
('667e9921d5448', 'If-then-else statement', '667e9921d6343'),
('667e9921d5448', 'immediate if', '667e9921d6345'),
('667e9921dc2d8', 'Keywords', '667e9921ddcba'),
('667e9921dc2d8', 'Data types', '667e9921ddcc3'),
('667e9921dc2d8', 'Declaration statements', '667e9921ddcc5'),
('667e9921dc2d8', 'Prototypes', '667e9921ddcc7'),
('667e9921e4058', 'Global variable', '667e9921e55e7'),
('667e9921e4058', 'The local element', '667e9921e55ef'),
('667e9921e4058', 'The two of the above', '667e9921e55f2'),
('667e9921e4058', 'None of the above', '667e9921e55f4'),
('667e9921ee27b', 'Preprocessor', '667e9921ef139'),
('667e9921ee27b', 'Triggering Event', '667e9921ef143'),
('667e9921ee27b', 'RMI', '667e9921ef145'),
('667e9921ee27b', 'Function/Method', '667e9921ef147'),
('667e992203266', '00', '667e9922064e9'),
('667e992203266', '0x', '667e9922064f4'),
('667e992203266', '0X', '667e99220650e'),
('667e992203266', 'Both 0x and 0X', '667e992206513'),
('667e99220c4c8', 'Mutable variable', '667e99220e19a'),
('667e99220c4c8', 'Dynamic variable', '667e99220e1a3'),
('667e99220c4c8', 'Volatile variable', '667e99220e1a5'),
('667e99220c4c8', 'Immutable variable', '667e99220e1a7'),
('667e992214d70', 'Syntax error', '667e992216be9'),
('667e992214d70', 'Missing of semicolons', '667e992216bf2'),
('667e992214d70', 'Division by zero', '667e992216bf5'),
('667e992214d70', 'Missing of Bracket', '667e992216bf7'),
('667e99221e167', 'toExponential()', '667e99221f860'),
('667e99221e167', 'toFixed()', '667e99221f868'),
('667e99221e167', 'toPrecision()', '667e99221f86b'),
('667e99221e167', 'toLocaleString()', '667e99221f86d'),
('667e992226a4f', 'slice()', '667e992228276'),
('667e992226a4f', 'split()', '667e99222827f'),
('667e992226a4f', 'substr()', '667e992228281'),
('667e992226a4f', 'search()', '667e992228283'),
('667e9c356a372', 'SmallTalk', '667e9c356c24c'),
('667e9c356a372', 'C++', '667e9c356c256'),
('667e9c356a372', 'Kotlin', '667e9c356c25a'),
('667e9c356a372', 'Java', '667e9c356c25e'),
('667e9c3572f69', 'Adele Goldberg', '667e9c3575e66'),
('667e9c3572f69', 'Dennis Ritchie', '667e9c3575e70'),
('667e9c3572f69', 'Alan Kay', '667e9c3575e72'),
('667e9c3572f69', 'Andrea Ferro', '667e9c3575e74'),
('667e9c357b45b', 'Encapsulation', '667e9c357ce12'),
('667e9c357b45b', 'Polymorphism', '667e9c357ce1a'),
('667e9c357b45b', 'Exception', '667e9c357ce1d'),
('667e9c357b45b', 'Abstraction', '667e9c357ce1f'),
('667e9c35835a4', 'Abstraction', '667e9c3584c2b'),
('667e9c35835a4', 'Encapsulation', '667e9c3584c36'),
('667e9c35835a4', 'Polymorphism', '667e9c3584c38'),
('667e9c35835a4', 'Inheritance', '667e9c3584c3b'),
('667e9c358b22d', 'C++ programming language', '667e9c358d6d7'),
('667e9c358b22d', 'Java programming language', '667e9c358d6e4'),
('667e9c358b22d', 'Ada programming language', '667e9c358d6e6'),
('667e9c358b22d', 'C# programming language', '667e9c358d6e8'),
('667e9c35968d7', 'Modularity', '667e9c3597b2b'),
('667e9c35968d7', 'Efficient Code', '667e9c3597b33'),
('667e9c35968d7', 'Code reusability', '667e9c3597b35'),
('667e9c35968d7', 'Duplicate or Redundant Data', '667e9c3597b37'),
('667e9c359d446', 'Inheritance', '667e9c359e44e'),
('667e9c359d446', 'Data hiding', '667e9c359e458'),
('667e9c359d446', 'Encapsulation', '667e9c359e45a'),
('667e9c359d446', 'Polymorphism', '667e9c359e45c'),
('667e9c35a53c6', 'Smalltalk', '667e9c35a643d'),
('667e9c35a53c6', 'Kotlin', '667e9c35a6452'),
('667e9c35a53c6', 'Java', '667e9c35a6455'),
('667e9c35a53c6', 'C++', '667e9c35a6457'),
('667e9c35abf3e', 'Only 1', '667e9c35add27'),
('667e9c35abf3e', 'Only 999', '667e9c35add30'),
('667e9c35abf3e', 'Only 100', '667e9c35add33'),
('667e9c35abf3e', 'Any number', '667e9c35add35'),
('667e9c35b3742', 'Overloading <<', '667e9c35b4ba0'),
('667e9c35b3742', 'Overloading &&', '667e9c35b4ba8'),
('667e9c35b3742', 'Overloading | |', '667e9c35b4baa'),
('667e9c35b3742', 'Overloading +=', '667e9c35b4bac'),
('66fcf5e79dcee', 'Baseball', '66fcf5e7a0e31'),
('66fcf5e79dcee', 'Bull-Fighting', '66fcf5e7a0e35'),
('66fcf5e79dcee', 'Ice Hockey', '66fcf5e7a0e36'),
('66fcf5e79dcee', 'Hockey', '66fcf5e7a0e37'),
('66fcf5e7aa240', 'Iraq', '66fcf5e7ab750'),
('66fcf5e7aa240', 'Egypt', '66fcf5e7ab754'),
('66fcf5e7aa240', 'China', '66fcf5e7ab755'),
('66fcf5e7aa240', 'Greek', '66fcf5e7ab756'),
('66fcf5e7b20ea', ' Congo basin', '66fcf5e7b359a'),
('66fcf5e7b20ea', 'Amazon basin', '66fcf5e7b359f'),
('66fcf5e7b20ea', 'Nile basin', '66fcf5e7b35a0'),
('66fcf5e7b20ea', 'Yellow river basin', '66fcf5e7b35a1'),
('66fcf5e7ba0cf', 'Marathon', '66fcf5e7bb55c'),
('66fcf5e7ba0cf', 'Boxing', '66fcf5e7bb560'),
('66fcf5e7ba0cf', 'Swimming', '66fcf5e7bb561'),
('66fcf5e7ba0cf', 'Kho Kho', '66fcf5e7bb562'),
('66fcf5e7c21de', ' Sri Lanka', '66fcf5e7c3702'),
('66fcf5e7c21de', 'Bhutan', '66fcf5e7c3706'),
('66fcf5e7c21de', 'Bangladesh', '66fcf5e7c3707'),
('66fcf5e7c21de', 'Nepal', '66fcf5e7c3708');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('667e9234a412a', '667e94277f498', 'Which of the following is the correct syntax to print the message in C++ language?', 4, 1),
('667e9234a412a', '667e942788044', 'Which of the following is the correct identifier?', 4, 2),
('667e9234a412a', '667e942792d4b', 'Which of the following is the address operator?', 4, 3),
('667e9234a412a', '667e94279b956', 'Which of the following features must be supported by any programming language to become a pure object-oriented programming language?', 4, 4),
('667e9234a412a', '667e9427a364b', 'The programming language that has the ability to create new data types is called___', 4, 5),
('667e9234a412a', '667e9427aa7bc', 'Which of the following is the original creator of the C++ language?', 4, 6),
('667e9234a412a', '667e9427b2892', 'Which of the following comment syntax is correct to create a single-line comment in the C++ program?', 4, 7),
('667e9234a412a', '667e9427ba24d', 'C++ is a ___ type of language.', 4, 8),
('667e9234a412a', '667e9427c0b9c', 'For inserting a new line in C++ program, which one of the following statements can be used?', 4, 9),
('667e9234a412a', '667e9427c8391', 'If we stored five elements or data items in an array, what will be the index address or the index number of the arrays last data item?', 4, 10),
('667e94d44c595', '667e968b68a96', 'What is the maximum possible length of an identifier?', 4, 1),
('667e94d44c595', '667e968b73b0d', 'Who developed the Python language?', 4, 2),
('667e94d44c595', '667e968b7ac4a', 'In which year was the Python language developed?', 4, 3),
('667e94d44c595', '667e968b85992', 'In which language is Python written?', 4, 4),
('667e94d44c595', '667e968b9018a', 'Which one of the following is the correct extension of the Python file?', 4, 5),
('667e94d44c595', '667e968b9c3a1', 'In which year was the Python 3.0 version developed?', 4, 6),
('667e94d44c595', '667e968ba4b0b', 'What do we use to define a block of code in Python language?', 4, 7),
('667e94d44c595', '667e968bab78e', 'Which character is used in Python to make a single line comment?', 4, 8),
('667e94d44c595', '667e968bb2ba7', 'What is the method inside the class in python language?', 4, 9),
('667e94d44c595', '667e968bbb896', 'Which of the following is not a keyword in Python language?', 4, 10),
('667e97083a04d', '667e9921cd766', 'Which type of JavaScript language is ___', 4, 1),
('667e97083a04d', '667e9921d5448', 'Which one of the following also known as Conditional Expression:', 4, 2),
('667e97083a04d', '667e9921dc2d8', 'The \"function\" and \" var\" are known as:', 4, 3),
('667e97083a04d', '667e9921e4058', 'Which of the following variables takes precedence over the others if the names are the same?', 4, 4),
('667e97083a04d', '667e9921ee27b', 'Which one of the following is the correct way for calling the JavaScript code?', 4, 5),
('667e97083a04d', '667e992203266', 'Which of the following option is used as hexadecimal literal beginning?', 4, 6),
('667e97083a04d', '667e99220c4c8', 'Which of the following type of a variable is volatile?', 4, 7),
('667e97083a04d', '667e992214d70', 'In the JavaScript, which one of the following is not considered as an error:', 4, 8),
('667e97083a04d', '667e99221e167', 'Which of the following givenfunctions of the Number Object formats a number with a different number of digits to the right of the decimal?', 4, 9),
('667e97083a04d', '667e992226a4f', 'Which of the following function of the String object returns the character in the string starting at the specified position via the specified number of characters?', 4, 10),
('667e9a0a3bf25', '667e9c356a372', 'Which of the following language was developed as the first purely object programming language?', 4, 1),
('667e9a0a3bf25', '667e9c3572f69', 'Who developed object-oriented programming?', 4, 2),
('667e9a0a3bf25', '667e9c357b45b', 'Which of the following is not an OOPS concept?', 4, 3),
('667e9a0a3bf25', '667e9c35835a4', 'Which feature of OOPS described the reusability of code?', 4, 4),
('667e9a0a3bf25', '667e9c358b22d', 'Which of the following language supports polymorphism but not the classes?', 4, 5),
('667e9a0a3bf25', '667e9c35968d7', 'Which among the following feature is not in the general definition of OOPS?', 4, 6),
('667e9a0a3bf25', '667e9c359d446', 'Which feature of OOPS derives the class from another class?', 4, 7),
('667e9a0a3bf25', '667e9c35a53c6', 'Define the programming language, which does not support all four types of inheritance?', 4, 8),
('667e9a0a3bf25', '667e9c35abf3e', 'A single program of OOPS contains _______ classes?', 4, 9),
('667e9a0a3bf25', '667e9c35b3742', 'Which operator from the following can be used to illustrate the feature of polymorphism?', 4, 10),
('66fcf4a02705c', '66fcf5e79dcee', 'The National Game of Canada is …', 4, 1),
('66fcf4a02705c', '66fcf5e7aa240', ' Which among the following is related to Mesopotamian Civilization?', 4, 2),
('66fcf4a02705c', '66fcf5e7b20ea', 'Pygmy is a tribe of …', 4, 3),
('66fcf4a02705c', '66fcf5e7ba0cf', 'The term ‘hitting willow’ is related to …', 4, 4),
('66fcf4a02705c', '66fcf5e7c21de', 'Rashtriya Panchayat is the Parliament of …', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('667e9234a412a', 'C++', 1, 1, 10, 30, 'C++ Multiple Choice Questions', 'C++', '2024-06-28 10:36:36'),
('667e94d44c595', 'Python', 1, 1, 10, 30, 'Python Multi Choice Questions', 'Python', '2024-06-28 10:47:48'),
('667e97083a04d', 'Javascript', 1, 1, 10, 30, 'JavaScript Multiple Choice Question', 'JavaScript', '2024-06-28 10:57:12'),
('667e9a0a3bf25', 'Oops', 1, 1, 10, 30, 'OOPS Multiple Choice Question', 'Oops Programming', '2024-06-28 11:10:02'),
('66fcf4a02705c', 'General Knowlage', 10, 2, 5, 10, 'This Improve Your General Knowlage', '#gk', '2024-10-02 07:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('R@gmail.com', 2, '2024-09-11 05:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Harsh', 'M', 'SSSDIIT Collage', 'harsh@gmail.com', 9999990000, 'harsh'),
('Milan', 'M', 'SSSDIIT Collage', 'milan@gmail.com', 9696960000, 'milan'),
('Sujal', 'M', 'SSSDIIT Collage', 'sujal@gmail.com', 9595950000, 'sujal'),
('ramya', 'M', 'SSSDIIT Collage', 'R@gmail.com', 1234567890, 'ramya'),
('ayush', 'Male', 'SSSDIIT Collage', 'ayush@gmail.com', 987654321, 'ayush'),
('karan', 'Male', 'SSSDIIT Collage', 'karan@gmail.com', 1234567890, 'karan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

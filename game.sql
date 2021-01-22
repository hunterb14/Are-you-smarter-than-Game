-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 01:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `questionID` int(11) NOT NULL,
  `questionNum` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `gradeLevel` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`questionID`, `questionNum`, `answer`, `gradeLevel`, `categoryID`) VALUES
(1, 1, 'Pilgrims', 1, 1),
(2, 2, 'Spain', 1, 1),
(3, 3, 'True', 1, 1),
(4, 4, 'Spanish', 1, 1),
(5, 1, 'True', 2, 1),
(6, 2, 'False', 2, 1),
(7, 3, 'True', 2, 1),
(8, 4, 'Hiroshima', 2, 1),
(9, 1, 'Quill', 3, 1),
(10, 2, 'True', 3, 1),
(11, 3, 'True', 3, 1),
(12, 4, 'China', 3, 1),
(13, 1, 'False', 4, 1),
(14, 2, 'Hieroglyphics', 4, 1),
(15, 3, 'True', 4, 1),
(16, 4, 'True', 4, 1),
(17, 1, 'True', 5, 1),
(18, 2, 'False', 5, 1),
(19, 3, 'Constantinople', 5, 1),
(20, 4, 'True', 5, 1),
(21, 1, 'True', 1, 2),
(22, 2, 'False', 1, 2),
(23, 3, 'True', 1, 2),
(24, 4, 'False', 1, 2),
(25, 1, 'True', 2, 2),
(26, 2, 'Both', 2, 2),
(27, 3, 'Antonym', 2, 2),
(28, 4, 'True', 2, 2),
(29, 1, 'True', 3, 2),
(30, 2, 'Charlotte’s Web', 3, 2),
(31, 3, 'True', 3, 2),
(32, 4, 'Roald Dahl', 3, 2),
(33, 1, 'Protagonist', 4, 2),
(34, 2, 'Adverb', 4, 2),
(35, 3, 'True', 4, 2),
(36, 4, 'False', 4, 2),
(37, 1, 'Mark Twain', 5, 2),
(38, 2, 'Articles', 5, 2),
(39, 3, 'Harper Lee', 5, 2),
(40, 4, 'True', 5, 2),
(41, 1, '7', 1, 3),
(42, 2, 'France', 1, 3),
(43, 3, 'Egypt', 1, 3),
(44, 4, 'True', 1, 3),
(45, 1, 'Texas', 2, 3),
(46, 2, 'Arizona', 2, 3),
(47, 3, 'False', 2, 3),
(48, 4, 'The Atlantic Ocean', 2, 3),
(59, 1, 'True', 3, 3),
(60, 2, 'Europe', 3, 3),
(61, 3, 'True', 3, 3),
(62, 4, 'Albany', 3, 3),
(63, 1, 'Northern Africa', 4, 3),
(64, 2, '4', 4, 3),
(65, 3, 'Russia', 4, 3),
(66, 4, 'The Rio Grande', 4, 3),
(67, 1, 'French', 5, 3),
(68, 2, 'Australia', 5, 3),
(69, 3, 'False', 5, 3),
(70, 4, 'The Himalayas', 5, 3),
(71, 1, 'True', 1, 4),
(72, 2, 'Stick together', 1, 4),
(73, 3, 'Gravity', 1, 4),
(74, 4, 'Butterfly', 1, 4),
(75, 1, 'Water', 2, 4),
(76, 2, 'Oxygen', 2, 4),
(77, 3, 'Carbon dioxide', 2, 4),
(78, 4, 'True', 2, 4),
(79, 1, 'Earthquake', 3, 4),
(80, 2, 'Diamond', 3, 4),
(81, 3, 'Mercury', 3, 4),
(82, 4, 'Photosynthesis', 3, 4),
(83, 1, 'Pupil', 4, 4),
(84, 2, 'Mars', 4, 4),
(85, 3, 'Carnivores', 4, 4),
(86, 4, 'True', 4, 4),
(87, 1, '4 billion', 5, 4),
(88, 2, 'True', 5, 4),
(89, 3, 'False', 5, 4),
(90, 4, 'Invertebrates', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `categoryName`) VALUES
(1, 'History');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `gradeLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionID` int(11) NOT NULL,
  `questionNum` int(11) NOT NULL,
  `question` text NOT NULL,
  `gradeLevel` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questionID`, `questionNum`, `question`, `gradeLevel`, `categoryID`) VALUES
(1, 1, 'The first Thanksgiving was celebrated by Native Americans and what other group of people?', 1, 1),
(2, 2, 'From which country did Mexico gain its independence in the 19th century?', 1, 1),
(3, 3, 'Who invented the light bulb in 1879? Thomas Edison (True or False)', 1, 1),
(4, 4, 'Which language is the mostly widely spoken in South America?', 1, 1),
(5, 1, 'What are the three branches of the United States government? Legislative, judicial, and executive. (True or False)', 2, 1),
(6, 2, 'Which war was fought between the north and south regions in the United States? World War 1. (True or False)', 2, 1),
(7, 3, 'Italy, Japan, and Germany’s alliance was called what during WWII? The Axis of Evil. (True or False).', 2, 1),
(8, 4, 'What city was the first to be attacked by an atomic bomb?', 2, 1),
(9, 1, 'What type of feather, beginning with letter Q, did people write with during the Middle Ages?', 3, 1),
(10, 2, 'Julius Caesar was the emperor of what empire? The Roman Empire. (True or False) ', 3, 1),
(11, 3, 'What is Rosa Parks most famous for? Refusing to give her seat up in the front of the bus. (True or False) ', 3, 1),
(12, 4, 'The first fireworks were invented in the 7th century in what country?', 3, 1),
(13, 1, 'What ancient civilization built the Machu Picchu complex in Peru? The Mayans (True or False).', 4, 1),
(14, 2, 'The ancient Egyptian writing system was called what?.', 4, 1),
(15, 3, 'From whom did the United State buy territory in the Louisiana Purchase?Napoleon/France (True or False).', 4, 1),
(16, 4, 'Who wrote the national anthem of the United States of America? Francis Scott Key (True or False).', 4, 1),
(17, 1, 'The what was the name of the last Queen of France? Marie Antoinette (True or False)', 5, 1),
(18, 2, 'The region known as the “Fertile Crescent” is located in present day England. (True or False)', 5, 1),
(19, 3, 'The modern day city of Istanbul was known by what name in the 13th century? Constantinople or Tokyo', 5, 1),
(20, 4, 'The French and Indian war,which began in 1754, became the North American theater of this worldwide war that lasted from 1756 to 1763? The Seven Years War (True or False)', 5, 1),
(21, 1, 'The plural of “moose” is...Moose (True or False)', 1, 2),
(22, 2, 'How many letters are in the English alphabet? 28 (True or False)', 1, 2),
(23, 3, 'In the story about the boy who cried wolf, what is the lesson? Always tell the truth (True or False)', 1, 2),
(24, 4, 'What is the term for a word that is similar in meaning to another word? Metaphor (True or False)', 1, 2),
(25, 1, 'What type of literature features magical creatures, such as giants, gnomes, and goblins? Fairy Tales (True or False)', 2, 2),
(26, 2, 'Is “red” an adjective or a noun? Both or Neither', 2, 2),
(27, 3, 'What is the term for a word that has the opposite meaning of another word?', 2, 2),
(28, 4, 'What are the five interrogative or \"question\" words?Who, what, when, where, why (True or False)', 2, 2),
(29, 1, 'The person in a novel who tells the story from a third-person perspective is called a what? A narrator (True or False)', 3, 2),
(30, 2, 'What is the name of the book about a friendship between a pig named Wilbur and spider named Charlotte? Charlotte’s Web or Harry Potter', 3, 2),
(31, 3, 'Adding conjunctions such as “and” or “but” turns a simple sentence into what type of sentence? Compound sentence (True or False)', 3, 2),
(32, 4, 'Who is the author of James and the Giant Peach? Roald Dahl or George R. R. Martin', 3, 2),
(33, 1, 'What is the main character in a story called? Protagonist or Antagonist', 4, 2),
(34, 2, 'What type of word is “truthfully?”', 4, 2),
(35, 3, 'In this book titled The Lion, the Witch, and the Wardrobe, what is the last comma called? The Oxford Comma (True or False)', 4, 2),
(36, 4, 'A story conveying a moral lesson is called what? A journey (True or False)', 4, 2),
(37, 1, 'Who is the creator of the classic book characters Tom Sawyer and Huckleberry Finn?', 5, 2),
(38, 2, 'The words “the,” “an,” and “a,” are known as what in English grammar?', 5, 2),
(39, 3, 'Who is the author of the 1960 novel about social and racial inequality To Kill a Mockingbird?', 5, 2),
(40, 4, 'Often seen at the end of a sentence, the three trailing dots that indicate the omission from speech or writing of a word or words that are superfluous or able to be understood from contextual clues are known as...Ellipsis (True or False)', 5, 2),
(41, 1, 'How many continents are there? 3 or 7 or 9?', 1, 3),
(42, 2, 'What country is Paris the capital of?', 1, 3),
(43, 3, 'In which country are the famous Pyramids of Giza?', 1, 3),
(44, 4, 'In what city is the White House located? Washington D.C. (True or False)', 1, 3),
(45, 1, 'Which state is called the Lone Star state?', 2, 3),
(46, 2, 'In what state is the Grand Canyon located?', 2, 3),
(47, 3, 'What three countries are located in North America? France, the United States, and Mexico (True or False)', 2, 3),
(48, 4, 'To travel from New York to London, one must fly over which ocean? The Atlantic Ocean or The Pacific Ocean?', 2, 3),
(59, 1, 'What is the longest river in the world? The Amazon (True or False)', 3, 3),
(60, 2, 'On what continent is the country of Greece located?', 3, 3),
(61, 3, 'What is the name for a body of land that is completely surrounded by water? An island (True or False)', 3, 3),
(62, 4, 'What is the capital of New York?', 3, 3),
(63, 1, 'Where is the largest desert in the world located? Northern Africa or South America?', 4, 3),
(64, 2, 'How many kingdoms are part of the United Kingdom? 2, 4, 6, 8, or 9?', 4, 3),
(65, 3, 'Which country is the largest in size?', 4, 3),
(66, 4, 'The United States and Mexico are separated by which river? The Rio Grande or The Nile River?', 4, 3),
(67, 1, 'What is the main language spoken in the Canadian province of Quebec?', 5, 3),
(68, 2, 'Which country is both an island and a continent?', 5, 3),
(69, 3, 'What is the name of the sea bordered by Europe to the north and North Africa to the south? The Red Sea. (True or False)', 5, 3),
(70, 4, 'The mountain range that includes Mount Everest is called what? The Himalayas or The Rocky Mountains?', 5, 3),
(71, 1, 'What causes tides? The moon (True or False)', 1, 4),
(72, 2, 'The south pole of the magnet and the north pole of another magnet will do what? Stick together or Separate?', 1, 4),
(73, 3, 'What is the force that causes objects to fall to the ground?', 1, 4),
(74, 4, 'A caterpillar changes and grows into a what?', 1, 4),
(75, 1, 'What is H2O also known as?', 2, 4),
(76, 2, 'What gas is in the air we breathe?', 2, 4),
(77, 3, 'What gas do plants breathe in that humans and animals breathe out?', 2, 4),
(78, 4, 'Earth is located in what galaxy? The Milky way (True or False)', 2, 4),
(79, 1, 'What phenomenon might be felt on the surface when two tectonic plates rub against each other?', 3, 4),
(80, 2, 'The hardest naturally occurring mineral is what? Diamond or Emerald?', 3, 4),
(81, 3, 'What is the closest planet to the sun?', 3, 4),
(82, 4, 'The process by which plants eat and make energy is called what?', 3, 4),
(83, 1, 'What is the part of the eye that controls how much light enters?', 4, 4),
(84, 2, 'What planet is nicknamed the “Red Planet?”', 4, 4),
(85, 3, 'Animals that eat only meat are known as...Carnivores or Herbivores?', 4, 4),
(86, 4, 'How long does Earth take to revolve once around the sun? 365 days (True or False)', 4, 4),
(87, 1, 'The Earth is at least how many billion years old? 100 million, 900 million, or 4 billion?', 5, 4),
(88, 2, 'What are the three states of matter? Solid, liquid, and gas (True or False)', 5, 4),
(89, 3, 'The Earth has 4 layers, the thickest of which is the mantle. What is the thinnest layer called? The Surface (True or False)', 5, 4),
(90, 4, 'Animals without backbones are known as what?', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `playerID` int(11) NOT NULL,
  `playerName` varchar(30) NOT NULL,
  `playerScore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`playerID`, `playerName`, `playerScore`) VALUES
(7, 'Hunter', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`questionID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeLevel`),
  ADD KEY `gradeLevel` (`gradeLevel`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionID`,`categoryID`),
  ADD KEY `gradeLevel` (`gradeLevel`,`categoryID`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`playerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `questionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `playerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

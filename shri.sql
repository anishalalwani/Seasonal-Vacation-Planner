-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2016 at 08:54 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shri`
--
CREATE DATABASE IF NOT EXISTS `shri` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shri`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
`booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `departure_date` varchar(50) NOT NULL,
  `return_date` varchar(50) NOT NULL,
  `travellers` int(11) NOT NULL,
  `checkin` varchar(50) NOT NULL,
  `checkout` varchar(50) NOT NULL,
  `flight_class` varchar(50) NOT NULL,
  `rooms` int(11) NOT NULL,
  `train_class` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `user_id`, `source`, `destination`, `departure_date`, `return_date`, `travellers`, `checkin`, `checkout`, `flight_class`, `rooms`, `train_class`) VALUES
(2, 1, 'thane', 'aurangabad', '18/10/2016', '19/10/2016', 3, '19/10/2016', '20/10/2016', 'economy', 3, 'fistAC');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `places` varchar(1000) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `description`, `photo`, `places`) VALUES
(1, 'MUNNAR-KASHMIR OF KERALA', 'Munnar is a town and hill station located in the Idukki district of the southwestern Indian state of Kerala. Munnar is situated at around 1,600 metres (5,200 ft) above sea level, in the Western Ghats range of mountains. The name Munnar is believed to mean "three rivers", referring to its location at the confluence of the Mudhirapuzha, Nallathanni and Kundaly rivers.', 'munnar.png', '- A\r\n- B\r\n- C'),
(2, 'GOA-TOURIST PARADISE AND PEARL OF THE ORIENT', 'Goa is a state in western India with coastlines stretching along the Arabian Sea. Tourism is generally focused on the coastal areas of Goa, with decreased tourist activity inland. In 2010, there were more than two million tourists reported to have visited Goa, about 1.2 million of whom were from abroad. As of 2013 Goa was the destination of choice for Indian and foreign tourists, particularly Britons and Russians, with limited means who wanted to party. Goa also stands 6th in Top 10 Nightlife cities in the world in a National Geographic Book. One of the biggest tourist attractions in Goa is water sports.', 'goap.jpg', 'Kegdole Beach\r\nViceroy''s Arch\r\nBaga Beach\r\nKeri Beach(Querim Beach)\r\nPaliem Beach\r\nSt. Cajetan''s Church\r\nChurch Square'),
(3, 'SHIMLA-QUEEN OF HILLS', 'Shimla is the capital and largest city of the northern Indian state of Himachal Pradesh. Shimla is also a district which is bounded by Mandi and Kullu in the north, Kinnaur in the east, the state of Uttarakhand in the south-east, and Solan and Sirmaur. The colonial architecture and churches, the temples and the natural beauty of the city attract a large number of tourists. Owing to its steep terrain, Shimla hosts the mountain biking race MTB Himalaya, which started in 2005 and is regarded as the biggest event of its kind in South Asia. Shimla also has the largest natural ice skating rink in South Asia.', 'shimlap.jpg', 'Viceregal Lodge\r\nIndian Institute of Advanced Study\r\nJakhu Temple\r\nThe Mall\r\nShimla Christ Church\r\nAnnandale\r\nGreen Valley'),
(4, 'MEGHALAYA', 'Meghalaya is a state in north-east India. The name means "the abode of clouds" in Sanskrit.The capital is Shillong, known as the "Scotland of the East". Meghalaya is compared to Scotland for its highlands, fog and scenery.Meghalaya has some of the thickest primary forests in the country and therefore constitutes one of the most important ecotourism circuits in India.', 'meghalayap.jpg', 'Double Decker Living Root Bridge (Cherrapunjee)\r\nDon Bosco Centre for Indigenous Cultures (Shillong)\r\nUmium Lake (Shillong)\r\nMawsmai Cave (Cherrapunjee)\r\nElephant Falls (Shillong)\r\nRoots Bridges (Mawlynnong)\r\nMawlynnong Waterfall (Mawlynnong)'),
(5, 'MANALI', 'Manali is a hill station nestled in the mountains of the Indian state of Himachal Pradesh near the northern end of the Kullu Valley, at an altitude of 2,050 m (6,726 ft) in the Beas River Valley. It is located in the Kullu district, about 270 km north of the state capital, Shimla. It is a popular tourist destination and serves as the gateway to Lahaul & Spiti district as well as Leh.', 'manalip.jpg', 'Beas River\r\nHidimba Devi Temple\r\nSolang Valley\r\nGulaba\r\nJogini waterfall\r\nManikaran Gurudwara\r\nNaggar Castle'),
(6, 'LADAKH', 'Ladakh is a region in Indian state of Jammu and Kashmir that currently extends from the Kunlun mountain range to the main Great Himalayas to the south, inhabited by people of Indo-Aryan and Tibetan descent.', 'ladakhp.jpg', 'Barren mountains\r\nPanoramic view\r\nPangong Lake\r\nKhardungla Pass\r\nTsomoriri Lake\r\nZanskar and Ladakh Mountain Ranges\r\nSpituk Gompa'),
(7, 'PONDICHERRY', 'Pondicherry or Puducherry is a city, an urban agglomeration and a municipality in Puducherry district in the Indian union territory of Puducherry. Pondicherry is a popular tourist destination in South India. The city has many colonial buildings, churches, temples, and statues which, combined with the systematic town planning and planned French style avenues, still preserve much of the colonial ambiance.', 'pondicherryp.jpg', 'Arulmigu Manakula Vinayagar Temple\r\nSeaside Promenade\r\nParadise Beach\r\nChurch of the Sacred Heart of Jesus\r\nSerenity Beach\r\nImmaculate Conception Cathedral\r\nAuro Beach'),
(8, 'SIKKIM', 'Sikkim is a landlocked state of India, the last to give up its monarchy and fully integrate into India, in 1975. Located in the Himalayan mountains, the state is bordered by Nepal to the west, China''s Tibet Autonomous Region to the north and east, and Bhutan to the east. The Indian state of West Bengal lies to the south.', 'sikkimp.jpg', 'Gurudongmar Lake\r\nBanjhakri Water Falls\r\nGangtok\r\nYuksom\r\nTsomgo Lake\r\nNathula Pass'),
(9, 'DARJEELING', 'Darjeeling is a town and a municipality in the Indian state of West Bengal. It is located in the Lesser Himalaya at an elevation. The two most significant contributors to Darjeeling''s economy are tourism and the tea industry.', 'darjeelingp.jpg', 'Kanchenjunga Mountain\r\nHimalayan Mountaineering Institute\r\nTiger Hill\r\nBatasia Loop\r\nTea Garden\r\nBarbotey Rock Garden'),
(10, 'COORG\r\n', 'Kodagu is an administrative district in Karnataka, India. Before 1956 it was an administratively separate Coorg State, at which point it was merged into an enlarged Mysore State. Kodagu is rated as one of the top hill station destinations in India. Some of the most popular tourist attractions in Kodagu include Talakaveri, Bhagamandala, Nisargadhama, Abbey Falls, Dubare, Nagarahole National Park, Iruppu Falls, and the Tibetan Buddhist Golden Temple.', 'coorgp.jpg', 'Namdroling Monastery (Kushalnagar)\r\nTalakaveri (Bhagamandala)\r\nIruppu Falls\r\nAbbey Falls (Madikeri)\r\nCauvery River'),
(11, 'KANYAKUMARI', 'Kanyakumari formerly known as Cape Comorin, is a town in Kanyakumari District in the state of Tamil Nadu in India. The name comes from the Devi Kanya Kumari Temple in the region. It is the southernmost tip of peninsular India. Kanyakumari town is the southern tip of the Cardamom Hills, an extension of the Western Ghats range.', 'kanyakumarip.jpg', 'Vivekananda Rock Memorial\r\nThiruvalluvar Statue\r\nKanyakumari Beach\r\nThanumalayan temple - Sthanumalayan Kovil\r\nPadmanabhapuram Palace'),
(12, 'COONOOR', 'Coonoor is a Taluk and a municipality in the Nilgiris district in the state of Tamil Nadu, India. It is known for its production of Nilgiri tea. Spread in an area of 12 ha, Sim''s Park has a collection of over 1,000 plant species. The botanical garden is partly developed in the Japanese style and derived its name from J. D. Sim, the secretary of the Madras Club in 1874. The key attraction of the park is the annual fruit and vegetable show held in May.', 'coonoorp.jpg', 'Sim’s Park\r\nDolphin’s Nose\r\nLamb’s Rock\r\nCatherine Falls\r\nLady Canning’s Seat'),
(13, 'SHILLONG', 'Shillong is the capital and hill station of Meghalaya, also known as "The Abode of Clouds", one of the smallest states in India. These are locations in and around Shillong which are tourist spots.\r\n\r\n', 'shillongp.jpg', 'Elephant Falls\r\nLady Hydari Park\r\nUmium Lake\r\nWards Lake\r\nMotphran'),
(14, 'NAINITAL', 'Nainital is a popular hill station in the Indian state of Uttarakhand and headquarters of Nainital district in the Kumaon foothills of the outer Himalayas.\r\n\r\n', 'nainitalp.jpg', 'Nainital Lake\r\nGoddess Naina Devi\r\nMukteshwar Temple\r\nEco Cave Gardens\r\nNaina Peak'),
(15, 'AMRITSAR', 'Amritsar is a city in north-western part in India and the administrative headquarters of the Amritsar district located in the Majha region of the state of Punjab. The main commercial activities of Amritsar include tourism, carpets and fabrics, farm produce, handicrafts, service trades, and light engineering.\r\n\r\n', 'amritsarp.jpg', 'Harmandir Sahib\r\nAkal Takht\r\nJallianwala Bagh\r\nKhalsa College\r\nMaharaja Ranjit Singh Museum'),
(16, 'ASSAM', 'Assam is a state in northeastern India. Located south of the eastern Himalayas, Assam comprises the Brahmaputra Valley and the Barak Valley along with the Karbi Anglong and Dima Hasao districts with an area of 30,285 sq mi. Wildlife, cultural, and historical destinations have attracted visitors.', 'assamp.jpg', 'Rang Ghar\r\nKaziranga National Park\r\nAkashiganga Water Falls\r\nISKCON Guwahati (Guwahati)\r\nRegional Science Center (Guwahati)');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE IF NOT EXISTS `places` (
`place_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `contact`, `email`, `username`, `password`) VALUES
(1, 'Piyush', 'Mantri', 9087968856, 'piyush0311@hotmail.com', 'piyush', 'piyush');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
 ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
 ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

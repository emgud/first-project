-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2020 at 07:09 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `earthlings`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingform`
--

CREATE TABLE `bookingform` (
  `ID` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `peopleNumber` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookingform`
--

INSERT INTO `bookingform` (`ID`, `name`, `surname`, `email`, `phone`, `comment`, `peopleNumber`, `orderDate`, `productID`) VALUES
(2, 'Ona', 'Onute', 'ona@onute.lt', '466343369', 'lorem.... ', 2, '2020-01-24', 561),
(4, 'John', 'Smith', 'john@smith.org', '4693563963', 'lorem lorem lorem', 5, '2020-03-17', 153),
(5, 'John', 'Smith', 'john@smith.org', '4693563963', 'lorem lorem lorem', 5, '2020-03-17', 153),
(6, 'Will', 'Smith', 'john@smith.org', '4693563963', 'lorem lorem lorem', 5, '2020-03-17', 153),
(7, 'Martin', 'Smith', 'john@smith.org', '4693563963', 'lorem lorem lorem', 5, '2020-03-17', 153),
(8, 'John', 'Smith', 'john@smith.org', '4693563963', 'lorem lorem lorem', 5, '2020-03-17', 153),
(9, 'Will', 'Smith', 'john@smith.org', '4693563963', 'lorem lorem lorem', 5, '2020-03-17', 153),
(10, 'Martin', 'Smith', 'john@smith.org', '4693563963', 'lorem lorem lorem', 5, '2020-03-17', 153),
(11, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(12, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 99999),
(13, 'Oliver', 'Benjamin', 'ollie@smith.org', '5899633045', ' lorem lorem lorem ', 1, '2020-02-17', 99999),
(14, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(15, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(16, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(17, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(18, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(19, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(20, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(21, 'Lena', 'Morena', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(22, 'Lena', 'Morena', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(23, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(24, 'John', 'Cena', 'john@cenaorg', '5848365896', ' lorem lorem lorem ', 1, '2020-02-17', 4),
(25, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(26, 'Lola', 'Lolita', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 9),
(27, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(28, 'Antanas', 'Antanaitis', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(29, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4),
(30, 'John', 'Smith', 'john@smith.org', '5848365896', ' lorem lorem lorem ', 3, '2020-02-17', 4);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hikeDate` date NOT NULL,
  `price` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `people` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `productName`, `hikeDate`, `price`, `name`, `surname`, `email`, `phone`, `people`, `comment`) VALUES
(1, 'Cader Idris Loop, Gwynedd, Wales, theUK', '2020-03-14', '$58.99', 'arttyk', 'esrdfhgj', 'aesrdfh@fbngn', '67285402578', 2, 'asfdgfhjg,hgfhfjghwegrhtdmfjgythrwerhjm'),
(2, 'Rifugio Bonatti, Courmayeur, Italy', '2020-03-19', '$95.89', 'Leo', 'Whatever', 'leo@whatever.meh', '02156985232', 5, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna a'),
(3, ' Scrambles Snowdonia, Wales, The UK', '2020-04-10', '$95.69', 'Leo', 'Whatever', 'leo@whatever.meh', '02156985232', 5, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna '),
(4, 'Laugavegur Trail, Iceland', '2020-05-12', '$1649.99', 'Leo', 'Whatever', 'leo@whatever.meh', '02156985232', 5, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim venia.'),
(5, 'Rifugio Bonatti, Courmayeur, Italy', '2020-03-19', '$95.89', 'Leo', 'Whatever', 'leo@whatever.meh', '02156985232', 1, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim venia.');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `map` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `address`, `map`, `email`, `phone`) VALUES
(1, '', '', '', '', '0'),
(2, 'Toronto Office', '4371 Neilson Avenue, <br>\r\nToronto,<br>\r\nOntario,<br>\r\nM1M 1V1<br>', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23096.69964943102!2d-79.38113373466322!3d43.64634874736966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d4cb34d27310bd%3A0xba15d20622070393!2sDowntown%20Toronto%2C%20Toronto%2C%20ON%2C%20Canada!5e0!3m2!1sen!2slt!4v1578844507744!5m2!1sen!2slt', 'torontoearthlings@earthlingsgo.com', '852268496'),
(3, 'London Office', '100 Hyde Park Road,\r\nLondon,\r\nLondon,\r\nthe United Kingdom', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4966.857797172378!2d-0.02548612225808225!3d51.50534691853913!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487602ba7a12992f%3A0x4d821857a5e4a41!2sCanary%20Wharf%2C%20London%2C%20UK!5e0!3m2!1sen!2slt!4v1578656542243!5m2!1sen!2slt\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"', 'ukearthlings@earthlingsgo.com', '0796722588'),
(4, 'Tokyo Office', '361-1057, Hiraishi, \r\nShibuya\r\nTokyo,\r\nJapan', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d51862.5833221329!2d139.65758093191602!3d35.66686943043582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188cb2eb3108d1%3A0xf11cd9b2395b6677!2sShibuya%20City%2C%20Tokyo%2C%20Japan!5e0!3m2!1sen!2slt!4v1578759464617!5m2!1sen!2slt\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"', 'japanearthlings@earthlingsgo.com', '28484699220'),
(5, 'Cape Town Office', '2116  Stanza Bopape St,\r\nPietersburg,\r\nCaoe Town\r\nSouth Africa', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13242.793354250749!2d18.414715181649434!3d-33.92316269025799!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1dcc6763a3ee4fe9%3A0x95516cf23f5ee8f5!2sCape%20Town%20City%20Centre%2C%20Cape%20Town%2C%208000%2C%20South%20Africa!5e0!3m2!1sen!2slt!4v1578757571599!5m2!1sen!2slt\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"', 'africanearthlings@earthlingsgo.com', '0852391160'),
(6, 'Argentina Office', 'Martiniano Leguizamón 1726,\r\nBuenos Aires.\r\nArgentina', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105073.26483387474!2d-58.50333871240231!3d-34.61580373596588!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca688994eb61%3A0xd055df0a7dafa86e!2sParque%20Centenario!5e0!3m2!1sen!2slt!4v1578757837916!5m2!1sen!2slt\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"', 'argentinaearthlings@earthlingsgo.com', '5446863809'),
(7, 'Sydney Office', '87  Brown Street,\r\nNORTH SYDNEY SHOPPINGWORLD,\r\nNew South Wales,\r\nAustralia', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7490.798508046432!2d151.1993270261468!3d-33.86993207207386!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae477e5e1c59%3A0x8e91ad373f75e79!2sKing%20Street%20Wharf!5e0!3m2!1sen!2slt!4v1578758087299!5m2!1sen!2slt\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"', 'australianearthlings@earthlingsgo.com', '0299714380');

-- --------------------------------------------------------

--
-- Table structure for table `hikeoffers`
--

CREATE TABLE `hikeoffers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hikeDate` date NOT NULL,
  `hikeTime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `maxNumber` int(11) NOT NULL,
  `daysNumber` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `length` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `experienceLevel` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `shortDescription` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hikeoffers`
--

INSERT INTO `hikeoffers` (`id`, `name`, `hikeDate`, `hikeTime`, `place`, `maxNumber`, `daysNumber`, `length`, `experienceLevel`, `Description`, `shortDescription`, `price`) VALUES
(1, 'Cader Idris Loop, Gwynedd, Wales, theUK', '2020-03-14', '9:00 am', 'Corris Uchaf', 15, '1', '9.91km', 'Intermediate Hiking Tour', 'Explore parts of the Welsh coastline that many visitors overlook during this half-day excursion which starts in Ogmore-by-sea and includes a stop at Dunraven Bay. Alongside a small group capped at six participants, stroll along the coastal path, enjoying picturesque views and time to stop for snacks along the way, without worrying about the logistics of your arrival and departure.\r\n\r\nAlso included: Snacks & Bottled water', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 58.99),
(2, ' Scrambles Snowdonia, Wales, The UK', '2020-04-10', '9:00 am', 'Moel Siabod Cafe, Betws-Y-Coed, LL24 0EL, UK', 10, '1', '7.6 km', 'Expert Hiking Tour', 'Pushed up and out of the Ocean and shaped by the Ice age, the mountains of Snowdonia provide the perfect Scrambling playground, full of some of the best scrambles in the UK. World Class towering ridge lines and rocky buttresses, and exciting gullies, all accessible in a day. We will select the perfect route to guide you up, or perhaps you have a long held ambition you would like help with. Maybe you\'d like to learn the skills required to scramble independently.\r\n\r\nIncluded: Technical Scrambling equipment, such as harnesses, helmets (If required)\r\n\r\nDeparture time: 9am.', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 95.69),
(3, 'Laugavegur Trail, Iceland', '2020-05-12', '9:00 am', 'Reykjavik Coach Station ', 15, '6', '76km', 'Moderate experience', 'Experience some of the most remote, breathtaking scenery in the world. This tour gives you plenty of opportunity to hike across diverse terrain whilst enjoying the stunning rugged beauty of the Icelandic highlands.\r\nAccommodation: Dormitory style accommodation in rustic mountain huts with shared facilities. You might have to share a bunk with your fellow travellers. The huts are: Hrafntinnusker hut, Álftavatn hut, Emstrur hut and Thorsmork hut.\r\nIncluded: Transportation from our meeting points, English guided service, huts accommodation, meals and luggage transport from hut to hut.\r\n\r\nThe Laugavegur trail is renowned worldwide for its extreme diversity and stark beauty. Starting out in Landmannalaugar, a geothermal rainbow coloured wonderland, it winds through deserts, plains and gorges ending in a lush birch forest in the Thorsmork valley. Dazzling fields of obsidian, red and yellow rhyolite mountains, black sands and sparkling white glaciers attack the senses as you trek towards the stunning south coast of Iceland.\r\n\r\nThe trek itself starts in Landmannalaugar, a geothermal wonderland, known worldwide for its multicolored rhyolite mountains and warm hot springs that locals have enjoyed soaking in throughout the centuries. The scenery is breathtaking, while we make our way to the highlands and throughout the 6-day hike where you will be greeted with fields of obsidian, colorful mountains, black sands, hot springs, geysers, sparkling white glaciers and glacier rivers, elf churches and so much more.\r\n\r\nWhile absorbing all of Iceland’s natural beauty our guides will tell you about these mysterious areas, the landscape, flora, fauna and folklore tales. You will be guided safely through this magical area we call home, stopping at all the right places to make sure you get the absolute best experience of Laugavegurinn as the locals call the trail.', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 1649.99),
(4, 'Rifugio Bonatti, Courmayeur, Italy', '2020-03-19', '9:00 am', 'Omama hotel, Aosta', 25, '1', '11.3 km', 'Moderate difficulty trail', 'Tucked at the foot of the hulking white mass of 15,776-foot (4,809-meter) Mont Blanc, or Monte Bianco as it’s called in Italian, the village of Courmayeur is more laid-back than the extreme-sport-minded French town of Chamonix on the other side. But it has a long history of mountaineering, including the second oldest mountain guide association in the world, the Società delle Guide di Courmayeur, which was established in 1850 and operates an extensive museum of climbing history in town.\r\n\r\nThe valley also boasts one of the best hut systems in the Alps, including the gem of Rifugio Bonatti, named for pioneering Italian mountaineer and photographer Walter Bonatti. With a sweeping view of glaciers and the peaks of the sharp ridge of the 13,806-foot (4,208-meter) Grandes Jorasses, the rifugio is more mountain hotel than hut, serving up Italian delicacies and aperitifs from a full bar. While the hike from town takes in about 2,800 feet (853 meters) of vertical gain, a sip of espresso or fernet, an Italian spirit, at the hut will certainly ease the pain (or you can get a shuttle ride up the valley and cut the hike down to about an hour and 900 vertical feet/274 meters).\r\n', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 95.89),
(5, 'Hooker Valley Track, New Zealand', '2020-06-25', '9:00 am', 'Cook National Park entrance', 20, '1', '4.8km', 'Easy difficulty trail', 'It’s tough to find another hike this short that takes in so much: In just three miles (4.8 kilometers) the Hooker Track serves up rain forest, suspension foot bridges over a rushing river, sweeping views of the island nation’s largest peaks, glaciers, and the milky blue waters of lake. With 12,218-foot (3,724-meter) Mount Cook lording over it, this national park typifies the stark contrasts of the South Pacific, where glaciers climb up steep, heavily forested peaks almost straight from the sea and unhinged storms can close things down at any time.\r\n\r\nBut all you need is an afternoon stroll on the Hooker Track, which begins at the visitor center and ends up at a lake at the foot of the glacier that often holds calved chunks of ice floating on it. In between, it’s a tromp through the strewn boulders of the moraine and open country and stops at viewpoints that give a sense of the massive scope of the Southern Hemisphere’s most impressive set of peaks.\r\n', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 64.89),
(6, 'Hooker Valley Track, New Zealand', '2020-06-25', '9:00 am', 'Cook National Park entrance', 20, '1', '4.8km', 'Easy difficulty trail', 'It’s tough to find another hike this short that takes in so much: In just three miles (4.8 kilometers) the Hooker Track serves up rain forest, suspension foot bridges over a rushing river, sweeping views of the island nation’s largest peaks, glaciers, and the milky blue waters of lake. With 12,218-foot (3,724-meter) Mount Cook lording over it, this national park typifies the stark contrasts of the South Pacific, where glaciers climb up steep, heavily forested peaks almost straight from the sea and unhinged storms can close things down at any time.\r\n\r\nBut all you need is an afternoon stroll on the Hooker Track, which begins at the visitor center and ends up at a lake at the foot of the glacier that often holds calved chunks of ice floating on it. In between, it’s a tromp through the strewn boulders of the moraine and open country and stops at viewpoints that give a sense of the massive scope of the Southern Hemisphere’s most impressive set of peaks.\r\n', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 64.89),
(7, 'Cader Idris Loop, Gwynedd, Wales, theUK', '2020-03-14', '9:00 am', 'Corris Uchaf', 15, '1', '9.91km', 'Intermediate Hiking Tour', 'Explore parts of the Welsh coastline that many visitors overlook during this half-day excursion which starts in Ogmore-by-sea and includes a stop at Dunraven Bay. Alongside a small group capped at six participants, stroll along the coastal path, enjoying picturesque views and time to stop for snacks along the way, without worrying about the logistics of your arrival and departure.\r\n\r\nAlso included: Snacks & Bottled water', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 58.99),
(8, 'Rifugio Bonatti, Courmayeur, Italy', '2020-03-19', '9:00 am', 'Omama hotel, Aosta', 25, '1', '11.3 km', 'Moderate difficulty trail', 'Tucked at the foot of the hulking white mass of 15,776-foot (4,809-meter) Mont Blanc, or Monte Bianco as it’s called in Italian, the village of Courmayeur is more laid-back than the extreme-sport-minded French town of Chamonix on the other side. But it has a long history of mountaineering, including the second oldest mountain guide association in the world, the Società delle Guide di Courmayeur, which was established in 1850 and operates an extensive museum of climbing history in town.\r\n\r\nThe valley also boasts one of the best hut systems in the Alps, including the gem of Rifugio Bonatti, named for pioneering Italian mountaineer and photographer Walter Bonatti. With a sweeping view of glaciers and the peaks of the sharp ridge of the 13,806-foot (4,208-meter) Grandes Jorasses, the rifugio is more mountain hotel than hut, serving up Italian delicacies and aperitifs from a full bar. While the hike from town takes in about 2,800 feet (853 meters) of vertical gain, a sip of espresso or fernet, an Italian spirit, at the hut will certainly ease the pain (or you can get a shuttle ride up the valley and cut the hike down to about an hour and 900 vertical feet/274 meters).\r\n', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 95.89),
(9, ' Scrambles Snowdonia, Wales, The UK', '2020-04-10', '9:00 am', 'Moel Siabod Cafe, Betws-Y-Coed, LL24 0EL, UK', 10, '1', '7.6 km', 'Expert Hiking Tour', 'Pushed up and out of the Ocean and shaped by the Ice age, the mountains of Snowdonia provide the perfect Scrambling playground, full of some of the best scrambles in the UK. World Class towering ridge lines and rocky buttresses, and exciting gullies, all accessible in a day. We will select the perfect route to guide you up, or perhaps you have a long held ambition you would like help with. Maybe you\'d like to learn the skills required to scramble independently.\r\n\r\nIncluded: Technical Scrambling equipment, such as harnesses, helmets (If required)\r\n\r\nDeparture time: 9am.', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 95.69),
(10, 'Rifugio Bonatti, Courmayeur, Italy', '2020-03-19', '9:00 am', 'Omama hotel, Aosta', 25, '1', '11.3 km', 'Moderate difficulty trail', 'Tucked at the foot of the hulking white mass of 15,776-foot (4,809-meter) Mont Blanc, or Monte Bianco as it’s called in Italian, the village of Courmayeur is more laid-back than the extreme-sport-minded French town of Chamonix on the other side. But it has a long history of mountaineering, including the second oldest mountain guide association in the world, the Società delle Guide di Courmayeur, which was established in 1850 and operates an extensive museum of climbing history in town.\r\n\r\nThe valley also boasts one of the best hut systems in the Alps, including the gem of Rifugio Bonatti, named for pioneering Italian mountaineer and photographer Walter Bonatti. With a sweeping view of glaciers and the peaks of the sharp ridge of the 13,806-foot (4,208-meter) Grandes Jorasses, the rifugio is more mountain hotel than hut, serving up Italian delicacies and aperitifs from a full bar. While the hike from town takes in about 2,800 feet (853 meters) of vertical gain, a sip of espresso or fernet, an Italian spirit, at the hut will certainly ease the pain (or you can get a shuttle ride up the valley and cut the hike down to about an hour and 900 vertical feet/274 meters).\r\n', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 95.89),
(11, 'Rifugio Bonatti, Courmayeur, Italy', '2020-03-19', '9:00 am', 'Omama hotel, Aosta', 25, '1', '11.3 km', 'Moderate difficulty trail', 'Tucked at the foot of the hulking white mass of 15,776-foot (4,809-meter) Mont Blanc, or Monte Bianco as it’s called in Italian, the village of Courmayeur is more laid-back than the extreme-sport-minded French town of Chamonix on the other side. But it has a long history of mountaineering, including the second oldest mountain guide association in the world, the Società delle Guide di Courmayeur, which was established in 1850 and operates an extensive museum of climbing history in town.\r\n\r\nThe valley also boasts one of the best hut systems in the Alps, including the gem of Rifugio Bonatti, named for pioneering Italian mountaineer and photographer Walter Bonatti. With a sweeping view of glaciers and the peaks of the sharp ridge of the 13,806-foot (4,208-meter) Grandes Jorasses, the rifugio is more mountain hotel than hut, serving up Italian delicacies and aperitifs from a full bar. While the hike from town takes in about 2,800 feet (853 meters) of vertical gain, a sip of espresso or fernet, an Italian spirit, at the hut will certainly ease the pain (or you can get a shuttle ride up the valley and cut the hike down to about an hour and 900 vertical feet/274 meters).\r\n', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 95.89),
(12, 'Hooker Valley Track, New Zealand', '2020-06-25', '9:00 am', 'Cook National Park entrance', 20, '1', '4.8km', 'Easy difficulty trail', 'It’s tough to find another hike this short that takes in so much: In just three miles (4.8 kilometers) the Hooker Track serves up rain forest, suspension foot bridges over a rushing river, sweeping views of the island nation’s largest peaks, glaciers, and the milky blue waters of lake. With 12,218-foot (3,724-meter) Mount Cook lording over it, this national park typifies the stark contrasts of the South Pacific, where glaciers climb up steep, heavily forested peaks almost straight from the sea and unhinged storms can close things down at any time.\r\n\r\nBut all you need is an afternoon stroll on the Hooker Track, which begins at the visitor center and ends up at a lake at the foot of the glacier that often holds calved chunks of ice floating on it. In between, it’s a tromp through the strewn boulders of the moraine and open country and stops at viewpoints that give a sense of the massive scope of the Southern Hemisphere’s most impressive set of peaks.\r\n', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 64.89),
(13, 'Laugavegur Trail, Iceland', '2020-05-12', '9:00 am', 'Reykjavik Coach Station ', 15, '6', '76km', 'Moderate experience', 'Experience some of the most remote, breathtaking scenery in the world. This tour gives you plenty of opportunity to hike across diverse terrain whilst enjoying the stunning rugged beauty of the Icelandic highlands.\r\nAccommodation: Dormitory style accommodation in rustic mountain huts with shared facilities. You might have to share a bunk with your fellow travellers. The huts are: Hrafntinnusker hut, Álftavatn hut, Emstrur hut and Thorsmork hut.\r\nIncluded: Transportation from our meeting points, English guided service, huts accommodation, meals and luggage transport from hut to hut.\r\n\r\nThe Laugavegur trail is renowned worldwide for its extreme diversity and stark beauty. Starting out in Landmannalaugar, a geothermal rainbow coloured wonderland, it winds through deserts, plains and gorges ending in a lush birch forest in the Thorsmork valley. Dazzling fields of obsidian, red and yellow rhyolite mountains, black sands and sparkling white glaciers attack the senses as you trek towards the stunning south coast of Iceland.\r\n\r\nThe trek itself starts in Landmannalaugar, a geothermal wonderland, known worldwide for its multicolored rhyolite mountains and warm hot springs that locals have enjoyed soaking in throughout the centuries. The scenery is breathtaking, while we make our way to the highlands and throughout the 6-day hike where you will be greeted with fields of obsidian, colorful mountains, black sands, hot springs, geysers, sparkling white glaciers and glacier rivers, elf churches and so much more.\r\n\r\nWhile absorbing all of Iceland’s natural beauty our guides will tell you about these mysterious areas, the landscape, flora, fauna and folklore tales. You will be guided safely through this magical area we call home, stopping at all the right places to make sure you get the absolute best experience of Laugavegurinn as the locals call the trail.', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 1649.99),
(14, 'Hooker Valley Track, New Zealand', '2020-06-25', '9:00 am', 'Cook National Park entrance', 20, '1', '4.8km', 'Easy difficulty trail', 'It’s tough to find another hike this short that takes in so much: In just three miles (4.8 kilometers) the Hooker Track serves up rain forest, suspension foot bridges over a rushing river, sweeping views of the island nation’s largest peaks, glaciers, and the milky blue waters of lake. With 12,218-foot (3,724-meter) Mount Cook lording over it, this national park typifies the stark contrasts of the South Pacific, where glaciers climb up steep, heavily forested peaks almost straight from the sea and unhinged storms can close things down at any time.\r\n\r\nBut all you need is an afternoon stroll on the Hooker Track, which begins at the visitor center and ends up at a lake at the foot of the glacier that often holds calved chunks of ice floating on it. In between, it’s a tromp through the strewn boulders of the moraine and open country and stops at viewpoints that give a sense of the massive scope of the Southern Hemisphere’s most impressive set of peaks.\r\n', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 64.89),
(15, 'Cader Idris Loop, Gwynedd, Wales, theUK', '2020-03-14', '9:00 am', 'Corris Uchaf', 15, '1', '9.91km', 'Intermediate Hiking Tour', 'Explore parts of the Welsh coastline that many visitors overlook during this half-day excursion which starts in Ogmore-by-sea and includes a stop at Dunraven Bay. Alongside a small group capped at six participants, stroll along the coastal path, enjoying picturesque views and time to stop for snacks along the way, without worrying about the logistics of your arrival and departure.\r\n\r\nAlso included: Snacks & Bottled water', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 58.99),
(16, 'Cader Idris Loop, Gwynedd, Wales, theUK', '2020-03-14', '9:00 am', 'Corris Uchaf', 15, '1', '9.91km', 'Intermediate Hiking Tour', 'Explore parts of the Welsh coastline that many visitors overlook during this half-day excursion which starts in Ogmore-by-sea and includes a stop at Dunraven Bay. Alongside a small group capped at six participants, stroll along the coastal path, enjoying picturesque views and time to stop for snacks along the way, without worrying about the logistics of your arrival and departure.\r\n\r\nAlso included: Snacks & Bottled water', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 70.99),
(17, 'somethings something', '2020-05-22', '10:00am', 'Oxford Coach station', 20, '1', '9km', 'no experience needed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse lorem est, ultricies eget justo a, posuere rhoncus libero. Aliquam id luctus felis. Etiam viverra, est eu vestibulum gravida, risus justo convallis diam, quis rutrum odio est sit amet libero. Fusce id velit ac enim laoreet egestas id non augue. Integer a nulla velit. Proin mollis nisl nec interdum condimentum. Nullam malesuada velit sit amet dui mattis lacinia. Sed sagittis velit sit amet odio dignissim, in pretium tellus egestas. Nam malesuada faucibus leo vitae molestie.\r\n\r\nOrci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ac convallis tellus. Vivamus venenatis fringilla tincidunt. Etiam vulputate lorem eros, interdum eleifend lorem tincidunt quis. Aliquam egestas fringilla ligula, at ullamcorper erat posuere condimentum. Nulla semper magna vel libero viverra, vel ornare purus scelerisque. Ut volutpat rutrum posuere. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer dui nulla, vulputate sed libero vestibulum, cursus eleifend sem. Fusce blandit viverra urna eu imperdiet. Curabitur hendrerit luctus ex id interdum. Praesent non augue nec metus volutpat tincidunt. Nam sit amet arcu tincidunt tellus rhoncus rutrum.\r\n\r\nProin erat nisi, bibendum at luctus feugiat, feugiat sed eros. Sed eu mattis mauris. In aliquam sapien aliquam placerat vehicula. Morbi tristique eros ornare, suscipit urna a, eleifend quam. Sed eu lacus non dui condimentum posuere vel quis risus. Duis consequat urna et convallis porttitor. Sed vitae blandit augue.\r\n\r\nPellentesque lorem eros, viverra gravida tincidunt et, faucibus quis nisi. Vivamus porta eget felis eget vehicula. Suspendisse auctor tellus leo, id faucibus tellus condimentum nec. Maecenas et pulvinar tellus, et mattis est. Phasellus turpis sapien, aliquet sit amet ipsum commodo, pretium laoreet nisi. Aliquam scelerisque sollicitudin lorem vel pellentesque. Cras vitae varius urna, tincidunt volutpat sem. Proin convallis sollicitudin tellus, at pharetra ex placerat non. Nullam tincidunt tempus fermentum. Nulla placerat augue nisi, eu facilisis felis tincidunt vel. Vestibulum hendrerit neque vel dolor volutpat imperdiet.\r\n\r\nAenean imperdiet commodo lectus, at interdum ex volutpat sit amet. Morbi eu arcu id magna malesuada mattis ut quis magna. Aenean quis scelerisque mi, non aliquet odio. In lacinia mollis tellus sit amet varius. In sagittis placerat urna, ac mollis nibh mollis vitae. Phasellus sem nisl, maximus at porttitor quis, fringilla id mi. Fusce ornare ipsum id augue maximus volutpat. Ut pharetra sem dolor, sed venenatis tortor consequat in. Aenean pellentesque metus vitae leo pretium volutpat. Suspendisse sit amet metus non quam facilisis vehicula ac eget tellus.', 'Aenean imperdiet commodo lectus, at interdum ex volutpat sit amet. Morbi eu arcu id magna malesuada mattis ut quis magna.', 20.99),
(18, 'Hooker Valley Track, New Zealand', '2020-06-25', '9:00 am', 'Cook National Park entrance', 20, '1', '4.8km', 'Easy difficulty trail', 'It’s tough to find another hike this short that takes in so much: In just three miles (4.8 kilometers) the Hooker Track serves up rain forest, suspension foot bridges over a rushing river, sweeping views of the island nation’s largest peaks, glaciers, and the milky blue waters of lake. With 12,218-foot (3,724-meter) Mount Cook lording over it, this national park typifies the stark contrasts of the South Pacific, where glaciers climb up steep, heavily forested peaks almost straight from the sea and unhinged storms can close things down at any time.\r\n\r\nBut all you need is an afternoon stroll on the Hooker Track, which begins at the visitor center and ends up at a lake at the foot of the glacier that often holds calved chunks of ice floating on it. In between, it’s a tromp through the strewn boulders of the moraine and open country and stops at viewpoints that give a sense of the massive scope of the Southern Hemisphere’s most impressive set of peaks.\r\n', 'vaporware craft beer actually celiac, cred man bun brunch. Kombucha deep v fingerstache, skateboard blog normcore brooklyn selfies pabst kickstarter pork belly. Swag schlitz health goth jean shorts shoreditch kinfolk.', 64.89);

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id`, `name`) VALUES
(1, 'europe-1.jpg'),
(2, 'europe-2.jpg'),
(3, 'europe-3.jpg'),
(4, 'europe-4.jpg'),
(5, 'europe-5.jpg'),
(6, 'europe-6.jpg'),
(7, 'europe-7.jpg'),
(8, 'europe-8.jpg'),
(9, 'europe-9.jpg'),
(10, 'europe-10.jpg'),
(11, 'europe-11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'adminadmin', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`) VALUES
(1, 'John', 'john@smith.com', 'lorem lorem lorem'),
(2, 'Carl', 'carl@carl.com', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?'),
(3, 'Liam', 'liam@liam.com', 'Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can. Spirit her entire her called. '),
(4, 'Lola', 'lola@gmail.com', 'lorem lorem lorem ..... lorem lorem lorem....'),
(5, 'Alina', 'alina@lina.lt', 'beopbmepe wji ;wf h; hfowe fj  '),
(6, 'Rasa', 'rasa@a.lt', 'lorem lorem lorem lorem lorem lorem lorem  '),
(7, '', '', ' '),
(8, 'Sonata', 'sone@a.lt', 'lorem lorem lorem lorem lorem lore omre lomre  '),
(9, 'Jovaisa', 'jo@vaisa.lt', 'lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem  '),
(10, 'Juozas', 'juozas@a.lt', ' Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.'),
(11, 'Tomas', 'tom@as.lt', 'tom tom tom tom tom tom tom tom tomt om '),
(12, 'Lukas', 'luk@as.lt', 'cia yra zinute '),
(13, 'Jolga', '', ' '),
(14, 'svs', 'sdw@a.lt', 'sdbwb'),
(15, 'bf', 'b@b.vv', 'dggr'),
(16, 'Jolanda', 'jolge@a.lt', 'lorem lorem lorem lorem '),
(17, 'Jolanda', 'jolge@aa.aa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '),
(18, 'Jolanda', 'jolge@aa.aa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(19, '', '', ''),
(20, '', '', ''),
(21, '', '', ''),
(22, '', '', ''),
(23, '', '', ''),
(24, '', '', ''),
(25, '', '', ''),
(26, '', '', ''),
(27, '', '', ''),
(28, '', '', ''),
(29, '', '', ''),
(30, '', '', ''),
(31, '', '', ''),
(32, '', '', ''),
(33, '', '', ''),
(34, '', '', ''),
(35, '', '', ''),
(36, '', '', ''),
(37, '', '', ''),
(38, '', '', ''),
(39, '', '', ''),
(40, '', '', ''),
(41, '', '', ''),
(42, '', '', ''),
(43, '', '', ''),
(44, '', '', ''),
(45, '', '', ''),
(46, '', '', ''),
(47, '', '', ''),
(48, '', '', ''),
(49, '', '', ''),
(50, '', '', ''),
(51, '', '', ''),
(52, '', '', ''),
(53, '', '', ''),
(54, '', '', ''),
(55, '', '', ''),
(56, '', '', ''),
(57, '', '', ''),
(58, '', '', ''),
(59, '', '', ''),
(60, '', '', ''),
(62, '', '', ''),
(63, '', '', ''),
(65, '', '', ''),
(66, '', '', ''),
(67, '', '', ''),
(68, '', '', ''),
(69, '', '', ''),
(70, '', '', ''),
(71, '', '', ''),
(72, '', '', ''),
(73, '', '', ''),
(74, '', '', ''),
(75, '', '', ''),
(76, '', '', ''),
(77, '', '', ''),
(78, '', '', ''),
(79, '', '', ''),
(80, '', '', ''),
(81, '', '', ''),
(82, '', '', ''),
(83, '', '', ''),
(84, '', '', ''),
(85, '', '', ''),
(86, '', '', ''),
(87, '', '', ''),
(88, '', '', ''),
(89, '', '', ''),
(90, '', '', ''),
(91, '', '', ''),
(92, '', '', ''),
(96, '', '', ''),
(99, 'Joland', 'jolge@aa.aa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(100, 'Povilas', 'jolge@aa.aa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(101, 'Jolanda', 'jolge@aa.aa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(102, 'Jorgen', 'jolge@aa.aa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `productimg`
--

CREATE TABLE `productimg` (
  `id` int(11) NOT NULL,
  `img` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `altText` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productimg`
--

INSERT INTO `productimg` (`id`, `img`, `altText`, `productID`) VALUES
(1, '1.jpg', 'travel', 1),
(2, '2.jpg', 'hike', 2),
(3, '3.jpg', 'landscape', 3),
(4, '4.jpg', 'landscape', 4),
(5, '5.jpg', 'belekas', 5),
(6, '6.jpg', 'belekas', 6),
(7, '6.jpg', 'belekas', 6),
(8, '7.jpg', 'belekas', 7),
(9, '8.jpg', 'belekas', 8),
(10, '9.jpg', 'belekas', 9),
(11, '10.jpg', 'belekas', 10),
(12, '11.jpg', 'belekas', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingform`
--
ALTER TABLE `bookingform`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hikeoffers`
--
ALTER TABLE `hikeoffers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimg`
--
ALTER TABLE `productimg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingform`
--
ALTER TABLE `bookingform`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hikeoffers`
--
ALTER TABLE `hikeoffers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `productimg`
--
ALTER TABLE `productimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 12, 2019 at 07:17 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourist`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `hlocation` varchar(200) NOT NULL,
  `hpricerange` varchar(200) NOT NULL,
  `htype` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hid`, `name`, `hlocation`, `hpricerange`, `htype`, `email`) VALUES
(123, 'Miti Mingi Eco Camp', 'North Rift', 'Low (Below 75 USD)', 'Camp', ''),
(124, 'Leinmach Guest House', 'Coast', 'Mid (76-135 USD)', 'Guest House', ''),
(125, 'Larsens Camp', 'Eastern', 'Premium (Above 300 USD)', 'Camp', ''),
(126, 'Mara Timbo Camp', 'South Rift', 'Premium (Above 300 USD)', 'Camp', ''),
(127, 'Ndololo Safari Camp', 'Coast', 'High (136-300 USD)', 'Camp', ''),
(128, 'Crocodile Camp', 'South Rift', 'Low (Below 75 USD)', 'Camp', ''),
(129, 'Three Steers Hotel', 'Mt. Kenya', 'Low (Below 75 USD)', 'Town Hotel', ''),
(130, 'Ngobit River Lodge', 'Mt. Kenya', 'High (136-300 USD)', 'Lodge', ''),
(131, 'White Gates Country Home', 'Mt. Kenya', 'Mid (76-135 USD)', 'Guest House', ''),
(132, 'Amani Tiwi Beach Resort', 'Coast', 'High(136-300 USD)', 'Resort hotel', ''),
(133, 'Garoda Resort', 'Coast', 'High(136-300 USD)', 'Resort hotel', ''),
(134, 'Simba-Oryx Cottages', 'Coast', 'Low (Below 75 USD)', 'resort hotel', ''),
(135, 'The little coconut Village', 'Coast', 'Mid (76-135 USD)', 'resort hotel', ''),
(136, 'Sarova Tiaita hills Game Lodge', 'Coast', '(136-300 USD)', 'lodge', ''),
(137, 'Baobab beach resort and spa', 'Coast', 'High (136-300 USD)', 'resort hotel', ''),
(138, 'Bofa beach resort', 'Coast', 'Mid (76-135 USD)', 'resort hotel', ''),
(139, 'Darajani Hotel', 'Coast', 'High (136-300 USD)', 'Town Hotel', ''),
(140, 'Bamburi beach Hotel', 'Coast', 'High (136-300 USD)', 'resort hotel', ''),
(141, 'The Villa Luxury Suites Diani', 'Coast', 'High (136-300 USD)', 'resort hotel', ''),
(142, 'Mara Bush Camp', 'SouthRift', 'Premium (Above 300 USD)', 'Camp', ''),
(143, 'Crater Lake Camp', 'SouthRift', 'High (136-300 USD)', 'camp', ''),
(144, 'Lewa Safari Camp', 'North Rift', 'High (136-300 USD)', 'Camp', ''),
(145, 'leleshwa Camp', 'SouthRift', 'High (136-300 USD)', 'camp', ''),
(146, 'kilaguni serena safari lodge', 'Eastern', 'High (136-300 USD)', 'lodge', ''),
(147, 'Saruni Samburu', 'Esatern', 'High (136-300 USD)', 'Lodge', ''),
(148, 'Leopard Rock Lodge', 'Eastern', 'Premium (Above 300 USD)', 'Lodge', ''),
(149, 'impala safari lodge', 'eastern', 'High (136-300 USD)', 'lodge', ''),
(150, 'impala Ecolodge', 'western', 'High (136-300 USD)', 'lodge', ''),
(151, 'Kisindi lodge and Spa', 'western', 'High (136-300 USD)', 'lodge', ''),
(152, 'Rusinga Island Lodge', 'western', 'High (136-300 USD)', 'lodge', ''),
(153, 'Osoita Lodge', 'Nairobi', 'Mid (76-135 USD)', 'lodge', ''),
(154, 'Masai Lodge', 'Nairobi', 'High (136-300 USD)', 'lodge', ''),
(155, 'Chak Guest House and Conference Center', 'Nairobi', 'Low (Below 75 USD)', 'lodge', ''),
(156, 'Kamau and sons', 'Nairobi', 'Low (Below 75 USD)', 'lodge', ''),
(157, 'Osilalei Safari Lodge', 'SouthRift', 'Mid (76-135 USD)', 'lodge', ''),
(158, 'Mara River  Lodge', 'SouthRift', 'High (136-300 USD)', 'lodge', ''),
(159, 'Mt. Longonot Lodge', 'South rift', 'High (136-300 USD)', 'lodge', '');

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `tid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`tid`, `name`, `email`, `rid`) VALUES
(1, 'Adventure Africa', 'adventure@africa.com', 1),
(2, 'Singh Travels', 'adventure@singht.com', 2),
(3, 'Red Noose', 'info@rednoose.com', 3),
(4, 'Kenya Around', 'info@kenyaaround.com', 3),
(5, 'Wing Factor it', 'adventure@wingf.com', 4),
(6, 'Equaira', 'adventure@equaria.com', 4),
(7, 'Code Alert', 'adventure@codea.com', 5),
(8, 'Bonfire Amazing', 'adventure@bonfireamazing.com', 6),
(9, 'Kenyan Traveller', 'adventure@kenyantraveller.com', 1),
(10, 'Adventure Time', 'adventure@adventuretime.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `regionid` int(11) NOT NULL,
  `regionname` varchar(100) NOT NULL,
  `sc` varchar(100) NOT NULL,
  `airports` varchar(100) NOT NULL,
  `rtype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`regionid`, `regionname`, `sc`, `airports`, `rtype`) VALUES
(1, 'Coast', 'Yes', 'Yes', 'Hot and Wet'),
(2, 'Mt. Kenya', 'Yes', 'Yes', 'Cool and Wet'),
(3, 'Nairobi', 'Yes', 'Yes', 'Warm and Wet'),
(4, 'North Rift', 'No', 'No', 'Hot and Dry'),
(5, 'South Rift', 'Yes', 'Yes', 'Cool and Wet'),
(6, 'Western', 'Yes', 'Yes', 'Hot and Wet'),
(7, 'Eastern', 'Yes', 'Yes', 'Very Hot and Very Dry');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `sid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `tag1` int(11) NOT NULL DEFAULT '66',
  `tag2` int(11) DEFAULT '66',
  `tag3` int(11) DEFAULT '66',
  `tag4` int(11) DEFAULT '66',
  `tag5` int(11) DEFAULT '66',
  `cost` int(11) NOT NULL,
  `childfriendly` int(11) NOT NULL,
  `img` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`sid`, `name`, `description`, `rid`, `tag1`, `tag2`, `tag3`, `tag4`, `tag5`, `cost`, `childfriendly`, `img`) VALUES
(15, 'David Sheldrick Wildlife Trust\r\n', 'This non-profit venture was established in 1977 after the death of founder, David Sheldrick who served as anti-poaching warden at the Tsavo National Park. The centre is home to orphaned rhinos and elephants that are cared for and reintroduced back to the wild.', 3, 9, 66, 66, 66, 66, 800, 1, NULL),
(16, 'Crescent Island Game Sanctuary', 'This is one of the most beautiful sanctuaries in Kenya and Naivashas best kept secret. It is private, secure and patrolled by guides who can accompany anyone who wishes for a guided tour. The shores host abundant wildlife including wildebeest, waterbuck, zebra and gazelle and hippos.', 5, 10, 66, 66, 66, 66, 9000, 1, NULL),
(17, 'Elsamere Nature Reserve', 'Once a retirement home for the Adamsons, Elsamere remains unique as its both a game reserve and a museum. Here, history connects with the future as conservation is the main objective. It rekindles the memories of Born Free by watching the documentary, The Joy Adamson Story, and visiting the museum.', 5, 10, 13, 40, 66, 66, 1000, 1, NULL),
(18, 'Active Edge, Kerio View', 'Active Edge organizes paragliding events in Kerio with Kerio view hotel. This is a world-class Paragliding site and the most relaxing places to fly. It is where many pilots have completed massive out and return flights in a combination of ridge and thermal lift.', 4, 46, 66, 66, 66, 66, 5000, 1, NULL),
(19, 'Nairobi Orphanage', 'This sanctuary was opened for the purposes of hosting a collection of orphaned, hurt, or abandoned wild animals from all over the country. In doing so, it has made enormous contribution to conservation in Kenya. Interesting activities here include opportunity for animal adoption, bird watching and tree identification.', 3, 9, 11, 66, 66, 66, 500, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `name` varchar(70) NOT NULL,
  `description` varchar(282) NOT NULL,
  `region` varchar(10) DEFAULT NULL,
  `tag` varchar(20) NOT NULL,
  `childfriendly` varchar(3) NOT NULL,
  `img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`name`, `description`, `region`, `tag`, `childfriendly`, `img`) VALUES
(' Siyu Fort', 'Siyu is the only town that built a fort without foreign assistance. The fort was constructed by residents in the mid 19th century to safeguard the town from the Omani Arabs attacks. It is surrounded by thick mangrove and coconut forests, which give the fort a scenic view.', 'coast', 'Historic Sites', 'yes', 'https://media-cdn.tripadvisor.com/media/photo-o/01/cb/3b/db/provided-by-museums-of.jpg'),
('Arabuko Sokoke Forest reserve', 'North of Mombasa is the coastal forest of Arabuko Sokoke. This fascinating forest wilderness is nestled beside the beaches of Watamu, just minutes from the waters of the Indian Ocean.But enter the forest and discover a world apart from the beaches and reefs. In this 400 sq km reser', 'Coast', 'Wildlife', 'yes', 'http://www.kenyaforestservice.org/aboutus/images/stories/mida%20creek%20boardwalk%20near%20arabuko-sokoke%20forest.jpg'),
('Boni National Reserve', 'This reserve sits in an indigenous open canopy forest which is part of the Northern Zanzibar-Inhambane coastal forest mosaic. It was gazzetted as a dry season sanctuary for elephants and features a rich forest reserve hosting elephants, buffalo, giraffe, topi, gerenuk, Harvey,s and', 'coast', 'Wildlife', 'yes', 'https://www.explore254.com/wp-content/sabai/File/files/l_493cd01f5ebfb9a7d06e2f2befc05594.jpg'),
('Central islands national park', 'Also known as \"Crocodile Island\", this volcanic island is located in the middle of Lake Turkana. It contains more than a dozen craters and cones, three of which are filled by small lakes. Several small islands to the southeast represent partially submerged crater rims.', 'Nothern', 'Wildlife', 'yes', 'http://www.kws.go.ke/sites/default/files/styles/park_node_style/public/Central-Island.jpg?itok=Fb5z2nkq'),
('Chagaik Arboretum', 'This is an enclave of tropical jungle, formed by lush green grass and a variety of indigenous tree species, surrounded by orderly tea plantations. It has a small dam located at the bottom of the valley and a very reliable spot for Colobus monkeys, insects, and forest birds.', 'South Rift', 'Scenery & Landscapes', 'yes', 'https://www.businessdailyafrica.com/image/view/-/4035240/medRes/1714311/-/maxw/960/-/mcwky6z/-/chagik.jpg'),
('Changaik- Arboretum', 'This is an enclave of tropical jungle, formed by lush green grass and a variety of indigenous tree species, surrounded by orderly tea plantations. It has a small dam located at the bottom of the valley and a very reliable spot for Colobus monkeys, insects, and forest birds.', 'South Rift', 'Scenery & Landscapes', 'yes', 'https://www.businessdailyafrica.com/image/view/-/4035240/medRes/1714311/-/maxw/960/-/mcwky6z/-/chagik.jpg'),
('chyulu hills National park', 'This is a landscape of black frozen lava studded with blazing red-hot poker trees and shoals of extinct volcanoes. The park has breathtaking views from the Chyulu Hills. Main attractions include buffalo, elephants and bushbucks as well as reptiles such as black mamba, puff adder an', 'Eastern', 'Wildlife', 'yes', 'http://www.kws.go.ke/sites/default/files/styles/park_node_style/public/Chyulu-Hills.jpg?itok=i4ng7Zyc'),
('David Sheldrick Wildlife Trust', 'This non-profit venture was established in 1977 after the death of founder, David Sheldrick who served as anti-poaching warden at the Tsavo National Park. The centre is home to orphaned rhinos and elephants that are cared for and reintroduced back to the wild.', 'Nairobi', 'Wildlife', 'yes', 'https://i1.wp.com/www.safari254.com/wp-content/uploads/2013/07/David_Sheldrick_feeding_close_clutch.jpg?zoom=2&resize=750%2C375&ssl=1'),
('Dondori National reserve', 'The Dodori National Reserve is managed by Kenya Wildlife Service and is part of a larger area that has been recognized globally as an important cultural heritage area and a prized conservation site by international organizations such as the IUCN, Conservation International, World W', 'Coast', 'Wildlife', 'yes', 'https://informationcradle.com/kenya/wp-content/uploads/2015/04/Dodori-National-Reserve.jpg'),
('Eliye Springs', 'Also known as Ille Springs, this is a beautiful site with a unique beach located in a remote village on the Western side of Lake Turkana. It produces lush vegetation along its section of the otherwise barren lakeshore, and supports a community of about 5000 people with fresh drinki', 'North Rift', 'Scenery and Landscap', 'yes', 'https://cdn-travel.jumia.com/web_hotel_detail_gallery/eliye-springs-resort-lake-turkana-1441-c916c13f58aa0ee4f5bf13e3a640d9158436267a.jpeg'),
('Kamburu Dam', 'This dam is the result of a man-made lake, with Tana river as its water source. It is one of the oldest dams in the counry and hosts the 2nd major power station in independent Kenya after Kindaruma station. The also dam supports marine life for fish, hippos and crocodiles.', 'Mt.Kenya', 'Scenery & Landscapes', 'yes', 'https://informationcradle.com/kenya/wp-content/uploads/2015/04/Kamburu-Dam.jpg'),
('Lake Nakuru National Parks', 'This parks ecosystem is comprised of the lake and the mainly wooded and bushy grasslands that surround it. It provides for about 56 different species of mammals including the white rhino and buffaloes. There are also nearly 450 bird species to be found in the park.', 'South Rift', 'Scenery & Landscapes', 'yes', 'https://d1ljaggyrdca1l.cloudfront.net/wp-content/uploads/2017/03/Nairobi-to-Lake-Nakuru-Naitional-Park-Excursion-1600x900.jpg'),
('Maasai Ostrich Farm', 'The Ostrich Farm in Nairobi is a great place where you can get up close and personal with ostriches. The farm sits on 200 acres of land and there is a bit more to do at the Ostrich Farm than just ride an Ostrich.', 'Nairobi', 'Wildlife ', 'yes', 'https://www.nation.co.ke/image/view/-/4124262/highRes/1770702/-/maxw/600/-/1jreej/-/omain.jpg'),
('Menengai Crater', 'This is an extinct volcano standing at 2490 meters high. It is the 2nd largest volcanic crater in the world with a surface area of 90 square kilometers. Local people believed that this crater has caves that host devils on motor bikes. However, its flanks are occupied by productive ', 'Western', 'Scenery & Landscapes', 'yes', 'http://www.magicalkenya.com/wp-content/uploads/2014/11/menengaicraterimg2.jpg'),
('Mfangano Rusinga Island Complex', 'This complex is surrounded by expansive beaches and is home to monitor lizards, hippos, and over 100 species of birds. Rusinga is the final resting place of the late Tom Mboya, a famous politician who was assassinated in 1969. It is also rich in fossils, including a Proconsul skull', 'Western', 'Historic Sites', 'yes', 'https://informationcradle.com/kenya/wp-content/uploads/2015/04/The-Mfangano-Rusinga-Island-Complex.jpg'),
('Nairobi arboretum', 'Nairobi Arboretum occupies 30.4 hectares and is situated 3 km from the city centre. It was established in 1907 by Mr. Battiscombe, Deputy Conservator of forests mainly as a site for exotic tree species trials. This was because foresters in Kenya had become concerned that indigenous', 'Nairobi', 'Historic Sites', 'yes', 'https://media-cdn.tripadvisor.com/media/photo-s/15/d2/b9/84/photo6jpg.jpg'),
('Ndere Island National Park', 'Ndere means \"meeting place\" in the local Luo language. The park has a superb environment of serenity and fresh air, courtesy of the surrounding waters of Lake Victoria. Wildlife includes De Brazzas monkeys, Olive baboons, Sitatunga antelopes, hippos, impalas, Monitor lizards, and v', 'Western', 'Wildlife', 'yes', 'http://www.kws.go.ke/sites/default/files/styles/park_node_style/public/Ndere.jpg?itok=PCnQtZ0F'),
('Paradise Lost', 'This is a large park land offering ancient caves, water fall, boating lake, an ostrich farm as well as Pony and Carmel rides. Just 20 minutes to the city of Nairobi, the caves here were used as hiding places for Mau Mau freedom fighters as hideout from the colonial masters.', 'Nairobi', 'Scenery & Landscapes', 'yes', 'https://i2.wp.com/mwarv.click.co.ke/wp-content/uploads/2016/08/Paradise_Lost_Kiambu_by_Mwangi_Kirubi-4.jpg?fit=700%2C467'),
('Saboti-sosio forest', 'It is located between 2000 and 3000 metres above sea level and on the slopes of Mount Elgon. The natural landscape of this area is thick tropical forest. This forest has been cleared in some areas to provide much needed farmland for the local people.', 'western', 'Scenery & Landscapes', 'yes', 'https://informationcradle.com/travel/wp-content/uploads/2015/04/Saboti-Sosio-Forest1.jpg'),
('Shimba Hills', 'As one of the largest coastal forests in East Africa after Arabuko-Sokoke Forest, this reserve is rich in flora and fauna and hosts the highest density of African elephant in Kenya. Other animal species found in the area are Sable antelope, elephant shrew, bushy tailed mongoose and', 'Coast', 'Scenery & Landscapes', 'yes', 'http://www.kws.go.ke/sites/default/files/styles/park_node_style/public/sheldrick%20falls_0.jpg?itok=_ky64g_K'),
('Simbi Nyaima Lake', 'Simbi Nyaima in the local Luo language means he village that sank. It is actually a crater lake in which the community attach great importance because of the legendary story surrounding it. Visit and listen to the heart rending story of the woman who visited this village looking fo', 'Western', 'Culture', 'yes', 'http://www.kws.go.ke/sites/default/files/styles/park_node_style/public/Flamingoes%20in%20lake%20simbi%20in%202006_0.jpg?itok=gbnippGD'),
('Starwood garden', 'Starwood garden offers very affordable accommodation to guests touring Kirinyaga region. In addition to the elegant rooms within Hotel Starwood Kerugoya, the hotel also has a large and spectacularly manicured garden. This garden is more than ideal for hosting conferences, parties a', 'Mt.Kenya', 'Scenery & Landscapes', 'yes', 'https://i1.wp.com/starwoodhotelskenya.com/wp-content/uploads/2017/09/starwoodgarden.jpg?fit=2560%2C1536'),
('Tana river primate reserve', 'The reserve was established to protect the Tana riverine forest and the two endangered primates: mangabeys and the red colobus monkeys. The ecosystem is also a stronghold for birdlife with over 200 species recorded here. The predominant ecosystems of the reserve are riparian forest', 'Coast', 'Wildlife', 'yes', 'http://www.mightytours.co.ke/data/frontImages/tours/tours_image/1364213035_150111170756--tana_river.jpg'),
('Tsavo East National Park', 'One of the largest parks in the country, Tsavo East offers vast and untapped areas of arid bush punctuated by the azure and emerald meandering of river Galana. It is guarded by the limitless lava reaches of Yatta Plateau and patrolled by some of the largest elephant herds in Kenya.', 'Coast', 'Wildlife', 'yes', 'https://d3hne3c382ip58.cloudfront.net/resized/373x212/3-days-mombasa-to-tsavo-east-and-tsavo-west-tour-2-4358_1510029029.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tagid` int(11) NOT NULL,
  `tagtype` varchar(100) NOT NULL,
  `tagname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tagid`, `tagtype`, `tagname`) VALUES
(1, 'Beach and Marine', 'Boating'),
(2, 'Beach and Marine', 'Beach'),
(3, 'Beach and Marine', 'Coral Reef'),
(4, 'Beach and Marine', 'Diving'),
(5, 'Beach and Marine', 'Fishing'),
(6, 'Beach and Marine', 'Marina'),
(7, 'Beach and Marine', 'Marine park'),
(8, 'Beach and Marine', 'Snorkeling'),
(9, 'Wildlife', ' Animal Orphanage'),
(10, 'Wildlife', ' Animal Santuary'),
(11, 'Wildlife', 'Birding Site'),
(12, 'Wildlife', ' Butterfly Site'),
(13, 'Wildlife', ' Game Reserve'),
(14, 'Wildlife', ' National Park'),
(15, 'Wildlife', ' National Reserve'),
(16, 'Wildlife', ' Wildlife Conservancy'),
(17, 'Scenery and Landscapes', 'Botanical Gardens'),
(18, 'Scenery and Landscapes', 'Caves'),
(19, 'Scenery and Landscapes', 'Crater'),
(20, 'Scenery and Landscapes', 'Farm or Plantation'),
(21, 'Scenery and Landscapes', 'Forest'),
(22, 'Scenery and Landscapes', 'Lake or River'),
(23, 'Scenery and Landscapes', 'Mountain'),
(24, 'Scenery and Landscapes', 'Natural Springs'),
(25, 'Scenery and Landscapes', 'Rock Formation'),
(26, 'Scenery and Landscapes', 'Rock Painting'),
(27, 'Scenery and Landscapes', 'Swamp'),
(28, 'Scenery and Landscapes', 'Volcano'),
(29, 'Scenery and Landscapes', 'Waterfalls'),
(30, 'Culture', 'Art Gallery'),
(31, 'Culture', 'Community Tourism'),
(32, 'Culture', 'Cultural Centre'),
(33, 'Culture', 'Cultural Museum'),
(34, 'Culture', 'Market'),
(35, 'Culture', 'Mosque'),
(36, 'Culture', 'Shrine'),
(37, 'Culture', 'Temple'),
(38, 'Historic Sites', 'Archaeological site'),
(39, 'Historic Sites', 'Fort'),
(40, 'Historic Sites', 'Historical Museum'),
(41, 'Historic Sites', 'Monument'),
(42, 'Historic Sites', 'Ruins'),
(43, 'Adventure', 'Boating'),
(44, 'Adventure', 'Mountain Biking'),
(45, 'Adventure', 'Mountain Climbing'),
(46, 'Adventure', 'Paragliding'),
(47, 'Adventure', 'Rafting'),
(48, 'Adventure', 'Scuba diving'),
(49, 'Adventure', 'Trekking'),
(50, 'Sports', 'Athletics'),
(51, 'Sports', 'Boating'),
(52, 'Sports', 'Cricket'),
(53, 'Sports', 'Fishing'),
(54, 'Sports', 'Football'),
(55, 'Sports', 'Golf'),
(56, 'Sports', 'Rugby'),
(57, 'Sports', 'Surfing'),
(58, 'Sports', 'Tennis'),
(59, 'Special Interest', 'Camel Ride'),
(60, 'Special Interest', 'Convention Center'),
(61, 'Special Interest', 'Education'),
(62, 'Special Interest', 'Educational Tourism'),
(63, 'Special Interest', 'Farm and Plantation'),
(64, 'Special Interest', 'Health and Wellness'),
(65, 'Special Interest', 'Special Event'),
(66, '', ''),
(67, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `no_of_people` int(11) NOT NULL,
  `budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`regionid`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tagid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `regionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tagid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

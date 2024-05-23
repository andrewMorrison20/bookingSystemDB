-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 11:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_facilities_available`
--

CREATE TABLE `accommodation_facilities_available` (
  `accomodation_facilities_available_id` int(11) NOT NULL,
  `accomodation_facilities_id` int(11) NOT NULL,
  `accomodation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_facilities_available`
--

INSERT INTO `accommodation_facilities_available` (`accomodation_facilities_available_id`, `accomodation_facilities_id`, `accomodation_id`) VALUES
(1, 5, 1),
(2, 5, 2),
(3, 6, 1),
(4, 3, 1),
(5, 6, 6),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `accomodation`
--

CREATE TABLE `accomodation` (
  `accomdation_id` int(11) NOT NULL,
  `accomodation_name` varchar(255) NOT NULL,
  `accomodation_type_id` int(11) NOT NULL,
  `commercial_address_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `star_rating_id` int(11) NOT NULL,
  `preferred_currency_id` int(11) NOT NULL,
  `accomodation_description` text NOT NULL,
  `langauge_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomodation`
--

INSERT INTO `accomodation` (`accomdation_id`, `accomodation_name`, `accomodation_type_id`, `commercial_address_id`, `brand_id`, `star_rating_id`, `preferred_currency_id`, `accomodation_description`, `langauge_id`) VALUES
(1, 'Hilton London Wembley', 5, 1, 2, 5, 1, 'Set next to the iconic Wembley Stadium and set next to the historic Wembley Arena, the hotel is also located adjacent to the London Designer Outlet.\n\nAll rooms at the Hilton London Wembley feature en-suite facilities and a flat-screen TV. For extra convenience, each Hilton room also includes a seating area and a work desk.\n\nThe Sky Bar 9 features a roof terrace, while the Icons Bar is inspired by stars who have played at Wembley Stadium and Arena. The Association Restaurant offers great value British cuisine.\n\nFitness facilities include an indoor pool, sauna and steam room. There is a 24-hour business centre complete with contemporary equipment. WiFi is available in public areas. Parking spaces are available at the adjacent Gold Car Park and guests benefit from discounted rates.\n\nThe hotel is located next to Wembley Park tube station (Jubilee line and Metropolitan line) and Wembley Stadium railway station. Reach Central London in just 12 minutes from Wembley Park tube station.\n\nFamilies particularly like the location — they rated it 9.3 for a stay with kids.\n\nHotel chain/brand:\nHilton Hotels & Resorts', 1),
(2, 'Hawkwood Apartments', 3, 2, 3, 4, 1, 'Set in London, 4.1 km from Tottenham Hale and 4.4 km from Victoria Park, Hawkwood Apartments offers accommodation with free WiFi and access to a garden.\r\n\r\nFeaturing a kitchen with an oven and a microwave, each unit also comes with a satellite flat-screen TV, ironing facilities, desk and a seating area with a sofa. A toaster, a fridge and kitchenware are also offered, as well as a kettle.\r\n\r\nEmirates Stadium is 5.8 km from the apartment, while Wood Green Metro Station is 7.1 km from the property. The nearest airport is London City Airport, 13 km from Hawkwood Apartments.\r\n\r\nFamilies particularly like the location — they rated it 8.3 for a stay with kids.', 1),
(3, 'Maldron Hotel Glasgow', 5, 4, 4, 3, 1, 'Conveniently located in the centre of Glasgow, Maldron Hotel Glasgow City offers air-conditioned rooms, a fitness centre, free WiFi and a restaurant. This 4-star hotel offers room service and a 24-hour front desk. Guests can make use of a bar.\r\n\r\nAt the hotel, all rooms are fitted with a desk, a flat-screen TV, a private bathroom, bed linen and towels. All guest rooms will provide guests with a wardrobe and a kettle.\r\nA Full English/Irish breakfast is available every morning at Maldron Hotel Glasgow City.\r\n\r\nPopular points of interest near the accommodation include The Glasgow Royal Concert Hall, Buchanan Galleries and Glasgow Queen Street Station. The nearest airport is Glasgow Airport, 13 km from Maldron Hotel Glasgow City.\r\n\r\nFamilies particularly like the location — they rated it 9.4 for a stay with kids.', 1),
(4, 'Hotel Barcelona Centre', 5, 5, 7, 4, 2, 'Barcelona Center is 400 metres from Barcelona’s Passeig de Gràcia Avenue, and a 15-minute walk from Plaza Catalunya. Guests have free access to the small gym and rooftop hydromassage tub.\r\n\r\nThe modern rooms at the Barcelona Center Hotel have satellite TV and free WiFi. There is a minibar and safe, and the private bathroom comes with a hairdryer and amenities.\r\n\r\nThe Center Hotel has a traditional Spanish restaurant. There is also a bar and a terrace.\r\n\r\nThere is a 24-hour front desk. Parking is available nearby for an additional charge.\r\n\r\nFamilies particularly like the location — they rated it 9.1 for a stay with kids.', 1),
(5, '1 Lexham Gardens Hotel', 5, 3, 6, 3, 1, 'In the heart of stylish Kensington, 1 Lexham Gardens Hotel has a 24-hour front desk and modern rooms. The hotel is situated just off the Museum Mile, a 5-minute walk from Earl’s Court.\r\n\r\nThe cosy rooms at Lexham Gardens Hotel have fresh, modern decor and private bathrooms. All rooms have a flat-screen TV and tea/coffee facilities.\r\n\r\nTraditional continental breakfasts are freshly prepared and served daily in the elegant dining room. There is a great range of international restaurants just metres away.\r\n\r\n1 Lexham Gardens Hotel is a 20-minute walk from Knightsbridge and Harrods. Kensington High Street is a 10-minute walk away and the leafy Hyde Park is just half a mile away.\r\n\r\nFamilies particularly like the location — they rated it 8.7 for a stay with kids.', 3),
(6, 'Hilton London Bankside', 5, 6, 2, 5, 1, 'Escape to Hilton London Bankside the contemporary design-led hotel located in the heart of the vibrant cultural quarter of Bankside. Situated within walking distance of some of London’s premier sites including The Tate Modern and Borough Market, the hotel has 292 modern guest rooms, including two in room Peloton fitness experiences, one beautiful Penthouse apartment with private terrace and the world’s first Vegan suite.\r\n\r\nThe hotel boast a indoor swimming pool and fitness centre as well as neighbourhood eatery OXBO Bankside, specialist Gin Bar - The Distillery and an exclusive Executive Lounge.\r\n\r\nFamilies particularly like the location — they rated it 9.0 for a stay with kids.\r\n\r\nHotel chain/brand: Hilton Hotels & Resorts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `accomodation_facilities`
--

CREATE TABLE `accomodation_facilities` (
  `accomodation_facility_id` int(11) NOT NULL,
  `accomodation_facility_name` varchar(255) NOT NULL,
  `accomodation_facility_image_id` int(11) NOT NULL,
  `accomdation_facility_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomodation_facilities`
--

INSERT INTO `accomodation_facilities` (`accomodation_facility_id`, `accomodation_facility_name`, `accomodation_facility_image_id`, `accomdation_facility_description`) VALUES
(1, 'WIFI', 25, 'WIFI available throughout the property.'),
(2, 'luggage storage', 26, 'Luggage storage available, ask at reception.'),
(3, 'onsite-parking', 27, 'onsite parking available at the property'),
(4, 'accessibility- elevator', 28, 'upper floors accessbile via elevator'),
(5, 'indoor swimming pool', 29, 'indoor swimming pool available'),
(6, 'outdoor swimming pool', 30, 'outdoor swimming pool available');

-- --------------------------------------------------------

--
-- Table structure for table `accomodation_faqs`
--

CREATE TABLE `accomodation_faqs` (
  `accomodation_faqs_id` int(11) NOT NULL,
  `accomodation_id` int(11) NOT NULL,
  `faq_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomodation_faqs`
--

INSERT INTO `accomodation_faqs` (`accomodation_faqs_id`, `accomodation_id`, `faq_id`) VALUES
(1, 2, 2),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `accomodation_house_rules`
--

CREATE TABLE `accomodation_house_rules` (
  `accomodation_house_rule_id` int(11) NOT NULL,
  `accomdation_id` int(11) NOT NULL,
  `house_rule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomodation_house_rules`
--

INSERT INTO `accomodation_house_rules` (`accomodation_house_rule_id`, `accomdation_id`, `house_rule_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 1, 5),
(4, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `accomodation_type`
--

CREATE TABLE `accomodation_type` (
  `accomodation_type_id` int(11) NOT NULL,
  `accomodation_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomodation_type`
--

INSERT INTO `accomodation_type` (`accomodation_type_id`, `accomodation_type_name`) VALUES
(1, 'Entire homes & apartments'),
(2, 'Holiday homes'),
(3, 'Apartments'),
(4, 'Bed and breakfasts'),
(5, 'Hotels');

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `first_name` varchar(11) NOT NULL,
  `second_name` varchar(11) NOT NULL,
  `preferred_language_id` int(11) NOT NULL,
  `preferred_currency_id` int(11) NOT NULL,
  `correspondence_type_id` int(11) NOT NULL,
  `genius_level_id` int(11) NOT NULL,
  `passport_id` int(11) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) NOT NULL,
  `nationality_id` int(11) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `first_name`, `second_name`, `preferred_language_id`, `preferred_currency_id`, `correspondence_type_id`, `genius_level_id`, `passport_id`, `display_name`, `email_address`, `nationality_id`, `gender_id`, `date_of_birth`) VALUES
(2, 'Jeanette ', 'Morrison', 1, 1, 1, 1, 1, 'JJ', 'jrmorrison@hotmail.com', 142, 2, '1967-04-22'),
(3, 'Alison', 'O\'Hara', 1, 1, 4, 2, 2, 'Alison', 'alisono@live.co.uk', 142, 2, '1964-01-03'),
(4, 'Jose', 'Gonzales', 3, 2, 2, 3, 3, 'JOSEEE!', 'jGonzales@gmail.com', 160, 1, '1989-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `board`
--

CREATE TABLE `board` (
  `board_id` int(11) NOT NULL,
  `board_name` varchar(255) NOT NULL,
  `board_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `board`
--

INSERT INTO `board` (`board_id`, `board_name`, `board_image_id`) VALUES
(1, 'Continental Breakfast', 59),
(2, 'All inclusive', 60),
(3, 'Full English breakfast', 61);

-- --------------------------------------------------------

--
-- Table structure for table `board_room`
--

CREATE TABLE `board_room` (
  `board_room_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `board_room`
--

INSERT INTO `board_room` (`board_room_id`, `board_id`, `room_id`, `price`, `currency_id`) VALUES
(1, 3, 1, 10, 1),
(2, 2, 1, 35, 1),
(3, 1, 1, 0, 1),
(4, 1, 4, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booking_number` int(11) NOT NULL,
  `booking_made_date` date NOT NULL,
  `booking_start_date` date NOT NULL,
  `booking_end_date` date NOT NULL,
  `booking_duration_nights` int(11) NOT NULL,
  `booking_price` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `travel_type_id` int(11) NOT NULL,
  `special_requests` text NOT NULL,
  `estimated_arrival_time` time NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_number`, `booking_made_date`, `booking_start_date`, `booking_end_date`, `booking_duration_nights`, `booking_price`, `customer_id`, `travel_type_id`, `special_requests`, `estimated_arrival_time`, `currency_id`) VALUES
(1, 122332, '2021-10-01', '2023-10-19', '2023-10-22', 3, 360, 2, 2, 'Can we please have a double bed and not two singles', '15:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_line_item`
--

CREATE TABLE `booking_line_item` (
  `booking_line_item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` text NOT NULL,
  `item_price` double NOT NULL,
  `currency_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `booking_payment_type_id` int(11) NOT NULL,
  `paid_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_line_item`
--

INSERT INTO `booking_line_item` (`booking_line_item_id`, `item_name`, `item_description`, `item_price`, `currency_id`, `booking_id`, `booking_payment_type_id`, `paid_on`) VALUES
(1, 'Complimentary continental breakfast', 'breakfast for all guests included', 0, 1, 1, 1, '2023-10-01 10:10:14'),
(2, 'double room,3 nights', 'standard double room at £120.00 per night for 3 nights = £360.00 for entire stay.', 360, 1, 1, 2, '2023-10-01 10:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `booking_payment_type`
--

CREATE TABLE `booking_payment_type` (
  `booking_payment_type_id` int(11) NOT NULL,
  `booking_payment_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_payment_type`
--

INSERT INTO `booking_payment_type` (`booking_payment_type_id`, `booking_payment_type_name`) VALUES
(1, 'Credit'),
(2, 'Debit\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `booking_room`
--

CREATE TABLE `booking_room` (
  `booking_room_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `number_of_adults` int(11) NOT NULL,
  `number_of_children` int(11) NOT NULL,
  `price_per_room` double NOT NULL,
  `guest_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_room`
--

INSERT INTO `booking_room` (`booking_room_id`, `booking_id`, `room_id`, `number_of_adults`, `number_of_children`, `price_per_room`, `guest_name`, `email_address`, `discount_id`, `currency_id`) VALUES
(2, 1, 1, 2, 0, 360, 'Jeanette Morrison', 'Jrmorrison@hotmail.com', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'London Premier'),
(2, 'Hilton Hotels & Resorts'),
(3, 'Doubletree by Hilton'),
(4, 'Guestready'),
(5, 'Holiday Inn Express'),
(6, 'Z Hotels'),
(7, 'Novotel'),
(8, 'ibis'),
(9, 'OYO Rooms'),
(10, 'Radisson Blu Edwardian');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `card_details_id` int(11) NOT NULL,
  `cartd_number_encrypted` varbinary(255) NOT NULL,
  `card_holder_name` varchar(255) NOT NULL,
  `card_expiry` date NOT NULL,
  `card_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`card_details_id`, `cartd_number_encrypted`, `card_holder_name`, `card_expiry`, `card_type_id`) VALUES
(1, 0x15a286185b6ca45f137f4db9f1b0b974, 'Jeanette Morrison', '2024-01-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `card_type`
--

CREATE TABLE `card_type` (
  `card_type_id` int(11) NOT NULL,
  `card_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_type`
--

INSERT INTO `card_type` (`card_type_id`, `card_type_name`) VALUES
(1, 'Visa debit'),
(2, 'Mastercard debit'),
(3, 'American Express'),
(4, 'Mastercard');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `country_id`) VALUES
(1, 'London', 142),
(3, 'Manchester', 142),
(4, 'Glasgow', 142),
(5, 'Cardiff', 142),
(6, 'Madird', 160),
(7, 'Barcelona', 160),
(8, 'Belfast', 142),
(9, 'Enniskillen', 142);

-- --------------------------------------------------------

--
-- Table structure for table `commercial_address`
--

CREATE TABLE `commercial_address` (
  `commecial_address_id` int(11) NOT NULL,
  `address_line_one` varchar(255) NOT NULL,
  `address_line_two` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `longtitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commercial_address`
--

INSERT INTO `commercial_address` (`commecial_address_id`, `address_line_one`, `address_line_two`, `city_id`, `country_id`, `postcode`, `longtitude`, `latitude`) VALUES
(1, 'Lakeside Way', 'Brent', 1, 142, 'HA9 0BU', '0.2828 W', '51.5576 N'),
(2, '6 Hawkwood Mount', 'Hackney', 1, 142, 'E5 9EQ', '0.03504 W', '51.45486 N'),
(3, '1-3 Lexham Gardens', 'Kensington', 1, 142, 'W8 5JL', '-0.189W', '51.49 N'),
(4, 'Renfrew Street', 'Glasgow city centre', 4, 142, 'G2 3BW', '-4.34 W', '55.865 N'),
(5, '103-105 Balmes', 'Eixample', 7, 160, '08008', '2.1593 E', '41.3917 N'),
(6, '2-8 Great Suffolk Street', 'Southwark', 1, 142, 'SE1 0UG', '0.0978 W', '51.5060 N');

-- --------------------------------------------------------

--
-- Table structure for table `correspondence_type`
--

CREATE TABLE `correspondence_type` (
  `correspondence_id` int(11) NOT NULL,
  `correspondence_name` varchar(255) NOT NULL,
  `correspondence_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `correspondence_type`
--

INSERT INTO `correspondence_type` (`correspondence_id`, `correspondence_name`, `correspondence_description`) VALUES
(1, 'email ', 'only contact customer on the provided email address'),
(2, 'SMS', 'only contact by SMS'),
(3, 'phone', 'only contact by phone call'),
(4, 'phone and email', 'contact by both phone (including sms) and email');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_flag_image_id` int(11) NOT NULL,
  `regional_phone_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_flag_image_id`, `regional_phone_code`) VALUES
(140, 'United States', 2, '+1'),
(141, 'Canada', 5, '+1'),
(142, 'United Kingdom', 1, '+44'),
(143, 'Australia', 4, '+61'),
(144, 'Germany', 7, '+49'),
(145, 'France', 6, '+33'),
(146, 'China', 7, '+86'),
(147, 'India', 8, '+91'),
(148, 'Japan', 9, '+81'),
(149, 'Brazil', 10, '+55'),
(150, 'Mexico', 11, '+52'),
(151, 'Russia', 12, '+7'),
(152, 'South Korea', 13, '+82'),
(153, 'South Africa', 14, '+27'),
(154, 'Nigeria', 15, '+234'),
(155, 'Egypt', 16, '+20'),
(156, 'Saudi Arabia', 17, '+966'),
(157, 'United Arab Emirates', 18, '+971'),
(158, 'Turkey', 19, '+90'),
(159, 'Italy', 20, '+39'),
(160, 'Spain', 3, '+34');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_shorthand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`, `currency_shorthand`) VALUES
(1, 'Pounds Sterling', 'GBP'),
(2, 'Euro', 'EUR'),
(3, 'United States Dollar', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `second_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `regional_code_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `account_id`, `first_name`, `second_name`, `email_address`, `telephone`, `regional_code_id`) VALUES
(2, 2, 'Jeanette', 'Morrison', 'jmorrison@hotmail.com', 745666585, 142),
(3, 3, 'Alison', 'O\'Hara', 'aohara@hotmail.com', 776889078, 142),
(5, 4, 'Jose', 'Gonzalez', 'jgonzalz@homtail.com', 4555678, 160);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` int(11) NOT NULL,
  `discount_name` varchar(255) NOT NULL,
  `discount_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`discount_id`, `discount_name`, `discount_description`) VALUES
(1, 'genius_10%_discount', '10% discount, valid for genius level 1 users.'),
(2, 'genius_15%_discount', '15% discount, valid for genius level 2 users.');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `faq_id` int(11) NOT NULL,
  `faq_asked` text NOT NULL,
  `faq_answered` text NOT NULL,
  `faq_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`faq_id`, `faq_asked`, `faq_answered`, `faq_category_id`) VALUES
(1, 'Is this property popular with families?', 'Yes, this property has been booked several times by guests with a family party', 1),
(2, 'Is there a restaurant onsite?', 'Yes the property has its own bar and restaurant available to guests.', 1),
(3, 'What is the cancellation policy related to Coronavirus?', 'You may be able to cancel due to the circumstances related to Coronavirus. However this is dependent on several factors, including your destination, the date you made your booking, your departure date, your arrival date, your country of origin, and your reason for travelling.\r\n\r\nIf your cancellation falls under this category the property is obliged to provide a refund or offer a free date change or a credit for future stay.\r\nPlease sign in and select the relevant booking to see your options.', 2),
(4, 'Can I move my booking to a future date?', 'Moving your booking to a future date depends on the policies of the reservation. Please sign in using either your Booking.com account or confirmation number and PIN, select the booking you want to change, and you’ll see what options are available.\r\n\r\nYou may also contact the property to ask for a date change.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `faq_category`
--

CREATE TABLE `faq_category` (
  `faq_category_id` int(11) NOT NULL,
  `faq_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq_category`
--

INSERT INTO `faq_category` (`faq_category_id`, `faq_category_name`) VALUES
(1, 'accomodation'),
(2, 'booking.com');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `gender_id` int(11) NOT NULL,
  `gender_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `genius_level`
--

CREATE TABLE `genius_level` (
  `genius_level_id` int(11) NOT NULL,
  `genius_level_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genius_level`
--

INSERT INTO `genius_level` (`genius_level_id`, `genius_level_name`) VALUES
(1, 'Genius level 1'),
(2, 'Genius level 2'),
(3, 'Genius level 3');

-- --------------------------------------------------------

--
-- Table structure for table `house_rules`
--

CREATE TABLE `house_rules` (
  `house_rule_id` int(11) NOT NULL,
  `house_rule_name` varchar(255) NOT NULL,
  `house_rule_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house_rules`
--

INSERT INTO `house_rules` (`house_rule_id`, `house_rule_name`, `house_rule_description`) VALUES
(1, 'Children and Beds', 'Children of any age are welcome.\r\n\r\nTo see correct prices and occupancy information, please make sure you have added the correct number of children and their ages in your search.\r\n\r\nCot and extra bed policies\r\n0 - 3 years\r\nCot upon request\r\nFree\r\nThe number of cots allowed is dependent on the option you choose. Please check your selected option for more information.\r\n\r\n\r\nAll cots are subject to availability.'),
(2, 'Age restriction', 'The minimum age for the main guest carrying out check in is 18'),
(3, 'Cancellation/\r\nprepayment', 'Cancellation and prepayment policies vary according to accommodation type. Please check what conditions may apply to each option when making your selection.'),
(4, 'Refundable damage deposit\r\n', 'A damage deposit is required on arrival. This will be collected by credit card. You should be reimbursed on check-out. Your deposit will be refunded in full via credit card, subject to an inspection of the property.'),
(5, 'Pets -NO', '\r\nPets are not allowed.'),
(6, 'Pets - YES', 'pets are allowed on property'),
(7, 'Groups', 'When booking more than 4 rooms, different policies and additional supplements may apply.'),
(8, 'Check-in ', 'check in is from 14:00'),
(9, 'Check -out', 'last check out is 12:00');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `image_type_id` int(11) NOT NULL,
  `image_url` varchar(2550) NOT NULL,
  `image_alt_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_type_id`, `image_url`, `image_alt_text`) VALUES
(1, 5, 'https://exampleUrl.photo/1', 'English (UK) language flag image'),
(2, 5, 'https://exampleUrl.photo/2', 'English (US) flag image'),
(3, 5, 'https://exampleUrl.photo/3', 'Spanish flag image'),
(4, 5, 'https://exampleUrl.photo/4', 'Australian flag image'),
(5, 5, 'https://exampleUrl.photo/5', 'Canadian flag image'),
(6, 5, 'https://exampleUrl.photo/6', 'French flag image'),
(7, 5, 'https://exampleUrl.photo/7', 'German flag image'),
(8, 5, 'https://exampleUrl.photo/8', 'Indian flag image'),
(9, 5, 'https://exampleUrl.photo/9', 'Japanese flag image'),
(10, 5, 'https://exampleUrl.photo/10', 'Brazillian flag image'),
(11, 5, 'https://exampleUrl.photo/11', 'Mexican flag image'),
(12, 5, 'https://exampleUrl.photo/12', 'Russian flag image'),
(13, 5, 'https://exampleUrl.photo/13', 'South korean flag image'),
(14, 5, 'https://exampleUrl.photo/14', 'South African flage image'),
(15, 5, 'https://exampleUrl.photo/15', 'Nigerian flag image'),
(16, 5, 'https://exampleUrl.photo/16', 'Egyptian flag image'),
(17, 5, 'https://exampleUrl.photo/17', 'Arabian flag image'),
(18, 5, 'https://exampleUrl.photo/18', 'United emirates flafg image'),
(19, 5, 'https://exampleUrl.photo/19', 'Turkey flag image'),
(20, 5, 'https://exampleUrl.photo/20', 'Italian flag image'),
(25, 4, 'https://exampleUrl.photo/25', 'WIFI facilitiy image'),
(26, 4, 'https://exampleUrl.photo/26', 'Luggage Storage emblem image'),
(27, 4, 'https://exampleUrl.photo/27', 'Onsite carpark image'),
(28, 4, 'https://exampleUrl.photo/28', 'elevator emblem image'),
(29, 4, 'https://exampleUrl.photo/29', 'indoor swimming pool emblem image'),
(30, 4, 'https://exampleUrl.photo/30', 'outdoor swimming pool emblem image'),
(31, 4, 'https://exampleUrl.photo/31', ''),
(32, 4, 'https://exampleUrl.photo/32', ''),
(33, 4, 'https://exampleUrl.photo/33', ''),
(34, 6, 'https://exampleUrl.photo/34', 'double room image - bed'),
(35, 6, 'https://exampleUrl.photo/35', 'double room image - general layout'),
(36, 6, 'https://exampleUrl.photo/36', 'double room -image - twin beds'),
(37, 6, 'https://exampleUrl.photo/37', 'room image - ensuite bathroom'),
(38, 6, 'https://exampleUrl.photo/38', 'double room windows'),
(39, 6, 'https://exampleUrl.photo/39', 'room balcony'),
(40, 6, 'https://exampleUrl.photo/40', 'room light fixtures'),
(41, 6, 'https://exampleUrl.photo/41', ''),
(42, 1, 'https://exampleUrl.photo/42', 'Hilton logo image'),
(43, 1, 'https://exampleUrl.photo/43', 'Hilton Wembley building front'),
(44, 1, 'https://exampleUrl.photo/44', 'Hilton Wembley reception'),
(45, 1, 'https://exampleUrl.photo/45', 'Hawkwood apartments front buidling'),
(46, 1, 'https://exampleUrl.photo/46', 'Hawkwood Hallway image'),
(47, 1, 'https://exampleUrl.photo/47', 'Hilton London Bankside front image'),
(48, 1, 'https://exampleUrl.photo/48', 'Hotel Barcelona building image - front'),
(49, 1, 'https://exampleUrl.photo/49', ''),
(50, 2, 'https://exampleUrl.photo/50', ''),
(51, 2, 'https://exampleUrl.photo/51', 'Ensuite Bathroom'),
(52, 2, 'https://exampleUrl.photo/52', 'Shower'),
(53, 2, 'https://exampleUrl.photo/53', 'TV'),
(54, 2, 'https://exampleUrl.photo/54', 'Room Wifi'),
(55, 2, 'https://exampleUrl.photo/55', 'Desk'),
(56, 2, 'https://exampleUrl.photo/56', 'Iron'),
(57, 2, 'https://exampleUrl.photo/57', ''),
(58, 2, 'https://exampleUrl.photo/58', 'coffee maker'),
(59, 7, 'https://image.url/board1', ''),
(60, 7, 'https://image.url/board2', ''),
(61, 7, 'https://image.url/board3', ''),
(62, 7, 'https://image.url/board4', '');

-- --------------------------------------------------------

--
-- Table structure for table `image_accomodation`
--

CREATE TABLE `image_accomodation` (
  `image_accomodation_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `accomodation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_accomodation`
--

INSERT INTO `image_accomodation` (`image_accomodation_id`, `image_id`, `accomodation_id`) VALUES
(1, 42, 1),
(2, 43, 1),
(3, 48, 4),
(4, 47, 2),
(5, 44, 1),
(6, 45, 2),
(7, 46, 2);

-- --------------------------------------------------------

--
-- Table structure for table `image_room`
--

CREATE TABLE `image_room` (
  `image_room_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_room`
--

INSERT INTO `image_room` (`image_room_id`, `image_id`, `room_id`) VALUES
(1, 34, 1),
(2, 34, 4),
(3, 32, 1),
(4, 32, 1),
(9, 39, 1),
(10, 35, 1),
(11, 35, 4),
(12, 34, 4);

-- --------------------------------------------------------

--
-- Table structure for table `image_type`
--

CREATE TABLE `image_type` (
  `image_type_id` int(11) NOT NULL,
  `iimage_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_type`
--

INSERT INTO `image_type` (`image_type_id`, `iimage_type_name`) VALUES
(1, 'accomodation'),
(2, 'room facility'),
(4, 'accomodation facility'),
(5, 'country flag'),
(6, 'room'),
(7, 'board');

-- --------------------------------------------------------

--
-- Table structure for table `landmark`
--

CREATE TABLE `landmark` (
  `landmark_id` int(11) NOT NULL,
  `landmark_name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `longtitude` varchar(255) NOT NULL,
  `latititude` varchar(255) NOT NULL,
  `landmark_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landmark`
--

INSERT INTO `landmark` (`landmark_id`, `landmark_name`, `country_id`, `city_id`, `longtitude`, `latititude`, `landmark_type_id`) VALUES
(1, 'Wembley Stadium', 142, 1, '0.2796 W', '51.5560 N', 1),
(2, 'Empire Restaurant ', 142, 1, '0.2048 W', '51.332 N', 3),
(3, 'Buckingham Palace', 142, 1, '0.1419 W', '51.5014 N', 2);

-- --------------------------------------------------------

--
-- Table structure for table `landmark_accomodation`
--

CREATE TABLE `landmark_accomodation` (
  `landmark_accommodation_id` int(11) NOT NULL,
  `landmark_id` int(11) NOT NULL,
  `accomodation_id` int(11) NOT NULL,
  `distance_km` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landmark_accomodation`
--

INSERT INTO `landmark_accomodation` (`landmark_accommodation_id`, `landmark_id`, `accomodation_id`, `distance_km`) VALUES
(1, 1, 1, 3.9),
(2, 3, 1, 17),
(3, 1, 2, 24.3),
(4, 2, 2, 31),
(5, 2, 1, 3.1),
(6, 3, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `landmark_type`
--

CREATE TABLE `landmark_type` (
  `landmark_type_id` int(11) NOT NULL,
  `landmark_type_name` varchar(255) NOT NULL,
  `landmark_type_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landmark_type`
--

INSERT INTO `landmark_type` (`landmark_type_id`, `landmark_type_name`, `landmark_type_description`) VALUES
(1, 'stadium', 'sports stadium'),
(2, 'tourist', 'tourist attraction'),
(3, 'venues', 'hospitality venues including bars and restaurants');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(255) NOT NULL,
  `language_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`, `language_image_id`) VALUES
(1, 'English (UK)', 1),
(2, 'English (US)', 2),
(3, 'Spanish', 3),
(4, 'French', 6),
(5, 'German', 7);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `login_id` int(11) NOT NULL,
  `password` varbinary(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `email_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`login_id`, `password`, `account_id`, `email_address`) VALUES
(3, 0x66323037663632373064373738376136623530393232326138366133323864656538383065333836613733326265, 2, 'jrmorrison@hotmail.com'),
(4, 0x61376530636238313162636166633830623332326132656330633337396133616439396563316238363339366339, 3, 'aohara@hotmail.com'),
(5, 0x30653335303363653362366430303333383231653035366464326238303733633539313639333866353161656162, 4, 'jgonzalz@homtail.com');

-- --------------------------------------------------------

--
-- Table structure for table `passport`
--

CREATE TABLE `passport` (
  `passport_id` int(11) NOT NULL,
  `passport_number` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `issuing_country_id` int(255) NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passport`
--

INSERT INTO `passport` (`passport_id`, `passport_number`, `first_name`, `last_name`, `issuing_country_id`, `expiry_date`) VALUES
(1, 5666785, 'Jeanette', 'Morrison', 142, '2024-01-01'),
(2, 5567333, 'Alison', 'O\'Hara', 142, '2024-05-20'),
(3, 6734333, 'Jose', 'Gonzales', 160, '2025-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `payment_details_id` int(11) NOT NULL,
  `amount_paid` double NOT NULL,
  `booking_id` int(11) NOT NULL,
  `transaction_number` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `card_details_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`payment_details_id`, `amount_paid`, `booking_id`, `transaction_number`, `payment_type_id`, `card_details_id`, `currency_id`) VALUES
(1, 360, 1, 200231, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `payment_type_id` int(11) NOT NULL,
  `payment_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`payment_type_id`, `payment_type_name`) VALUES
(1, 'Card'),
(2, 'GooglePay'),
(3, 'Paypal');

-- --------------------------------------------------------

--
-- Table structure for table `residential_address`
--

CREATE TABLE `residential_address` (
  `residential_address_id` int(11) NOT NULL,
  `address_line_one` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `residential_address`
--

INSERT INTO `residential_address` (`residential_address_id`, `address_line_one`, `postcode`, `city_id`, `country_id`, `customer_id`, `account_id`) VALUES
(1, 'b4 goldenhill', 'Bt72 6ii', 9, 142, 2, 2),
(2, '34 postmalone road', 'bt8 1nv', 8, 142, 3, 3),
(3, '34 saligrado road', '800302', 6, 160, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `accomdation_id` int(11) NOT NULL,
  `date_on_sale_from` date NOT NULL,
  `date_on_sale_to` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `check_in_time` time NOT NULL,
  `check_out_time` time NOT NULL,
  `base_price_per_night` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `maximum_capacity` int(11) NOT NULL,
  `cancellation_policy` text NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `accomdation_id`, `date_on_sale_from`, `date_on_sale_to`, `quantity`, `check_in_time`, `check_out_time`, `base_price_per_night`, `room_type_id`, `maximum_capacity`, `cancellation_policy`, `currency_id`) VALUES
(1, 1, '2023-10-04', '2023-11-10', 10, '12:00:00', '12:00:00', 120, 2, 2, 'Free Cancellation', 1),
(2, 1, '2023-11-11', '2023-12-31', 10, '12:00:00', '12:00:00', 140, 2, 2, 'Free Cancellation up to 5 working days of booking.', 1),
(4, 1, '2023-09-01', '2023-12-31', 3, '10:00:00', '14:00:00', 175, 5, 2, 'Free Cancellation', 1),
(5, 4, '2023-10-11', '2023-10-31', 27, '14:00:00', '12:00:00', 189, 2, 2, 'Payment upfront - non refundable', 2),
(6, 1, '2023-10-04', '2023-10-31', 14, '12:00:00', '12:00:00', 88, 1, 1, 'Free cancellation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `room_facility_id` int(11) NOT NULL,
  `room_facility_name` varchar(255) NOT NULL,
  `room_facility_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`room_facility_id`, `room_facility_name`, `room_facility_image_id`) VALUES
(3, 'Ensuite Bathroom', 51),
(4, 'Shower', 52),
(5, 'Tv', 53),
(6, 'Free WIFI', 54),
(7, 'Desk', 55),
(8, 'Iron', 56),
(9, 'Coffee Maker', 58);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities_available`
--

CREATE TABLE `room_facilities_available` (
  `room_facilities_available_id` int(11) NOT NULL,
  `room_facility_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_facilities_available`
--

INSERT INTO `room_facilities_available` (`room_facilities_available_id`, `room_facility_id`, `room_id`) VALUES
(1, 9, 4),
(2, 3, 1),
(3, 6, 1),
(4, 6, 4),
(5, 6, 4),
(6, 6, 6),
(7, 9, 4),
(8, 8, 4),
(9, 3, 4),
(10, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `room_type_name` varchar(255) NOT NULL,
  `room_type_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type_name`, `room_type_description`) VALUES
(1, 'Standard Single ', '1 single bed'),
(2, 'Standard Double', '1 double bed'),
(3, 'Standard Quadruple', '2 single beds\r\n1 double bed'),
(4, 'Junior Suite', '1 extra-large double bed '),
(5, 'Deluxe double ', '1 double bed'),
(6, 'Deluxe single', '1 Single bed');

-- --------------------------------------------------------

--
-- Table structure for table `star_rating`
--

CREATE TABLE `star_rating` (
  `star_rating_id` int(11) NOT NULL,
  `star_rating_out_of_five` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `star_rating`
--

INSERT INTO `star_rating` (`star_rating_id`, `star_rating_out_of_five`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `travel_type`
--

CREATE TABLE `travel_type` (
  `travel_type_id` int(11) NOT NULL,
  `travel_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_type`
--

INSERT INTO `travel_type` (`travel_type_id`, `travel_type_name`) VALUES
(1, 'work'),
(2, 'leisure');

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `user_review_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `review_text` text NOT NULL,
  `score_out_of_10` int(11) NOT NULL,
  `accomodation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_review`
--

INSERT INTO `user_review` (`user_review_id`, `customer_id`, `review_text`, `score_out_of_10`, `accomodation_id`) VALUES
(1, 3, 'Fantastic location, the apartment is spacious and clean, couldn\'t ask for better!', 10, 2),
(2, 2, 'Breakfast could have been better but otherwise this was a great stay, highly recommend.', 8, 1),
(3, 5, 'Spa was closed for renovations which was disappointing, good location close to the train station, pleasant staff.', 7, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation_facilities_available`
--
ALTER TABLE `accommodation_facilities_available`
  ADD PRIMARY KEY (`accomodation_facilities_available_id`),
  ADD KEY `FK_accomdation_accomodation_id_five` (`accomodation_id`),
  ADD KEY `FK_accomdation_facilities_accomodation_facilities_id` (`accomodation_facilities_id`);

--
-- Indexes for table `accomodation`
--
ALTER TABLE `accomodation`
  ADD PRIMARY KEY (`accomdation_id`),
  ADD KEY `FK_accomdation_type_accomodation_type_id` (`accomodation_type_id`),
  ADD KEY `FK_commercial_address_commercial_address_id` (`commercial_address_id`),
  ADD KEY `FK_brand_brand_id` (`brand_id`),
  ADD KEY `FK_star_rating_id` (`star_rating_id`),
  ADD KEY `FK_currency_currency_id` (`preferred_currency_id`),
  ADD KEY `FK_langauge_language_id_two` (`langauge_id`);

--
-- Indexes for table `accomodation_facilities`
--
ALTER TABLE `accomodation_facilities`
  ADD PRIMARY KEY (`accomodation_facility_id`),
  ADD KEY `FK_image_image_id_five` (`accomodation_facility_image_id`);

--
-- Indexes for table `accomodation_faqs`
--
ALTER TABLE `accomodation_faqs`
  ADD PRIMARY KEY (`accomodation_faqs_id`),
  ADD KEY `FK_accomodation_accomodation_id_seven` (`accomodation_id`),
  ADD KEY `FK_faqs_faq_id` (`faq_id`);

--
-- Indexes for table `accomodation_house_rules`
--
ALTER TABLE `accomodation_house_rules`
  ADD PRIMARY KEY (`accomodation_house_rule_id`),
  ADD KEY `FK_house_rules_house_rule_id` (`house_rule_id`),
  ADD KEY `FK_accomodation_accomodation_id_five` (`accomdation_id`);

--
-- Indexes for table `accomodation_type`
--
ALTER TABLE `accomodation_type`
  ADD PRIMARY KEY (`accomodation_type_id`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `FK_language_language_id` (`preferred_language_id`),
  ADD KEY `FK_currency_currency_id_two` (`preferred_currency_id`),
  ADD KEY `FK_genius_level_genius_level_id` (`genius_level_id`),
  ADD KEY `FK_passport_passport_id` (`passport_id`),
  ADD KEY `FK_correspondence_type_correspondence_type_d` (`correspondence_type_id`),
  ADD KEY `FK_gender_gender_id_two` (`gender_id`),
  ADD KEY `FK_country_country_id_nine` (`nationality_id`);

--
-- Indexes for table `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`board_id`),
  ADD KEY `FK_image_image_id_seven` (`board_image_id`);

--
-- Indexes for table `board_room`
--
ALTER TABLE `board_room`
  ADD PRIMARY KEY (`board_room_id`),
  ADD KEY `FK_board_board_id` (`board_id`),
  ADD KEY `FK_room_room_id_four` (`room_id`),
  ADD KEY `FK_currency_currency_id_ten` (`currency_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `booking_booking_number` (`booking_number`),
  ADD KEY `FK_customer_customer_id` (`customer_id`),
  ADD KEY `FK_travel_type_travel_type_id` (`travel_type_id`),
  ADD KEY `FK_currency_currency_id_three` (`currency_id`);

--
-- Indexes for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD PRIMARY KEY (`booking_line_item_id`),
  ADD KEY `FK_booking_booking_id_three` (`booking_id`),
  ADD KEY `FK_currency_currency_id_four` (`currency_id`),
  ADD KEY `FK_booking_payment_type_booking_payment_type_id` (`booking_payment_type_id`);

--
-- Indexes for table `booking_payment_type`
--
ALTER TABLE `booking_payment_type`
  ADD PRIMARY KEY (`booking_payment_type_id`);

--
-- Indexes for table `booking_room`
--
ALTER TABLE `booking_room`
  ADD PRIMARY KEY (`booking_room_id`),
  ADD KEY `FK_booking_booking_id` (`booking_id`),
  ADD KEY `FK_room_room_id` (`room_id`),
  ADD KEY `FK_discounts_discount_id` (`discount_id`),
  ADD KEY `FK_currency_currency_id_five` (`currency_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`card_details_id`),
  ADD KEY `FK_card_type_card_type_id` (`card_type_id`);

--
-- Indexes for table `card_type`
--
ALTER TABLE `card_type`
  ADD PRIMARY KEY (`card_type_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `FK_country_country_id_four` (`country_id`);

--
-- Indexes for table `commercial_address`
--
ALTER TABLE `commercial_address`
  ADD PRIMARY KEY (`commecial_address_id`),
  ADD KEY `FK_country_id_two` (`country_id`),
  ADD KEY `FK_city_id` (`city_id`);

--
-- Indexes for table `correspondence_type`
--
ALTER TABLE `correspondence_type`
  ADD PRIMARY KEY (`correspondence_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `FK_image_image_id` (`country_flag_image_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FK_country_country_id_two` (`regional_code_id`),
  ADD KEY `FK_account_account_id_two` (`account_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`faq_id`),
  ADD KEY `FK_faq_category_faq_category_id` (`faq_category_id`);

--
-- Indexes for table `faq_category`
--
ALTER TABLE `faq_category`
  ADD PRIMARY KEY (`faq_category_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `genius_level`
--
ALTER TABLE `genius_level`
  ADD PRIMARY KEY (`genius_level_id`);

--
-- Indexes for table `house_rules`
--
ALTER TABLE `house_rules`
  ADD PRIMARY KEY (`house_rule_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `FK_image_type_image_type_id` (`image_type_id`);

--
-- Indexes for table `image_accomodation`
--
ALTER TABLE `image_accomodation`
  ADD PRIMARY KEY (`image_accomodation_id`),
  ADD KEY `FK_accomodation_accomodation_id_four` (`accomodation_id`),
  ADD KEY `FK_image_image_id_four` (`image_id`);

--
-- Indexes for table `image_room`
--
ALTER TABLE `image_room`
  ADD PRIMARY KEY (`image_room_id`),
  ADD KEY `FK_room_room_id_three` (`room_id`),
  ADD KEY `FK_image_image_id_three` (`image_id`);

--
-- Indexes for table `image_type`
--
ALTER TABLE `image_type`
  ADD PRIMARY KEY (`image_type_id`);

--
-- Indexes for table `landmark`
--
ALTER TABLE `landmark`
  ADD PRIMARY KEY (`landmark_id`),
  ADD KEY `FK_landmark_type_landmark_type_id` (`landmark_type_id`),
  ADD KEY `FK_country_country_id_eight` (`country_id`),
  ADD KEY `FK_city_city_id_four` (`city_id`);

--
-- Indexes for table `landmark_accomodation`
--
ALTER TABLE `landmark_accomodation`
  ADD PRIMARY KEY (`landmark_accommodation_id`),
  ADD KEY `FK_landmark_landmark_id` (`landmark_id`),
  ADD KEY `FK_accomodation_accomodation_id_six` (`accomodation_id`);

--
-- Indexes for table `landmark_type`
--
ALTER TABLE `landmark_type`
  ADD PRIMARY KEY (`landmark_type_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `FK_image_image_id` (`language_image_id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `FK_account_account_id` (`account_id`);

--
-- Indexes for table `passport`
--
ALTER TABLE `passport`
  ADD PRIMARY KEY (`passport_id`),
  ADD KEY `FK_country_country_id_three` (`issuing_country_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`payment_details_id`),
  ADD KEY `FK_booking_booking_id_two` (`booking_id`),
  ADD KEY `FK_payment_type_payment_type_id` (`payment_type_id`),
  ADD KEY `FK_card_details_card_details_id` (`card_details_id`),
  ADD KEY `FK_currency_currency_id_six` (`currency_id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`payment_type_id`);

--
-- Indexes for table `residential_address`
--
ALTER TABLE `residential_address`
  ADD PRIMARY KEY (`residential_address_id`),
  ADD KEY `FK_country_county_id_two` (`country_id`),
  ADD KEY `FK_city_city_id_two` (`city_id`),
  ADD KEY `FK_customer_customer_id_two` (`customer_id`),
  ADD KEY `FK_account_account_id_six` (`account_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `FK_accomodation_accomodation_id` (`accomdation_id`),
  ADD KEY `FK_room_type_room_type_id` (`room_type_id`),
  ADD KEY `FK_currency_currency_id_seven` (`currency_id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`room_facility_id`),
  ADD KEY `FK_image_image_id_two` (`room_facility_image_id`);

--
-- Indexes for table `room_facilities_available`
--
ALTER TABLE `room_facilities_available`
  ADD PRIMARY KEY (`room_facilities_available_id`),
  ADD KEY `FK_room_room_id_two` (`room_id`),
  ADD KEY `FK_room_facilites_room_facility_id` (`room_facility_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `star_rating`
--
ALTER TABLE `star_rating`
  ADD PRIMARY KEY (`star_rating_id`);

--
-- Indexes for table `travel_type`
--
ALTER TABLE `travel_type`
  ADD PRIMARY KEY (`travel_type_id`);

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`user_review_id`),
  ADD KEY `FK_customer_customer_id_fiour` (`customer_id`),
  ADD KEY `FK_accomodation_accomodation_id_three` (`accomodation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation_facilities_available`
--
ALTER TABLE `accommodation_facilities_available`
  MODIFY `accomodation_facilities_available_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accomodation`
--
ALTER TABLE `accomodation`
  MODIFY `accomdation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accomodation_facilities`
--
ALTER TABLE `accomodation_facilities`
  MODIFY `accomodation_facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accomodation_faqs`
--
ALTER TABLE `accomodation_faqs`
  MODIFY `accomodation_faqs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accomodation_house_rules`
--
ALTER TABLE `accomodation_house_rules`
  MODIFY `accomodation_house_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accomodation_type`
--
ALTER TABLE `accomodation_type`
  MODIFY `accomodation_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `board`
--
ALTER TABLE `board`
  MODIFY `board_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `board_room`
--
ALTER TABLE `board_room`
  MODIFY `board_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  MODIFY `booking_line_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_payment_type`
--
ALTER TABLE `booking_payment_type`
  MODIFY `booking_payment_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_room`
--
ALTER TABLE `booking_room`
  MODIFY `booking_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `card_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `card_type`
--
ALTER TABLE `card_type`
  MODIFY `card_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `commercial_address`
--
ALTER TABLE `commercial_address`
  MODIFY `commecial_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `correspondence_type`
--
ALTER TABLE `correspondence_type`
  MODIFY `correspondence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faq_category`
--
ALTER TABLE `faq_category`
  MODIFY `faq_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `genius_level`
--
ALTER TABLE `genius_level`
  MODIFY `genius_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `house_rules`
--
ALTER TABLE `house_rules`
  MODIFY `house_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `image_accomodation`
--
ALTER TABLE `image_accomodation`
  MODIFY `image_accomodation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `image_room`
--
ALTER TABLE `image_room`
  MODIFY `image_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `image_type`
--
ALTER TABLE `image_type`
  MODIFY `image_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `landmark`
--
ALTER TABLE `landmark`
  MODIFY `landmark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `landmark_accomodation`
--
ALTER TABLE `landmark_accomodation`
  MODIFY `landmark_accommodation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `landmark_type`
--
ALTER TABLE `landmark_type`
  MODIFY `landmark_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `passport`
--
ALTER TABLE `passport`
  MODIFY `passport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `payment_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `payment_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `residential_address`
--
ALTER TABLE `residential_address`
  MODIFY `residential_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `room_facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_facilities_available`
--
ALTER TABLE `room_facilities_available`
  MODIFY `room_facilities_available_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `star_rating`
--
ALTER TABLE `star_rating`
  MODIFY `star_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `travel_type`
--
ALTER TABLE `travel_type`
  MODIFY `travel_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `user_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation_facilities_available`
--
ALTER TABLE `accommodation_facilities_available`
  ADD CONSTRAINT `FK_accomdation_accomodation_id_five` FOREIGN KEY (`accomodation_id`) REFERENCES `accomodation` (`accomdation_id`),
  ADD CONSTRAINT `FK_accomdation_facilities_accomodation_facilities_id` FOREIGN KEY (`accomodation_facilities_id`) REFERENCES `accomodation_facilities` (`accomodation_facility_id`);

--
-- Constraints for table `accomodation`
--
ALTER TABLE `accomodation`
  ADD CONSTRAINT `FK_accomodation_type_accomodation_type_id` FOREIGN KEY (`accomodation_type_id`) REFERENCES `accomodation_type` (`accomodation_type_id`),
  ADD CONSTRAINT `FK_brand_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  ADD CONSTRAINT `FK_commercial_address_commercial_address_id` FOREIGN KEY (`commercial_address_id`) REFERENCES `commercial_address` (`commecial_address_id`),
  ADD CONSTRAINT `FK_currency_currency_id` FOREIGN KEY (`preferred_currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_langauge_language_id_two` FOREIGN KEY (`langauge_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FK_star_rating_star_rating_id` FOREIGN KEY (`star_rating_id`) REFERENCES `star_rating` (`star_rating_id`);

--
-- Constraints for table `accomodation_facilities`
--
ALTER TABLE `accomodation_facilities`
  ADD CONSTRAINT `FK_image_image_id_five` FOREIGN KEY (`accomodation_facility_image_id`) REFERENCES `image` (`image_id`);

--
-- Constraints for table `accomodation_faqs`
--
ALTER TABLE `accomodation_faqs`
  ADD CONSTRAINT `FK_accomodation_accomodation_id_seven` FOREIGN KEY (`accomodation_id`) REFERENCES `accomodation` (`accomdation_id`),
  ADD CONSTRAINT `FK_faqs_faq_id` FOREIGN KEY (`faq_id`) REFERENCES `faqs` (`faq_id`);

--
-- Constraints for table `accomodation_house_rules`
--
ALTER TABLE `accomodation_house_rules`
  ADD CONSTRAINT `FK_accomodation_accomodation_id_five` FOREIGN KEY (`accomdation_id`) REFERENCES `accomodation` (`accomdation_id`),
  ADD CONSTRAINT `FK_house_rules_house_rule_id` FOREIGN KEY (`house_rule_id`) REFERENCES `house_rules` (`house_rule_id`);

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `FK_correspondence_type_correspondence_type_d` FOREIGN KEY (`correspondence_type_id`) REFERENCES `correspondence_type` (`correspondence_id`),
  ADD CONSTRAINT `FK_country_country_id_nine` FOREIGN KEY (`nationality_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FK_currency_currency_id_two` FOREIGN KEY (`preferred_currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_gender_gender_id_two` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`),
  ADD CONSTRAINT `FK_genius_level_genius_level_id` FOREIGN KEY (`genius_level_id`) REFERENCES `genius_level` (`genius_level_id`),
  ADD CONSTRAINT `FK_language_language_id` FOREIGN KEY (`preferred_language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FK_passport_passport_id` FOREIGN KEY (`passport_id`) REFERENCES `passport` (`passport_id`);

--
-- Constraints for table `board`
--
ALTER TABLE `board`
  ADD CONSTRAINT `FK_image_image_id_seven` FOREIGN KEY (`board_image_id`) REFERENCES `image` (`image_id`);

--
-- Constraints for table `board_room`
--
ALTER TABLE `board_room`
  ADD CONSTRAINT `FK_board_board_id` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`),
  ADD CONSTRAINT `FK_currency_currency_id_ten` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_room_room_id_four` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_currency_currency_id_three` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `FK_travel_type_travel_type_id` FOREIGN KEY (`travel_type_id`) REFERENCES `travel_type` (`travel_type_id`);

--
-- Constraints for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD CONSTRAINT `FK_booking_booking_id_three` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_booking_payment_type_booking_payment_type_id` FOREIGN KEY (`booking_payment_type_id`) REFERENCES `booking_payment_type` (`booking_payment_type_id`),
  ADD CONSTRAINT `FK_currency_currency_id_four` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`);

--
-- Constraints for table `booking_room`
--
ALTER TABLE `booking_room`
  ADD CONSTRAINT `FK_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_currency_currency_id_five` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_discounts_discount_id` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`discount_id`),
  ADD CONSTRAINT `FK_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `card_details`
--
ALTER TABLE `card_details`
  ADD CONSTRAINT `FK_card_type_card_type_id` FOREIGN KEY (`card_type_id`) REFERENCES `card_type` (`card_type_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_country_country_id_four` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `commercial_address`
--
ALTER TABLE `commercial_address`
  ADD CONSTRAINT `FK_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `FK_country_id_two` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `FK_image_image_id_six` FOREIGN KEY (`country_flag_image_id`) REFERENCES `image` (`image_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_account_account_id_two` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `FK_country_country_id_two` FOREIGN KEY (`regional_code_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `FK_faq_category_faq_category_id` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_category` (`faq_category_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_image_type_image_type_id` FOREIGN KEY (`image_type_id`) REFERENCES `image_type` (`image_type_id`);

--
-- Constraints for table `image_accomodation`
--
ALTER TABLE `image_accomodation`
  ADD CONSTRAINT `FK_accomodation_accomodation_id_four` FOREIGN KEY (`accomodation_id`) REFERENCES `accomodation` (`accomdation_id`),
  ADD CONSTRAINT `FK_image_image_id_four` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`);

--
-- Constraints for table `image_room`
--
ALTER TABLE `image_room`
  ADD CONSTRAINT `FK_image_image_id_three` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `FK_room_room_id_three` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `landmark`
--
ALTER TABLE `landmark`
  ADD CONSTRAINT `FK_city_city_id_four` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `FK_country_country_id_eight` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FK_landmark_type_landmark_type_id` FOREIGN KEY (`landmark_type_id`) REFERENCES `landmark_type` (`landmark_type_id`);

--
-- Constraints for table `landmark_accomodation`
--
ALTER TABLE `landmark_accomodation`
  ADD CONSTRAINT `FK_accomodation_accomodation_id_six` FOREIGN KEY (`accomodation_id`) REFERENCES `accomodation` (`accomdation_id`),
  ADD CONSTRAINT `FK_landmark_landmark_id` FOREIGN KEY (`landmark_id`) REFERENCES `landmark` (`landmark_id`);

--
-- Constraints for table `language`
--
ALTER TABLE `language`
  ADD CONSTRAINT `FK_image_image_id` FOREIGN KEY (`language_image_id`) REFERENCES `image` (`image_id`);

--
-- Constraints for table `logins`
--
ALTER TABLE `logins`
  ADD CONSTRAINT `FK_account_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `passport`
--
ALTER TABLE `passport`
  ADD CONSTRAINT `FK_country_country_id_three` FOREIGN KEY (`issuing_country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `FK_booking_booking_id_two` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_card_details_card_details_id` FOREIGN KEY (`card_details_id`) REFERENCES `card_details` (`card_details_id`),
  ADD CONSTRAINT `FK_currency_currency_id_six` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_payment_type_payment_type_id` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`payment_type_id`);

--
-- Constraints for table `residential_address`
--
ALTER TABLE `residential_address`
  ADD CONSTRAINT `FK_account_account_id_six` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `FK_city_city_id_two` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `FK_country_county_id_two` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FK_customer_customer_id_ten` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_accomodation_accomodation_id` FOREIGN KEY (`accomdation_id`) REFERENCES `accomodation` (`accomdation_id`),
  ADD CONSTRAINT `FK_currency_currency_id_seven` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_room_type_room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `FK_image_image_id_two` FOREIGN KEY (`room_facility_image_id`) REFERENCES `image` (`image_id`);

--
-- Constraints for table `room_facilities_available`
--
ALTER TABLE `room_facilities_available`
  ADD CONSTRAINT `FK_room_facilites_room_facility_id` FOREIGN KEY (`room_facility_id`) REFERENCES `room_facilities` (`room_facility_id`),
  ADD CONSTRAINT `FK_room_room_id_two` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `user_review`
--
ALTER TABLE `user_review`
  ADD CONSTRAINT `FK_accomodation_accomodation_id_three` FOREIGN KEY (`accomodation_id`) REFERENCES `accomodation` (`accomdation_id`),
  ADD CONSTRAINT `FK_customer_customer_id_fiour` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

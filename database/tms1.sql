-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2019 at 10:18 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'anuj@gmail.com', '08/18/2023 ', '08/31/2023 ', 'Nice package. I like this package ', '2023-08-13 19:01:10', 2, 'u', '2023-08-20 21:30:23'),
(3, 2, 'anamika@gmail.com', '09/16/2023 ', '09/30/2023 ', 'The overall package is good, but it is very costly', '2023-09-21 20:20:01', 2, 'a', '2023-09-24 23:04:40'),
(4, 1, 'savi@gmail.com', '09/17/2023', '09/25/2023 ', 'Good one, Do you have more packages?', '2023-09-20 20:32:54', 2, 'a', '2023 -09-23 21:36:39'),
(5, 1, 'sunil@gmail.com', '10/1/2023 ', '10/11/2023 ', 'What about pickup timimgs?', '2023-10-10 20:33:17', 2, 'a', '2023-10-10 20:02:42'),
(6, 2, 'arun@gmail.com', '12/14/2023 ', '12/24/2023', 'Any other places', '2023-12-15 21:18:37', 2, 'a', '2023 -12-21 07:58:28'),
(7, 4, 'sarita@gmail.com', '01/01/2024 ', '01/15/2024 ', 'Nothing', '2024-01-05 05:09:11', 2, 'a', '2024-01-12 07:47:39'),
(8, 2, 'pari@gmail.com', '01/05/2024 ', '01/20/2024 ', 'What about payment', '2024-01-11 05:10:24', 2, 'a', '2024 -01-12 05:13:03'),
(9, 1, 'akash@gmail.com', '01/19/2024', '01/28/2024 ', 'Not sure about payment', '2024-01-21 07:45:11', 1, NULL, '2024-01-25 07:47:45'),
(10, 5, 'guru@gmail.com', '02/03/2024 ', '02/16/2024 ', 'What are other places to visit', '2024 -02-05 07:56:26', 1, NULL, '2024 -02-10 07:58:19'),
(11, 4, 'anu@gmail.com', '02/05/2034', '02/18/2024', 'How to trust your packages?,', '2024-02-20 20:15:35', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Anuj', 'anuj.lpu1@gmail.com', '9234657822', 'payment not working', ' Server is down', '2023 -05-14 22:23:53', 1),
(2, 'Savitha', 'savi@gmail.com', '6361631256', 'Any other packages?', 'See packages details', '2023-09-18 22:27:00', 1),
(3, 'Parinitha', 'pari@gmail.com', '9846523566', 'Timings?', ' ', '2024-01-13 22:28:11', 1),
(4, 'Sunil', 'sunil@gmail.com', '7687999312', 'Confirmation not recieved', 'Booking not confirmed', '2024-05-14 07:54:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(4, 'anuj@gmail.com', 'Cancellation', 'I cancelled my bookking, But it is not showing', '2023 -08-13 22:03:33', 'It is under process!', '2023-08-20 23:50:40'),
(5, 'sarita@gmail.com', 'Cancellation', 'Server not responding', '2024-01-14 05:12:14', 'Server is busy ', '2024-01-14 07:52:07'),
(6, 'guru@test.com', 'Refund', 'Not get my money back', '2024-02-10 07:45:37', NULL, '0000-00-00 00:00:00'),
(7, 'pari@gmail.com', 'Booking query', 'I can not book the packages,It is not reponding', '2024-03-11 07:56:46', 'Refresh the wepage and try it', '2024-03-23 07:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to our traveling website! By accessing and using our services, you agree to abide by the following terms and conditions. Our website aims to provide users with valuable information and resources for planning their travel experiences. While we strive to ensure the accuracy and reliability of the content provided, we cannot guarantee the completeness or timeliness of information, and users are encouraged to verify details independently.Users are solely responsible for their travel decisions and actions, including booking accommodations, transportation, and activities. We do not endorse or warrant the services provided by third-party vendors, and users should exercise caution and conduct their own research before making reservations or purchases.Our website may contain links to external websites or resources for users  convenience. However, we are not responsible for the content, accuracy, or availability of these external sites, and accessing them is at the user s own risk. We reserve the right to modify, suspend, or terminate our services at any time without prior notice.
Users agree to use our website in accordance with applicable laws and regulations and refrain from engaging in any unlawful or prohibited activities. We respect the privacy of our users and handle personal information in accordance with our Privacy Policy.By accessing our website, users acknowledge and accept these terms and conditions in their entirety. If you do not agree with any part of these terms, please refrain from using our services. We reserve the right to update or revise these terms and conditions at any time, and continued use of our website constitutes acceptance of any changes.</FONT></P>'),
(2, 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Our traveling website is committed to safeguarding your privacy, and our Privacy Policy outlines how we handle your personal information. We collect information such as your name, email address, and payment details when voluntarily provided for booking accommodations, transportation, or activities. Additionally, we may automatically gather device information and usage patterns to enhance your browsing experience. We use cookies and tracking technologies to analyze usage patterns and deliver targeted advertisements. Your personal information is used to process bookings, provide customer support, and personalize your experience. We may share this information with trusted third-party vendors and service providers to facilitate bookings and improve our services. While we implement security measures to protect your data, we cannot guarantee absolute security. Our Privacy Policy may be updated periodically to reflect changes in practices or legal requirements. If you have any questions or concerns about our Privacy Policy or how we handle your personal information, please contact us. By using our website or services, you consent to the collection and use of your personal information as outlined in this Privacy Policy.</span>'),
(3, 'aboutus', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Welcome to Mr.Traveller your ultimate destination for unforgettable travel experiences! At Mr.Traveller we are passionate about exploring the world and helping you create memories that last a lifetime. Whether you are seeking adventure in exotic locales, relaxation on pristine beaches, or cultural immersion in bustling cities, we are here to guide you every step of the way. Our team of travel enthusiasts is dedicated to curating the best destinations, tips, and resources to inspire your next journey. With a wealth of experience and insider knowledge, we handpick the most remarkable accommodations, activities, and attractions to ensure an exceptional travel experience tailored to your interests and preferences. From dreamy beach getaways to exhilarating outdoor adventures, we believe that travel has the power to enrich lives and broaden horizons. Through our comprehensive guides, expert advice, and personalized recommendations, we strive to make your travel dreams a reality.
At Mr.Traveller, we are more than just a travel platform we are your trusted companion on every adventure. Join us as we embark on a journey to discover the wonders of the world together. Let us make every trip an unforgettable experience filled with exploration, discovery, and moments of pure joy. Welcome aboard!
</span>'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address-- Email- mr.traveller@gmail.com , Mobile No.: 9898764522, Bengaluru Electronic city-577671</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--
INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Dharmastala Package', 'Relegious Tour', 'Sri Manjunatha Temple/Dakshina Kannada/Karnataka', 15000, 'Air Conditioning/Hotels Free food', 'Dharmasthala is an Indian Hindu temple town on the banks of the Nethravathi River in the Belthangady taluk of the Mangaluru district in Karnataka.', '66.jpg', '2023-05-13 14:23:44', '2023-05-13 17:51:01'),
(2, 'Bidar Package', 'School Trip', 'Bidar Fort/karnataka', 15000, ' Vehicles/Free Food/Hotels', 'Bidar Fort was built by Ahmad Shah Wali Bahman.It was renovated in the 15th century by Sultan Ahmad Shah as he shifted his capital from Kalaburagi to Bidar.', '106-2.jpg', '2023-08-10 15:24:26', '2023-08-13 17:51:57'),
(3, 'Chikkamagaluru Packages', 'Adventure Tour', 'Mullayyanagiri/Chikkamagaluru/Karnataka', 10000, 'Vehicles/Free Food/Hotels and Restuarants', 'Mullayyanagiri is the highest peak in Karnataka, India. Mullayyanagiri is located in the Chandra Dhrona Hill Ranges of the Western Ghats of Chikkamagaluru Taluk.', '105-2.jpg', '2023-09-10 16:00:58', '2023-09-11 20:12:41'),
(4, 'Shivamogga', 'Family Tour', 'Jog Falls/Sagara/Shivamogga/Karnataka', 15000, ' Free halting/ Hotels/ Vehicles', 'Jog Falls is a waterfall on the Sharavati river located in Siddapura taluk, Uttara Kannada District and its view point located in Shimoga district of Karnataka, India. It is the second highest plunge waterfall in India.', '44.jpg', '2023-09-16 22:39:37','2023-09-18'),
(5, 'Uttara Kannada', 'Relegious Tour', 'Sri Marikamba Temple/Sirsi/Karnataka', 12000, 'Free Food/Hotels/Bus', 'Sirsi Marikamba Temple is a Hindu temple dedicated to Marikamba Devi, located in Sirsi, Karnataka, It is also known as Marigudi, It was built in 1688, Sirsi Shri Marikamba Devi is "elder sister" of all Marikamba Devi s in Karnataka. ', 'sirsi.jpg', '2023-010-1 22:42:10', '2023-10-05 11:00:54'),
(6, 'Manglore', 'Family Tour', 'Manasa Water Park/Dakshina Kannada/Karnataka', 6000, 'Frree wifi/ pickup and drop ', 'Modest water park featuring colorful slides, a sizable swimming pool & an aquatic playground. ', '112.jpg', '2023-10-15 08:01:08', '2023-10-20 08:01:27');

-- --------------------------------------------------------
--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '9422567844', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-08-11 10:38:17', '2023-08-12 20:18:18'),
(3, 'Sarita', '9349687544', 'sarita@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2023-09-10 10:50:48', '2023-09-14 07:40:19'),
(7, 'Arun', '7234562344', 'arun@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-10-10 10:54:56', '2023-10-11 03:05:07'),
(8, 'Parinitha', '9876656433', 'pari@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-12-05 07:17:44', '2023-12-13 11:00:10'),
(9, 'Sunil', '8867865543', 'sunil@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-11 07:25:13', '2024-01-14 07:25:42'),
(10, 'Anu', '8734231299', 'anu@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-14 07:43:23', '2024-01-17 07:46:57'),
(11, 'Savitha', '9877654432', 'saavi@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-02-12 07:54:32', '2024-02-24 07:55:17');

--
-- Indexes for dumped tables
DELIMITER //
CREATE PROCEDURE GetPackagePrice(IN packageId INT, OUT packagePrice DECIMAL(10,2))
BEGIN
    SELECT PackagePrice INTO packagePrice FROM tbltourpackages WHERE PackageId = packageId;
END //
DELIMITER ;

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `busID` varchar(10) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `origin` varchar(25) NOT NULL,
  `destination` varchar(25) NOT NULL,
  `originArea` varchar(25) NOT NULL,
  `destinationArea` varchar(25) NOT NULL,
  `departure` varchar(10) NOT NULL,
  `arrival` varchar(10) NOT NULL,
  `seats` int(5) NOT NULL,
  `windows` int(5) NOT NULL,
  `fare` varchar(6) NOT NULL,
  `seatsAvailable` int(5) NOT NULL,
  `noOfBookings` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`busID`, `operator`, `type`, `origin`, `destination`, `originArea`, `destinationArea`, `departure`, `arrival`, `seats`, `windows`, `fare`, `seatsAvailable`, `noOfBookings`) VALUES
('ARP001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Itanagar', 'Guwahati', 'Itanagar', 'Khanapara', '17:00', '20:00', 36, 3, '150', 6, 0),
('ARP002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Itanagar', 'Guwahati', 'Itanagar', 'Khanapara', '6:00', '9:00', 28, 7, '150', 11, 0),
('ARP003', 'Deep Travels', 'Non AC Sleeper', 'Itanagar', 'Shillong', 'Itanagar', 'Police Bazar', '20:00', '5:00', 32, 21, '500', 17, 0),
('ARP004', 'Deep Travels', 'Non AC Sleeper', 'Itanagar', 'Shillong', 'Itanagar', 'Police Bazar', '17:00', '3:00', 32, 21, '632', 6, 0),
('ARP005', 'Deep Travels', 'Non AC Sleeper', 'Itanagar', 'Kohima', 'Itanagar', 'Kohima', '12:00', '10:00', 28, 10, '800', 21, 0),
('ARP006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Itanagar', 'Kohima', 'Itanagar', 'Kohima', '14:00', '13:00', 35, 2, '800', 4, 0),
('ARP007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Itanagar', 'Imphal', 'Itanagar', 'Imphal', '12:30', '8:00', 36, 3, '830', 9, 0),
('ARP008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Itanagar', 'Imphal', 'Itanagar', 'Imphal', '14:00', '10:00', 36, 3, '850', 16, 0),
('ARP009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Itanagar', 'Aizwal', 'Itanagar', 'Aizwal', '16:00', '12:00', 36, 3, '1000', 16, 0),
('ARP010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Itanagar', 'Aizwal', 'Itanagar', 'Aizwal', '18:00', '14:00', 36, 3, '950', 16, 0),
('ARP011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Itanagar', 'Agartala', 'Itanagar', '', '19:00', '13:00', 36, 3, '750', 10, 0),
('ARP012', 'Deep Travels', 'Non AC Sleeper', 'Itanagar', 'Agartala', 'Itanagar', 'Agartala', '11:00', '6:00', 36, 3, '750', 10, 0),
('GUW001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Guwahati', 'Shillong', 'Khanapara', 'Dhanketi', '17:00', '20:00', 36, 3, '150', 13, 7),
('GUW002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Guwahati', 'Shillong', 'Khanapara', 'Police Bazar', '6:00', '9:00', 28, 7, '150', 14, 81),
('GUW003', 'Deep Travels', 'Non AC Sleeper', 'Guwahati', 'Itanagar', 'Khanapara', 'Itanagar', '20:00', '5:00', 32, 21, '500', 17, 0),
('GUW004', 'Deep Travels', 'Non AC Sleeper', 'Guwahati', 'Itanagar', 'ISBT', 'Itangar', '17:00', '3:00', 32, 21, '632', 6, 0),
('GUW005', 'Deep Travels', 'Non AC Sleeper', 'Guwahati', 'Imphal', 'Khanapara', 'Imphal', '16:00', '7:00', 28, 10, '800', 21, 0),
('GUW006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Guwahati', 'Imphal', 'Paltanbazar', 'Imphal', '14:00', '6:00', 35, 2, '800', 4, 0),
('GUW007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Guwahati', 'Kohima', 'Khanapara', 'Kohima', '12:30', '8:00', 36, 3, '830', 9, 0),
('GUW008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Guwahati', 'Kohima', 'Khanapara', 'Kohima', '14:00', '00:00', 36, 3, '850', 16, 0),
('GUW009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Guwahati', 'Aizwal', 'ISBT', 'Aizwal', '16:00', '12:00', 36, 3, '1000', 16, 0),
('GUW010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Guwahati', 'Aizwal', 'ISBT', 'Aizwal', '18:00', '14:00', 36, 3, '950', 16, 0),
('GUW011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Guwahati', 'Agartala', 'ISBT', 'Agartala', '19:00', '13:00', 36, 3, '750', 10, 0),
('GUW012', 'Deep Travels', 'Non AC Sleeper', 'Guwahati', 'Agartala', 'ISBT', 'Kishanganj', '11:00', '6:00', 36, 3, '750', 10, 0),
('MIZO001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Aizwal', 'Guwahati', 'Aizwal', 'Khanapara', '17:00', '20:00', 36, 3, '150', 6, 0),
('MIZO002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Aizwal', 'Guwahati', 'Aizwal', 'Paltanbazar', '6:00', '9:00', 28, 7, '150', 11, 0),
('MIZO003', 'Deep Travels', 'Non AC Sleeper', 'Aizwal', 'Shillong', 'Aizwal', 'Police Bazar', '20:00', '5:00', 32, 21, '500', 17, 0),
('MIZO004', 'Deep Travels', 'Non AC Sleeper', 'Aizwal', 'Shillong', 'Aizwal', 'Police Bazar', '17:00', '3:00', 32, 21, '632', 6, 0),
('MIZO005', 'Deep Travels', 'Non AC Sleeper', 'Aizwal', 'Itanagar', 'Aizwal', 'Itanagar', '16:00', '7:00', 28, 10, '800', 21, 0),
('MIZO006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Aizwal', 'Itanagar', 'Aizwal', 'Itanagar', '14:00', '6:00', 35, 2, '800', 4, 0),
('MIZO007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Aizwal', 'Kohima', 'Aizwal', 'Kohima', '12:30', '8:00', 36, 3, '830', 9, 0),
('MIZO008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Aizwal', 'Kohima', 'Aizwal', 'Kohima', '14:00', '00:00', 36, 3, '850', 16, 0),
('MIZO009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Aizwal', 'Imphal', 'Aizwal', 'Imphal', '16:00', '12:00', 36, 3, '1000', 16, 0),
('MIZO010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Aizwal', 'Imphal', 'Aizwal', 'Imphal', '18:00', '14:00', 36, 3, '950', 16, 0),
('MIZO011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Aizwal', 'Agartala', 'Aizwal', 'Agartala', '19:00', '13:00', 36, 3, '450', 10, 0),
('MIZO012', 'Deep Travels', 'Non AC Sleeper', 'Aizwal', 'Agartala', 'Aizwal', 'Agartala', '11:00', '6:00', 36, 3, '450', 10, 0),
('MNP001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Imphal', 'Guwahati', 'Imphal', 'Khanapara', '17:00', '20:00', 36, 3, '150', 6, 0),
('MNP002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Imphal', 'Guwahati', 'Imphal', 'Khanapara', '6:00', '9:00', 28, 7, '150', 11, 0),
('MNP003', 'Deep Travels', 'Non AC Sleeper', 'Imphal', 'Shillong', 'Imphal', 'Police Bazar', '20:00', '5:00', 32, 21, '500', 17, 0),
('MNP004', 'Deep Travels', 'Non AC Sleeper', 'Imphal', 'Shillong', 'Imphal', 'Police Bazar', '17:00', '3:00', 32, 21, '632', 6, 0),
('MNP005', 'Deep Travels', 'Non AC Sleeper', 'Imphal', 'Itanagar', 'Imphal', 'Itanagar', '16:00', '7:00', 28, 10, '800', 21, 0),
('MNP006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Imphal', 'Itanagar', 'Imphal', 'Itanagar', '14:00', '6:00', 35, 2, '800', 4, 0),
('MNP007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Imphal', 'Aizwal', 'Imphal', 'Aizwal', '12:30', '8:00', 36, 3, '830', 9, 0),
('MNP008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Imphal', 'Aizwal', 'Imphal', 'Aizwal', '14:00', '00:00', 36, 3, '850', 16, 0),
('MNP009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Imphal', 'Kohima', 'Imphal', 'Kohima', '16:00', '12:00', 36, 3, '1000', 16, 0),
('MNP010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Imphal', 'Kohima', 'Imphal', 'Kohima', '18:00', '14:00', 36, 3, '950', 16, 0),
('MNP011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Imphal', 'Agartala', 'Imphal', 'Agartala', '19:00', '13:00', 36, 3, '750', 10, 0),
('MNP012', 'Deep Travels', 'Non AC Sleeper', 'Imphal', 'Agartala', 'Imphal', 'Kishanganj', '11:00', '6:00', 36, 3, '750', 10, 0),
('NAGA001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Kohima', 'Guwahati', 'Kohima', 'ISBT', '17:00', '20:00', 36, 3, '150', 6, 0),
('NAGA002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Kohima', 'Guwahati', 'Kohima', 'Khanapara', '6:00', '9:00', 28, 7, '150', 11, 0),
('NAGA003', 'Deep Travels', 'Non AC Sleeper', 'Kohima', 'Shillong', 'Kohima', 'Police Bazar', '20:00', '5:00', 32, 21, '500', 17, 0),
('NAGA004', 'Deep Travels', 'Non AC Sleeper', 'Kohima', 'Shillong', 'Kohima', 'Police Bazar', '17:00', '3:00', 32, 21, '632', 6, 0),
('NAGA005', 'Deep Travels', 'Non AC Sleeper', 'Kohima', 'Itanagar', 'Kohima', 'Itanagar', '16:00', '7:00', 28, 10, '800', 21, 0),
('NAGA006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Kohima', 'Itanagar', 'Kohima', 'Itanagar', '14:00', '6:00', 35, 2, '800', 4, 0),
('NAGA007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Kohima', 'Imphal', 'Kohima', 'Imphal', '12:30', '8:00', 36, 3, '830', 9, 0),
('NAGA008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Kohima', 'Imphal', 'Kohima', 'Aizwal', '14:00', '00:00', 36, 3, '850', 16, 0),
('NAGA009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Kohima', 'Aizwal', 'Kohima', 'Aizwal', '16:00', '12:00', 36, 3, '1000', 16, 0),
('NAGA010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Kohima', 'Aizwal', 'Kohima', 'Aizwal', '18:00', '14:00', 36, 3, '950', 16, 0),
('NAGA011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Kohima', 'Agartala', 'Kohima', 'Agartala', '19:00', '13:00', 36, 3, '750', 10, 0),
('NAGA012', 'Deep Travels', 'Non AC Sleeper', 'Kohima', 'Agartala', 'Kohima', 'Agartala', '11:00', '6:00', 36, 3, '750', 9, 1),
('SHL001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Shillong', 'Guwahati', 'Police Bazar', 'Khanapara', '00:00', '3:00', 36, 3, '150', 6, 0),
('SHL002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Shillong', 'Guwahati', 'Police Bazar', 'Khanapara', '10:00', '12:00', 28, 7, '150', 11, 0),
('SHL003', 'Deep Travels', 'Non AC Sleeper', 'Shillong', 'Itanagar', 'Police Bazar', 'Itanagar', '20:00', '10:00', 32, 21, '500', 17, 0),
('SHL004', 'Deep Travels', 'Non AC Sleeper', 'Shillong', 'Itanagar', 'Police Bazar', 'Itangar', '17:00', '3:00', 32, 21, '632', 6, 0),
('SHL005', 'Deep Travels', 'Non AC Sleeper', 'Shillong', 'Imphal', 'Police Bazar', 'Imphal', '16:00', '7:00', 28, 10, '800', 21, 0),
('SHL006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Shillong', 'Imphal', 'Police Bazar', 'Imphal', '14:00', '6:00', 35, 2, '800', 4, 0),
('SHL007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Shillong', 'Kohima', 'Police Bazar', 'Kohima', '12:30', '8:00', 36, 3, '830', 9, 0),
('SHL008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Shillong', 'Kohima', 'Police Bazar', 'Kohima', '14:00', '00:00', 36, 3, '850', 16, 0),
('SHL009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Shillong', 'Aizwal', 'Police Bazar', 'Aizwal', '16:00', '12:00', 36, 3, '1000', 16, 0),
('SHL010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Shillong', 'Aizwal', 'Police Bazar', 'Aizwal', '18:00', '14:00', 36, 3, '950', 16, 0),
('SHL011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Shillong', 'Agartala', 'Police Bazar', 'Agartala', '19:00', '13:00', 36, 3, '750', 10, 0),
('SHL012', 'Deep Travels', 'Non AC Sleeper', 'Shillong', 'Agartala', 'Police Bazar', 'Kishanganj', '11:00', '6:00', 36, 3, '750', 10, 0),
('TRI001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Agartala', 'Guwahati', 'Agartala', 'ISBT', '17:00', '20:00', 36, 3, '150', 6, 0),
('TRI002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Agartala', 'Guwahati', 'Agartala', 'Khanapara', '6:00', '9:00', 28, 7, '150', 11, 0),
('TRI003', 'Deep Travels', 'Non AC Sleeper', 'Agartala', 'Shillong', 'Agartala', 'Police Bazar', '20:00', '5:00', 32, 21, '500', 17, 0),
('TRI004', 'Deep Travels', 'Non AC Sleeper', 'Agartala', 'Shillong', 'Agartala', 'Police Bazar', '17:00', '3:00', 32, 21, '632', 6, 0),
('TRI005', 'Deep Travels', 'Non AC Sleeper', 'Agartala', 'Itanagar', 'Agartala', 'Itanagar', '16:00', '7:00', 28, 10, '800', 21, 0),
('TRI006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Agartala', 'Itanagar', 'Agartala', 'Itanagar', '14:00', '6:00', 35, 2, '800', 4, 0),
('TRI007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Agartala', 'Imphal', 'Agartala', 'Imphal', '12:30', '8:00', 36, 3, '330', 9, 0),
('TRI008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Agartala', 'Imphal', 'Agartala', 'Imphal', '14:00', '00:00', 36, 3, '350', 16, 0),
('TRI009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Agartala', 'Aizwal', 'Agartala', 'Aizwal', '16:00', '12:00', 36, 3, '200', 16, 0),
('TRI010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Agartala', 'Aizwal', 'Agartala', 'Aizwal', '18:00', '14:00', 36, 3, '250', 16, 0),
('TRI011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Agartala', 'Kohima', 'Agartala', 'Kohima', '19:00', '13:00', 36, 3, '650', 10, 0),
('TRI012', 'Deep Travels', 'Non AC Sleeper', 'Agartala', 'Kohima', 'Agartala', 'Kohima', '11:00', '6:00', 36, 3, '650', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `busbookings`
--

CREATE TABLE `busbookings` (
  `bookingID` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `cancelled` varchar(50) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `passengers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busbookings`
--

INSERT INTO `busbookings` (`bookingID`, `username`, `date`, `cancelled`, `origin`, `destination`, `passengers`) VALUES
(1, 'joydeep', '31-03-2018', 'no', 'Guwahati', 'Shillong', 4),
(2, 'joydeep', '31-03-2018', 'no', 'Guwahati', 'Shillong', 1),
(3, 'joydeep', '31-03-2018', 'yes', 'Guwahati', 'Shillong', 6),
(4, 'joydeep', '31-03-2018', 'yes', 'Kohima', 'Agartala', 1),
(5, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(6, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(7, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(8, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(9, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(10, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(11, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(12, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(13, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(14, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(15, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(16, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(17, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(18, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(19, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(20, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(21, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(22, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(23, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(24, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(25, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(26, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(27, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(28, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(29, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(30, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(31, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(32, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(33, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(34, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(35, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Shillong', 2),
(36, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 1),
(37, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(38, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(39, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(40, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(41, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cabbookings`
--

CREATE TABLE `cabbookings` (
  `bookingID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `date` varchar(20) NOT NULL,
  `cancelled` varchar(10) NOT NULL,
  `origin` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `carID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabbookings`
--

INSERT INTO `cabbookings` (`bookingID`, `username`, `date`, `cancelled`, `origin`, `destination`, `carID`) VALUES
(1, 'joydeep', '12-11-2017', 'yes', 'Guwahati', 'Shillong', 2),
(2, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 2),
(3, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 2),
(4, 'joydeep', '12-11-2017', 'yes', 'Guwahati', 'Shillong', 2),
(5, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(6, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(7, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(8, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(9, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(10, 'joydeep', '18-12-2017', 'no', 'Guwahati', 'Shillong', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cabdrivers`
--

CREATE TABLE `cabdrivers` (
  `carID` int(5) NOT NULL,
  `carType` varchar(30) NOT NULL,
  `carModel` varchar(30) NOT NULL,
  `carNo` varchar(20) NOT NULL,
  `driverName` varchar(50) NOT NULL,
  `driverPhone` varchar(20) NOT NULL,
  `driverRating` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabdrivers`
--

INSERT INTO `cabdrivers` (`carID`, `carType`, `carModel`, `carNo`, `driverName`, `driverPhone`, `driverRating`) VALUES
(1, 'Sedan', 'Ciaz', 'AS 01 HC 1234', 'Rakesh Sharma', '+91 2569874587', '4.6'),
(2, 'SUV', 'Vitara Breeza', 'AS 01 BZ 1234', 'Rahul Verma', '+91 2569874587', '4.4'),
(3, 'Hatchback', 'Alto 800', 'AS 01 GC 1234', 'Arun Shah', '+91 2569874587', '4.1'),
(4, 'Sedan', 'Swift Dzire', 'AS 01 AZ 1258', 'Sample Sedan Driver 1', '5879584586', '4.2'),
(5, 'Sedan', 'Xcent', 'AS 01 AZ 1278', 'Sample Sedan Driver 2', '5879584586', '4.2');

-- --------------------------------------------------------

--
-- Table structure for table `cabs`
--

CREATE TABLE `cabs` (
  `id` int(5) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `distance` float NOT NULL,
  `time` int(10) NOT NULL,
  `originCode` varchar(10) NOT NULL,
  `destinationCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabs`
--

INSERT INTO `cabs` (`id`, `origin`, `destination`, `distance`, `time`, `originCode`, `destinationCode`) VALUES
(1, 'Guwahati', 'Shillong', 95.8, 125, 'GAU', 'SHL');

-- --------------------------------------------------------

--
-- Table structure for table `flightbookings`
--

CREATE TABLE `flightbookings` (
  `bookingID` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `cancelled` varchar(20) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `passengers` int(10) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flightbookings`
--

INSERT INTO `flightbookings` (`bookingID`, `username`, `date`, `cancelled`, `origin`, `destination`, `passengers`, `type`) VALUES
(2, 'apple', 'mango', 'orange', '', '', 0, ''),
(3, '', 'Friday 29th of September 2017 at 12:00:59 AM', '', '', '', 0, ''),
(4, '', 'Friday 29th of September 2017 at 12:01:21 AM', '', '', '', 0, ''),
(5, '', 'Friday 29th of September 2017 at 12:02:11 AM', 'no', '', '', 0, ''),
(6, '', 'Friday 29th of September 2017 at 12:03:37 AM', 'no', '', '', 0, ''),
(7, '', 'Friday 29th of September 2017 at 12:04:13 AM', 'no', '', '', 0, ''),
(8, '', 'Friday 29th of September 2017 at 12:05:59 AM', 'no', '', '', 0, ''),
(9, '', 'Friday 29th of September 2017 at 12:06:37 AM', 'no', '', '', 0, ''),
(10, '', 'Friday 29th of September 2017 at 12:08:51 AM', 'no', '', '', 0, ''),
(11, '', 'Friday 29th of September 2017 at 12:09:33 AM', 'no', '', '', 0, ''),
(12, '', 'Friday 29th of September 2017 at 12:10:00 AM', 'no', '', '', 0, ''),
(13, '', 'Friday 29th of September 2017 at 12:11:14 AM', 'no', '', '', 0, ''),
(14, '', 'Friday 29th of September 2017 at 05:29:44 PM', 'no', '', '', 0, ''),
(15, '', 'Friday 29th of September 2017 at 05:31:25 PM', 'no', '', '', 0, ''),
(16, '', 'Friday 29th of September 2017 at 05:33:05 PM', 'no', '', '', 0, ''),
(17, 'joydeepguwahati', 'Saturday 30th of September 2017 at 05:14:35 PM', 'no', '', '', 0, ''),
(18, 'joydeepguwahati', 'Saturday 30th of September 2017 at 05:44:14 PM', 'no', '', '', 0, ''),
(24, '', 'Saturday 30th of September 2017 at 08:17:33 PM', 'no', '', '', 0, ''),
(25, '', 'Saturday 30th of September 2017 at 10:07:15 PM', 'no', '', '', 0, ''),
(31, 'joydeep', '04-10-2017', 'yes', 'Guwahati', 'Kolkata', 0, 'OneWayFlight'),
(32, 'joydeep', '04-10-2017', 'yes', 'Guwahati', 'Kolkata', 0, 'OneWayFlight'),
(33, 'joydeep', '04-10-2017', 'yes', 'Guwahati', 'Kolkata', 4, 'ReturnTripFlight'),
(34, 'joydeep', '05-10-2017', 'yes', 'Kolkata', 'Guwahati', 4, 'OneWayFlight'),
(35, 'joydeep', '07-10-2017', 'yes', 'Guwahati', 'Kolkata', 4, 'OneWayFlight'),
(36, 'joydeep', '10-10-2017', 'yes', 'Guwahati', 'Kolkata', 4, 'ReturnTripFlight'),
(37, 'joydeep', '14-10-2017', 'yes', '', '', 0, 'hotel'),
(38, 'joydeep', '15-10-2017', 'yes', '', '', 0, 'hotel'),
(39, 'joydeep', '15-10-2017', 'yes', '', '', 0, 'hotel'),
(40, 'joydeep', '15-10-2017', 'yes', '', '', 0, 'hotel'),
(41, 'joydeep', '15-10-2017', 'yes', '', '', 0, 'hotel'),
(42, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(43, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(44, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(45, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(46, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(47, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(48, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(49, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(50, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(51, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(52, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(53, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(54, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(55, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(56, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(57, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(58, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(59, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(60, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(61, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(62, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(63, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(64, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(65, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(66, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(67, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(68, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(69, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(70, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(71, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(72, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(73, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(74, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(75, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(76, 'joydeep', '16-10-2017', 'yes', 'Guwahati', 'Kolkata', 4, 'OneWayFlight'),
(77, 'joydeep', '17-10-2017', 'yes', 'Guwahati', 'Kolkata', 3, 'ReturnTripFlight'),
(78, 'joydeep', '26-10-2017', 'yes', 'Guwahati', 'Kolkata', 4, 'ReturnTripFlight'),
(79, 'joydeep', '30-10-2017', 'no', 'Guwahati', 'Kolkata', 4, 'OneWayFlight'),
(80, 'joydeep', '02-11-2017', 'yes', 'Bhopal', 'Jaipur', 4, 'OneWayFlight'),
(81, 'joydeep', '03-11-2017', 'no', 'Guwahati', 'Bengaluru', 7, 'OneWayFlight'),
(82, 'joydeep', '05-11-2017', 'yes', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(83, 'joydeep', '05-11-2017', 'yes', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(84, 'joydeep', '05-11-2017', 'no', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(85, 'joydeep', '06-11-2017', 'no', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(86, 'joydeep', '07-11-2017', 'no', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(87, 'joydeep', '07-11-2017', 'yes', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(88, 'joydeep', '07-11-2017', 'no', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(89, 'joydeep', '07-11-2017', 'yes', '', '', 0, ''),
(90, 'joydeep', '17-12-2017', 'no', 'Guwahati', 'Pune', 4, 'ReturnTripFlight'),
(91, 'joydeep', '18-12-2017', 'no', 'New Delhi', 'Hyderabad', 12, 'OneWayFlight'),
(92, 'joydeep', '18-12-2017', 'no', 'Guwahati', 'New Delhi', 1, 'OneWayFlight'),
(93, 'joydeep', '18-12-2017', 'no', 'Kolkata', 'Bengaluru', 2, 'OneWayFlight'),
(94, 'joydeep', '18-12-2017', 'no', 'Guwahati', 'Pune', 2, 'ReturnTripFlight'),
(95, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(96, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(97, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(98, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(99, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(100, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(101, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(102, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(103, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(104, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(105, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(106, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(107, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(108, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(109, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(110, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_no` varchar(10) NOT NULL,
  `origin` varchar(25) NOT NULL,
  `destination` varchar(25) NOT NULL,
  `distance` int(10) NOT NULL,
  `fare` float NOT NULL,
  `class` varchar(10) NOT NULL,
  `seats_available` int(5) NOT NULL,
  `departs` varchar(10) NOT NULL,
  `arrives` varchar(10) NOT NULL,
  `operator` varchar(25) NOT NULL,
  `origin_code` varchar(10) NOT NULL,
  `destination_code` varchar(10) NOT NULL,
  `refundable` varchar(20) NOT NULL,
  `noOfBookings` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_no`, `origin`, `destination`, `distance`, `fare`, `class`, `seats_available`, `departs`, `arrives`, `operator`, `origin_code`, `destination_code`, `refundable`, `noOfBookings`) VALUES
(' GHY-035', 'Guwahati', 'Bengaluru', 0, 34606, 'Business', 25, '15:30', '17:25', 'Jet Airways', 'GAU', 'BLR', 'Non-Refundable', 0),
(' JAI-139', 'Jaipur', 'Chennai', 0, 32621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'JAI', 'MAA', 'Non-Refundable', 0),
('AI-090', 'Guwahati', 'Hyderabad', 0, 28816, 'Business', 5, '02:00', '03:30', 'AirIndia', 'GAU', 'HYD', 'Non-Refundable', 0),
('BHO-001', 'Bhopal', 'Ahmedabad', 0, 2500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-002', 'Bhopal', 'Ahmedabad', 0, 2600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'BHO', 'AMD', 'Refundable', 0),
('BHO-003', 'Bhopal', 'Ahmedabad', 0, 2318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'BHO', 'AMD', 'Refundable', 0),
('BHO-004', 'Bhopal', 'Ahmedabad', 0, 2915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'BHO', 'AMD', 'Refundable', 0),
('BHO-005', 'Bhopal', 'Ahmedabad', 0, 2915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-006', 'Bhopal', 'Ahmedabad', 0, 2700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'BHO', 'AMD', 'Refundable', 0),
('BHO-007', 'Bhopal', 'Ahmedabad', 0, 2000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-008', 'Bhopal', 'Ahmedabad', 0, 2786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'BHO', 'AMD', 'Refundable', 0),
('BHO-009', 'Bhopal', 'Ahmedabad', 0, 2786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'BHO', 'AMD', 'Refundable', 0),
('BHO-010', 'Bhopal', 'Ahmedabad', 0, 1800, 'Economy', 2, '06:35', '15:10', 'Vistara', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-011', 'Bhopal', 'Ahmedabad', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-012', 'Bhopal', 'Ahmedabad', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-013', 'Bhopal', 'Ahmedabad', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-014', 'Bhopal', 'Ahmedabad', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-015', 'Bhopal', 'Ahmedabad', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-016', 'Bhopal', 'Ahmedabad', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-017', 'Bhopal', 'Ahmedabad', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-018', 'Bhopal', 'Ahmedabad', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-019', 'Bhopal', 'Ahmedabad', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-020', 'Bhopal', 'Ahmedabad', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'BHO', 'AMD', 'Non-Refundable', 0),
('BHO-021', 'Bhopal', 'Bengaluru', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-022', 'Bhopal', 'Bengaluru', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'BHO', 'BLR', 'Refundable', 0),
('BHO-023', 'Bhopal', 'Bengaluru', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'BHO', 'BLR', 'Refundable', 0),
('BHO-024', 'Bhopal', 'Bengaluru', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'BHO', 'BLR', 'Refundable', 0),
('BHO-025', 'Bhopal', 'Bengaluru', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-026', 'Bhopal', 'Bengaluru', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'BHO', 'BLR', 'Refundable', 0),
('BHO-027', 'Bhopal', 'Bengaluru', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-028', 'Bhopal', 'Bengaluru', 0, 9786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'BHO', 'BLR', 'Refundable', 0),
('BHO-029', 'Bhopal', 'Bengaluru', 0, 9786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'BHO', 'BLR', 'Refundable', 0),
('BHO-030', 'Bhopal', 'Bengaluru', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-031', 'Bhopal', 'Bengaluru', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-032', 'Bhopal', 'Bengaluru', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-033', 'Bhopal', 'Bengaluru', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-034', 'Bhopal', 'Bengaluru', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-035', 'Bhopal', 'Bengaluru', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-036', 'Bhopal', 'Bengaluru', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-037', 'Bhopal', 'Bengaluru', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-038', 'Bhopal', 'Bengaluru', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-039', 'Bhopal', 'Bengaluru', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-040', 'Bhopal', 'Bengaluru', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'BHO', 'BLR', 'Non-Refundable', 0),
('BHO-041', 'Bhopal', 'Mumbai', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-042', 'Bhopal', 'Mumbai', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'BHO', 'BOM', 'Refundable', 0),
('BHO-043', 'Bhopal', 'Mumbai', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'BOM', 'JAI', 'Refundable', 0),
('BHO-044', 'Bhopal', 'Mumbai', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'BHO', 'BOM', 'Refundable', 0),
('BHO-045', 'Bhopal', 'Mumbai', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-046', 'Bhopal', 'Mumbai', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'BHO', 'BOM', 'Refundable', 0),
('BHO-047', 'Bhopal', 'Mumbai', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-048', 'Bhopal', 'Mumbai', 0, 9786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'BHO', 'BOM', 'Refundable', 0),
('BHO-049', 'Bhopal', 'Mumbai', 0, 9786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'BHO', 'BOM', 'Refundable', 0),
('BHO-050', 'Bhopal', 'Mumbai', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-051', 'Bhopal', 'Mumbai', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-052', 'Bhopal', 'Mumbai', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-053', 'Bhopal', 'Mumbai', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-054', 'Bhopal', 'Mumbai', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-055', 'Bhopal', 'Mumbai', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-056', 'Bhopal', 'Mumbai', 0, 26200, 'Business', 2, '6:35', '8:10', 'Vistara', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-057', 'Bhopal', 'Mumbai', 0, 36200, 'Business', 6, '8:15', '10:00', 'Vistara', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-058', 'Bhopal', 'Mumbai', 0, 36200, 'Business', 10, '18:20', '20:00', 'Vistara', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-059', 'Bhopal', 'Mumbai', 0, 32621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-060', 'Bhopal', 'Mumbai', 0, 42621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'BHO', 'BOM', 'Non-Refundable', 0),
('BHO-061', 'Bhopal', 'Kolkata', 0, 3500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-062', 'Bhopal', 'Kolkata', 0, 3600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'BHO', 'CCU', 'Refundable', 0),
('BHO-063', 'Bhopal', 'Kolkata', 0, 3318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'BHO', 'CCU', 'Refundable', 0),
('BHO-064', 'Bhopal', 'Kolkata', 0, 3915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'BHO', 'CCU', 'Refundable', 0),
('BHO-065', 'Bhopal', 'Kolkata', 0, 3915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-066', 'Bhopal', 'Kolkata', 0, 3700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'BHO', 'CCU', 'Refundable', 0),
('BHO-067', 'Bhopal', 'Kolkata', 0, 3000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-068', 'Bhopal', 'Kolkata', 0, 3786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'BHO', 'CCU', 'Refundable', 0),
('BHO-069', 'Bhopal', 'Kolkata', 0, 3786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'BHO', 'CCU', 'Refundable', 0),
('BHO-070', 'Bhopal', 'Kolkata', 0, 3000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-071', 'Bhopal', 'Kolkata', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-072', 'Bhopal', 'Kolkata', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-073', 'Bhopal', 'Kolkata', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-074', 'Bhopal', 'Kolkata', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-075', 'Bhopal', 'Kolkata', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-076', 'Bhopal', 'Kolkata', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-077', 'Bhopal', 'Kolkata', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-078', 'Bhopal', 'Kolkata', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-079', 'Bhopal', 'Kolkata', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-080', 'Bhopal', 'Kolkata', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'BHO', 'CCU', 'Non-Refundable', 0),
('BHO-081', 'Bhopal', 'New Delhi', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-082', 'Bhopal', 'New Delhi', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'BHO', 'DEL', 'Refundable', 0),
('BHO-083', 'New Delhi', 'Jaipur', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'BHO', 'DEL', 'Refundable', 0),
('BHO-084', 'Bhopal', 'New Delhi', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'BHO', 'DEL', 'Refundable', 0),
('BHO-085', 'Bhopal', 'New Delhi', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-086', 'Bhopal', 'New Delhi', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'BHO', 'DEL', 'Refundable', 0),
('BHO-087', 'Bhopal', 'New Delhi', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-088', 'Bhopal', 'New Delhi', 0, 9786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'BHO', 'DEL', 'Refundable', 0),
('BHO-089', 'Bhopal', 'New Delhi', 0, 9786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'BHO', 'DEL', 'Refundable', 0),
('BHO-090', 'Bhopal', 'New Delhi', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-091', 'Bhopal', 'New Delhi', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-092', 'Bhopal', 'New Delhi', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-093', 'Bhopal', 'New Delhi', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-094', 'Bhopal', 'New Delhi', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-095', 'Bhopal', 'New Delhi', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-096', 'Bhopal', 'New Delhi', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-097', 'Bhopal', 'New Delhi', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-098', 'Bhopal', 'New Delhi', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-099', 'Bhopal', 'New Delhi', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-100', 'Bhopal', 'New Delhi', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'BHO', 'DEL', 'Non-Refundable', 0),
('BHO-101', 'Bhopal', 'Guwahati', 0, 7500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-102', 'Bhopal', 'Guwahati', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'BHO', 'GAU', 'Refundable', 0),
('BHO-103', 'Bhopal', 'Guwahati', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'BHO', 'GAU', 'Refundable', 0),
('BHO-104', 'Bhopal', 'Guwahati', 0, 7915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'BHO', 'GAU', 'Refundable', 0),
('BHO-105', 'Bhopal', 'Guwahati', 0, 7915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-106', 'Bhopal', 'Guwahati', 0, 6700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'BHO', 'GAU', 'Refundable', 0),
('BHO-107', 'Bhopal', 'Guwahati', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-108', 'Bhopal', 'Guwahati', 0, 6786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'BHO', 'GAU', 'Refundable', 0),
('BHO-109', 'Bhopal', 'Guwahati', 0, 6786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'BHO', 'GAU', 'Refundable', 0),
('BHO-110', 'Bhopal', 'Guwahati', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-111', 'Bhopal', 'Guwahati', 0, 32500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-112', 'Bhopal', 'Guwahati', 0, 22500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-113', 'Bhopal', 'Guwahati', 0, 22500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-114', 'Bhopal', 'Guwahati', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-115', 'Bhopal', 'Guwahati', 0, 34900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-116', 'Bhopal', 'Guwahati', 0, 36200, 'Business', 2, '6:35', '8:10', 'Vistara', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-117', 'Bhopal', 'Guwahati', 0, 36200, 'Business', 6, '8:15', '10:00', 'Vistara', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-118', 'Bhopal', 'Guwahati', 0, 36200, 'Business', 10, '18:20', '20:00', 'Vistara', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-119', 'Bhopal', 'Guwahati', 0, 52621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-120', 'Bhopal', 'Guwahati', 0, 42621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'BHO', 'GAU', 'Non-Refundable', 0),
('BHO-121', 'Bhopal', 'Goa', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-122', 'Bhopal', 'Goa', 0, 5600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'BHO', 'GOI', 'Refundable', 0),
('BHO-123', 'Bhopal', 'Goa', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'BHO', 'GOI', 'Refundable', 0),
('BHO-124', 'Bhopal', 'Goa', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'BHO', 'GOI', 'Refundable', 0),
('BHO-125', 'Bhopal', 'Goa', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-126', 'Bhopal', 'Goa', 0, 5700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'BHO', 'GOI', 'Refundable', 0),
('BHO-127', 'Bhopal', 'Goa', 0, 5000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-128', 'Bhopal', 'Goa', 0, 6799, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'BHO', 'GOI', 'Refundable', 0),
('BHO-129', 'Bhopal', 'Goa', 0, 7777, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'BHO', 'GOI', 'Refundable', 0),
('BHO-130', 'Bhopal', 'Goa', 0, 6000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-131', 'Bhopal', 'Goa', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-132', 'Bhopal', 'Goa', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-133', 'Bhopal', 'Goa', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-134', 'Bhopal', 'Goa', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-135', 'Bhopal', 'Goa', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-136', 'Bhopal', 'Goa', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-137', 'Bhopal', 'Goa', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-138', 'Bhopal', 'Goa', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-139', 'Bhopal', 'Goa', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-140', 'Bhopal', 'Goa', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'BHO', 'GOI', 'Non-Refundable', 0),
('BHO-141', 'Bhopal', 'Jaipur', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-142', 'Bhopal', 'Jaipur', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'BHO', 'JAI', 'Refundable', 0),
('BHO-143', 'Bhopal', 'Jaipur', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'BHO', 'JAI', 'Refundable', 0),
('BHO-144', 'Bhopal', 'Jaipur', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'BHO', 'JAI', 'Refundable', 0),
('BHO-145', 'Bhopal', 'Jaipur', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-146', 'Bhopal', 'Jaipur', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'BHO', 'JAI', 'Refundable', 0),
('BHO-147', 'Bhopal', 'Jaipur', 0, 7000, 'Economy', 12, '17:00', '06:40', 'AirIndia', 'BHO', 'JAI', 'Non-Refundable', 4),
('BHO-148', 'Bhopal', 'Jaipur', 0, 9786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'BHO', 'JAI', 'Refundable', 0),
('BHO-149', 'Bhopal', 'Jaipur', 0, 9786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'BHO', 'JAI', 'Refundable', 0),
('BHO-150', 'Bhopal', 'Jaipur', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-151', 'Bhopal', 'Jaipur', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-152', 'Bhopal', 'Jaipur', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-153', 'Bhopal', 'Jaipur', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-154', 'Bhopal', 'Jaipur', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-155', 'Bhopal', 'Jaipur', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-156', 'Bhopal', 'Jaipur', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-157', 'Bhopal', 'Jaipur', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-158', 'Bhopal', 'Jaipur', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-159', 'Bhopal', 'Jaipur', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-160', 'Bhopal', 'Jaipur', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'BHO', 'JAI', 'Non-Refundable', 0),
('BHO-161', 'Bhopal', 'Chennai', 0, 2500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-162', 'Bhopal', 'Chennai', 0, 2600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'BHO', 'MAA', 'Refundable', 0),
('BHO-163', 'Bhopal', 'Chennai', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'BHO', 'MAA', 'Refundable', 0),
('BHO-164', 'Bhopal', 'Chennai', 0, 3000, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'BHO', 'MAA', 'Refundable', 0),
('BHO-165', 'Bhopal', 'Chennai', 0, 4915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-166', 'Bhopal', 'Chennai', 0, 2700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'BHO', 'MAA', 'Refundable', 0),
('BHO-167', 'Bhopal', 'Chennai', 0, 5000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-168', 'Bhopal', 'Chennai', 0, 3786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'BHO', 'MAA', 'Refundable', 0),
('BHO-169', 'Bhopal', 'Chennai', 0, 2786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'BHO', 'MAA', 'Refundable', 0),
('BHO-170', 'Bhopal', 'Chennai', 0, 2000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-171', 'Bhopal', 'Chennai', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-172', 'Bhopal', 'Chennai', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-173', 'Bhopal', 'Chennai', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-174', 'Bhopal', 'Chennai', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-175', 'Bhopal', 'Chennai', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-176', 'Bhopal', 'Chennai', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-177', 'Bhopal', 'Chennai', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-178', 'Bhopal', 'Chennai', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-179', 'Bhopal', 'Chennai', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-180', 'Bhopal', 'Chennai', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'BHO', 'MAA', 'Non-Refundable', 0),
('BHO-181', 'Bhopal', 'Pune', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-182', 'Bhopal', 'Pune', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'BHO', 'PNQ', 'Refundable', 0),
('BHO-183', 'Bhopal', 'Pune', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'BHO', 'PNQ', 'Refundable', 0),
('BHO-184', 'Bhopal', 'Pune', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'BHO', 'PNQ', 'Refundable', 0),
('BHO-185', 'Bhopal', 'Pune', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-186', 'Bhopal', 'Pune', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'BHO', 'PNQ', 'Refundable', 0),
('BHO-187', 'Bhopal', 'Pune', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-188', 'Bhopal', 'Pune', 0, 9786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'BHO', 'PNQ', 'Refundable', 0),
('BHO-189', 'Bhopal', 'Pune', 0, 9786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'BHO', 'PNQ', 'Refundable', 0),
('BHO-190', 'Bhopal', 'Pune', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-191', 'Bhopal', 'Pune', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-192', 'Bhopal', 'Pune', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-193', 'Bhopal', 'Pune', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-194', 'Bhopal', 'Pune', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-195', 'Bhopal', 'Pune', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-196', 'Bhopal', 'Pune', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-197', 'Bhopal', 'Pune', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-198', 'Bhopal', 'Pune', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-199', 'Bhopal', 'Pune', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'BHO', 'PNQ', 'Non-Refundable', 0),
('BHO-200', 'Bhopal', 'Pune', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'BHO', 'PNQ', 'Non-Refundable', 0),
('CCU-001', 'Kolkata', 'Ahmedabad', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-002', 'Kolkata', 'Ahmedabad', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'CCU', 'AMD', 'Refundable', 0),
('CCU-003', 'Ahmedabad', 'Pune', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'CCU', 'AMD', 'Refundable', 0),
('CCU-004', 'Kolkata', 'Ahmedabad', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'CCU', 'AMD', 'Refundable', 0),
('CCU-005', 'Kolkata', 'Ahmedabad', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-006', 'Kolkata', 'Ahmedabad', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'CCU', 'AMD', 'Refundable', 0),
('CCU-007', 'Kolkata', 'Ahmedabad', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-008', 'Kolkata', 'Ahmedabad', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'CCU', 'AMD', 'Refundable', 0),
('CCU-009', 'Kolkata', 'Ahmedabad', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'CCU', 'AMD', 'Refundable', 0),
('CCU-010', 'Kolkata', 'Ahmedabad', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-011', 'Kolkata', 'Ahmedabad', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-012', 'Kolkata', 'Ahmedabad', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-013', 'Kolkata', 'Ahmedabad', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-014', 'Kolkata', 'Ahmedabad', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-015', 'Kolkata', 'Ahmedabad', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-016', 'Kolkata', 'Ahmedabad', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-017', 'Kolkata', 'Ahmedabad', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-018', 'Kolkata', 'Ahmedabad', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-019', 'Kolkata', 'Ahmedabad', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-020', 'Kolkata', 'Ahmedabad', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'CCU', 'AMD', 'Non-Refundable', 0),
('CCU-021', 'Kolkata', 'Bhopal', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-022', 'Kolkata', 'Bhopal', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'CCU', 'BHO', 'Refundable', 0),
('CCU-023', 'Kolkata', 'Bhopal', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'CCU', 'BHO', 'Refundable', 0),
('CCU-024', 'Kolkata', 'Bhopal', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'CCU', 'BHO', 'Refundable', 0),
('CCU-025', 'Kolkata', 'Bhopal', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-026', 'Kolkata', 'Bhopal', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'CCU', 'BHO', 'Refundable', 0),
('CCU-027', 'Kolkata', 'Bhopal', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-028', 'Kolkata', 'Bhopal', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'CCU', 'BHO', 'Refundable', 0),
('CCU-029', 'Kolkata', 'Bhopal', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'CCU', 'BHO', 'Refundable', 0),
('CCU-030', 'Kolkata', 'Bhopal', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-031', 'Kolkata', 'Bhopal', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-032', 'Kolkata', 'Bhopal', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-033', 'Kolkata', 'Bhopal', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-034', 'Kolkata', 'Bhopal', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-035', 'Kolkata', 'Bhopal', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-036', 'Kolkata', 'Bhopal', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-037', 'Kolkata', 'Bhopal', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-038', 'Kolkata', 'Bhopal', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-039', 'Kolkata', 'Bhopal', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-040', 'Kolkata', 'Bhopal', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'CCU', 'BHO', 'Non-Refundable', 0),
('CCU-041', 'Kolkata', 'Bengaluru', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-042', 'Kolkata', 'Bengaluru', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'CCU', 'BLR', 'Refundable', 0),
('CCU-043', 'Kolkata', 'Bengaluru', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'CCU', 'BLR', 'Refundable', 0),
('CCU-044', 'Kolkata', 'Bengaluru', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'CCU', 'BLR', 'Refundable', 0),
('CCU-045', 'Kolkata', 'Bengaluru', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-046', 'Kolkata', 'Bengaluru', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'CCU', 'BLR', 'Refundable', 0),
('CCU-047', 'Kolkata', 'Bengaluru', 0, 7000, 'Economy', 14, '17:00', '06:40', 'AirIndia', 'CCU', 'BLR', 'Non-Refundable', 2),
('CCU-048', 'Kolkata', 'Bengaluru', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'CCU', 'BLR', 'Refundable', 0),
('CCU-049', 'Kolkata', 'Bengaluru', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'CCU', 'BLR', 'Refundable', 0),
('CCU-050', 'Kolkata', 'Bengaluru', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-051', 'Kolkata', 'Bengaluru', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-052', 'Kolkata', 'Bengaluru', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-053', 'Kolkata', 'Bengaluru', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-054', 'Kolkata', 'Bengaluru', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-055', 'Kolkata', 'Bengaluru', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-056', 'Kolkata', 'Bengaluru', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-057', 'Kolkata', 'Bengaluru', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-058', 'Kolkata', 'Bengaluru', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-059', 'Kolkata', 'Bengaluru', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-060', 'Kolkata', 'Bengaluru', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'CCU', 'BLR', 'Non-Refundable', 0),
('CCU-061', 'Kolkata', 'Mumbai', 0, 15500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-062', 'Kolkata', 'Mumbai', 0, 15500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'CCU', 'BOM', 'Refundable', 0),
('CCU-063', 'Kolkata', 'Mumbai', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'CCU', 'BOM', 'Refundable', 0),
('CCU-064', 'Kolkata', 'Mumbai', 0, 11015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'CCU', 'BOM', 'Refundable', 0),
('CCU-065', 'Kolkata', 'Mumbai', 0, 11015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-066', 'Kolkata', 'Mumbai', 0, 10725, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'CCU', 'BOM', 'Refundable', 0),
('CCU-067', 'Kolkata', 'Mumbai', 0, 10000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-068', 'Kolkata', 'Mumbai', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'CCU', 'BOM', 'Refundable', 0),
('CCU-069', 'Kolkata', 'Mumbai', 0, 9726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'CCU', 'BOM', 'Refundable', 0),
('CCU-070', 'Kolkata', 'Mumbai', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-071', 'Kolkata', 'Mumbai', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-072', 'Kolkata', 'Mumbai', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-073', 'Kolkata', 'Mumbai', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-074', 'Kolkata', 'Mumbai', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-075', 'Kolkata', 'Mumbai', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-076', 'Kolkata', 'Mumbai', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-077', 'Kolkata', 'Mumbai', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-078', 'Kolkata', 'Mumbai', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-079', 'Kolkata', 'Mumbai', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-080', 'Kolkata', 'Mumbai', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'CCU', 'BOM', 'Non-Refundable', 0),
('CCU-081', 'Kolkata', 'New Delhi', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-082', 'Kolkata', 'New Delhi', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'CCU', 'DEL', 'Refundable', 0),
('CCU-083', 'Kolkata', 'New Delhi', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'CCU', 'DEL', 'Refundable', 0),
('CCU-084', 'Kolkata', 'New Delhi', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'CCU', 'DEL', 'Refundable', 0),
('CCU-085', 'Kolkata', 'New Delhi', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-086', 'Kolkata', 'New Delhi', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'CCU', 'DEL', 'Refundable', 0),
('CCU-087', 'Kolkata', 'New Delhi', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-088', 'Kolkata', 'New Delhi', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'CCU', 'DEL', 'Refundable', 0),
('CCU-089', 'Kolkata', 'New Delhi', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'CCU', 'DEL', 'Refundable', 0),
('CCU-090', 'Kolkata', 'New Delhi', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-091', 'Kolkata', 'New Delhi', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-092', 'Kolkata', 'New Delhi', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-093', 'Kolkata', 'New Delhi', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-094', 'Kolkata', 'New Delhi', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-095', 'Kolkata', 'New Delhi', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-096', 'Kolkata', 'New Delhi', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-097', 'Kolkata', 'New Delhi', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-098', 'Kolkata', 'New Delhi', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-099', 'Kolkata', 'New Delhi', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-100', 'Kolkata', 'New Delhi', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'CCU', 'DEL', 'Non-Refundable', 0),
('CCU-101', 'Kolkata', 'Guwahati', 0, 1500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-102', 'Kolkata', 'Guwahati', 0, 1500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'CCU', 'GAU', 'Refundable', 0),
('CCU-103', 'Kolkata', 'Guwahati', 0, 2318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'CCU', 'GAU', 'Refundable', 0),
('CCU-104', 'Kolkata', 'Guwahati', 0, 3015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'CCU', 'GAU', 'Refundable', 0),
('CCU-105', 'Kolkata', 'Guwahati', 0, 3015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-106', 'Kolkata', 'Guwahati', 0, 2700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'CCU', 'GAU', 'Refundable', 0),
('CCU-107', 'Kolkata', 'Guwahati', 0, 2000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-108', 'Kolkata', 'Guwahati', 0, 1766, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'CCU', 'GAU', 'Refundable', 0),
('CCU-109', 'Kolkata', 'Guwahati', 0, 1726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'CCU', 'GAU', 'Refundable', 0),
('CCU-110', 'Kolkata', 'Guwahati', 0, 2000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-111', 'Kolkata', 'Guwahati', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-112', 'Kolkata', 'Guwahati', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-113', 'Kolkata', 'Guwahati', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-114', 'Kolkata', 'Guwahati', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-115', 'Kolkata', 'Guwahati', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-116', 'Kolkata', 'Guwahati', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-117', 'Kolkata', 'Guwahati', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-118', 'Kolkata', 'Guwahati', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-119', 'Kolkata', 'Guwahati', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-120', 'Kolkata', 'Guwahati', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'CCU', 'GAU', 'Non-Refundable', 0),
('CCU-121', 'Kolkata', 'Goa', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-122', 'Kolkata', 'Goa', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'CCU', 'GOI', 'Refundable', 0),
('CCU-123', 'Kolkata', 'Goa', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'CCU', 'GOI', 'Refundable', 0),
('CCU-124', 'Kolkata', 'Goa', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'CCU', 'GOI', 'Refundable', 0),
('CCU-125', 'Kolkata', 'Goa', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-126', 'Kolkata', 'Goa', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'CCU', 'GOI', 'Refundable', 0),
('CCU-127', 'Kolkata', 'Goa', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-128', 'Kolkata', 'Goa', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'CCU', 'GOI', 'Refundable', 0),
('CCU-129', 'Kolkata', 'Goa', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'CCU', 'GOI', 'Refundable', 0),
('CCU-130', 'Kolkata', 'Goa', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-131', 'Kolkata', 'Goa', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-132', 'Kolkata', 'Goa', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-133', 'Kolkata', 'Goa', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-134', 'Kolkata', 'Goa', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-135', 'Kolkata', 'Goa', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-136', 'Kolkata', 'Goa', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-137', 'Kolkata', 'Goa', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-138', 'Kolkata', 'Goa', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-139', 'Kolkata', 'Goa', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-140', 'Kolkata', 'Goa', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'CCU', 'GOI', 'Non-Refundable', 0),
('CCU-141', 'Kolkata', 'Jaipur', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-142', 'Kolkata', 'Jaipur', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'CCU', 'JAI', 'Refundable', 0),
('CCU-143', 'Kolkata', 'Jaipur', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'CCU', 'JAI', 'Refundable', 0),
('CCU-144', 'Kolkata', 'Jaipur', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'CCU', 'JAI', 'Refundable', 0),
('CCU-145', 'Kolkata', 'Jaipur', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-146', 'Kolkata', 'Jaipur', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'CCU', 'JAI', 'Refundable', 0),
('CCU-147', 'Kolkata', 'Jaipur', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-148', 'Kolkata', 'Jaipur', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'CCU', 'JAI', 'Refundable', 0),
('CCU-149', 'Kolkata', 'Jaipur', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'CCU', 'JAI', 'Refundable', 0),
('CCU-150', 'Kolkata', 'Jaipur', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-151', 'Kolkata', 'Jaipur', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-152', 'Kolkata', 'Jaipur', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-153', 'Kolkata', 'Jaipur', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-154', 'Kolkata', 'Jaipur', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-155', 'Kolkata', 'Jaipur', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-156', 'Kolkata', 'Jaipur', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-157', 'Kolkata', 'Jaipur', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-158', 'Kolkata', 'Jaipur', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-159', 'Kolkata', 'Jaipur', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-160', 'Kolkata', 'Jaipur', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'CCU', 'JAI', 'Non-Refundable', 0),
('CCU-161', 'Kolkata', 'Chennai', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-162', 'Kolkata', 'Chennai', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'CCU', 'MAA', 'Refundable', 0),
('CCU-163', 'Kolkata', 'Chennai', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'CCU', 'MAA', 'Refundable', 0),
('CCU-164', 'Kolkata', 'Chennai', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'CCU', 'MAA', 'Refundable', 0),
('CCU-165', 'Kolkata', 'Chennai', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-166', 'Kolkata', 'Chennai', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'CCU', 'MAA', 'Refundable', 0),
('CCU-167', 'Kolkata', 'Chennai', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-168', 'Kolkata', 'Chennai', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'CCU', 'MAA', 'Refundable', 0),
('CCU-169', 'Kolkata', 'Chennai', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'CCU', 'MAA', 'Refundable', 0),
('CCU-170', 'Kolkata', 'Chennai', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-171', 'Kolkata', 'Chennai', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-172', 'Kolkata', 'Chennai', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-173', 'Kolkata', 'Chennai', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-174', 'Kolkata', 'Chennai', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-175', 'Kolkata', 'Chennai', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-176', 'Kolkata', 'Chennai', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-177', 'Kolkata', 'Chennai', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-178', 'Kolkata', 'Chennai', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-179', 'Kolkata', 'Chennai', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-180', 'Kolkata', 'Chennai', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'CCU', 'MAA', 'Non-Refundable', 0),
('CCU-181', 'Kolkata', 'Pune', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-182', 'Kolkata', 'Pune', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'CCU', 'PNQ', 'Refundable', 0),
('CCU-183', 'Kolkata', 'Pune', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'CCU', 'PNQ', 'Refundable', 0),
('CCU-184', 'Kolkata', 'Pune', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'CCU', 'PNQ', 'Refundable', 0),
('CCU-185', 'Kolkata', 'Pune', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-186', 'Kolkata', 'Pune', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'CCU', 'PNQ', 'Refundable', 0),
('CCU-187', 'Kolkata', 'Pune', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-188', 'Kolkata', 'Pune', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'CCU', 'PNQ', 'Refundable', 0),
('CCU-189', 'Kolkata', 'Pune', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'CCU', 'PNQ', 'Refundable', 0),
('CCU-190', 'Kolkata', 'Pune', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-191', 'Kolkata', 'Pune', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-192', 'Kolkata', 'Pune', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-193', 'Kolkata', 'Pune', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-194', 'Kolkata', 'Pune', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-195', 'Kolkata', 'Pune', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-196', 'Kolkata', 'Pune', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-197', 'Kolkata', 'Pune', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-198', 'Kolkata', 'Pune', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-199', 'Kolkata', 'Pune', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'CCU', 'PNQ', 'Non-Refundable', 0),
('CCU-200', 'Kolkata', 'Pune', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'CCU', 'PNQ', 'Non-Refundable', 0),
('DEL-001', 'New Delhi', 'Ahmedabad', 0, 5500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-002', 'New Delhi', 'Ahmedabad', 0, 4600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'DEL', 'AMD', 'Refundable', 0),
('DEL-003', 'New Delhi', 'Ahmedabad', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'DEL', 'AMD', 'Refundable', 0),
('DEL-004', 'New Delhi', 'Ahmedabad', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'DEL', 'AMD', 'Refundable', 0),
('DEL-0047', 'New Delhi', 'Bhopal', 0, 7990, 'Economy', 16, '10:30', '12:30', 'AirIndia', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-005', 'New Delhi', 'Ahmedabad', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-006', 'New Delhi', 'Ahmedabad', 0, 4700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'DEL', 'AMD', 'Refundable', 0),
('DEL-007', 'New Delhi', 'Ahmedabad', 0, 7000, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-008', 'New Delhi', 'Ahmedabad', 0, 4786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'DEL', 'AMD', 'Refundable', 0),
('DEL-009', 'New Delhi', 'Ahmedabad', 0, 5786, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'DEL', 'AMD', 'Refundable', 0);
INSERT INTO `flights` (`flight_no`, `origin`, `destination`, `distance`, `fare`, `class`, `seats_available`, `departs`, `arrives`, `operator`, `origin_code`, `destination_code`, `refundable`, `noOfBookings`) VALUES
('DEL-010', 'New Delhi', 'Ahmedabad', 0, 9000, 'Economy', 2, '6:35', '8:10', 'Vistara', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-011', 'New Delhi', 'Ahmedabad', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-012', 'New Delhi', 'Ahmedabad', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-013', 'New Delhi', 'Ahmedabad', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-014', 'New Delhi', 'Ahmedabad', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-015', 'New Delhi', 'Ahmedabad', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-016', 'New Delhi', 'Ahmedabad', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-017', 'New Delhi', 'Ahmedabad', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-018', 'New Delhi', 'Ahmedabad', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-019', 'New Delhi', 'Ahmedabad', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-020', 'New Delhi', 'Ahmedabad', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'DEL', 'AMD', 'Non-Refundable', 0),
('DEL-021', 'New Delhi', 'Bengaluru', 0, 4499, 'Economy', 12, '12:30', '15:30', 'IndiGo', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-022', 'New Delhi', 'Bengaluru', 0, 8300, 'Economy', 6, '20:40', '22:55', 'IndiGo', 'DEL', 'BLR', 'Refundable', 0),
('DEL-023', 'New Delhi', 'Bengaluru', 0, 5788, 'Economy', 36, '5:45', '8:45', 'GoAir', 'DEL', 'BLR', 'Refundable', 0),
('DEL-024', 'New Delhi', 'Bengaluru', 0, 4850, 'Economy', 8, '15:00', '18:00', 'GoAir', 'DEL', 'BLR', 'Refundable', 0),
('DEL-025', 'New Delhi', 'Bengaluru', 0, 4865, 'Economy', 23, '14:45', '17:20', 'IndiGo', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-026', 'New Delhi', 'Bengaluru', 0, 5772, 'Economy', 15, '5:20', '8:00', 'IndiGo', 'DEL', 'BLR', 'Refundable', 0),
('DEL-027', 'New Delhi', 'Bengaluru', 0, 5758, 'Economy', 16, '6:05', '9:00', 'Spicejet', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-028', 'New Delhi', 'Bengaluru', 0, 7400, 'Economy', 6, '17:55', '20:40', 'Spicejet', 'DEL', 'GAU', 'Refundable', 0),
('DEL-029', 'New Delhi', 'Bengaluru', 0, 7300, 'Economy', 15, '6:30', '9:15', 'Vistara', 'DEL', 'BLR', 'Refundable', 0),
('DEL-030', 'New Delhi', 'Bengaluru', 0, 7300, 'Economy', 2, '17:20', '20:05', 'Vistara', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-031', 'New Delhi', 'Bengaluru', 0, 19285, 'Business', 5, '6:10', '9:10', 'AirIndia', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-032', 'New Delhi', 'Bengaluru', 0, 19285, 'Business', 10, '9:45', '12:30', 'AirIndia', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-033', 'New Delhi', 'Bengaluru', 0, 19285, 'Business', 4, '13:25', '16:15', 'AirIndia', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-034', 'New Delhi', 'Bengaluru', 0, 19285, 'Business', 3, '20:30', '23:15', 'AirIndia', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-035', 'New Delhi', 'Bengaluru', 0, 19397, 'Business', 9, '7:05', '9:50', 'Jet Airways', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-036', 'New Delhi', 'Bengaluru', 0, 19397, 'Business', 2, '12:00', '14:35', 'Jet Airways', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-037', 'New Delhi', 'Bengaluru', 0, 19397, 'Business', 6, '16:25', '19:10', 'Jet Airways', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-038', 'New Delhi', 'Bengaluru', 0, 19397, 'Business', 6, '20:45', '23:25', 'Jet Airways', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-039', 'New Delhi', 'Bengaluru', 0, 27930, 'Business', 3, '6:30', '9:15', 'Jet Airways', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-040', 'New Delhi', 'Bengaluru', 0, 27930, 'Business', 7, '7:55', '10:45', 'Jet Airways', 'DEL', 'BLR', 'Non-Refundable', 0),
('DEL-041', 'New Delhi', 'Bhopal', 0, 5515, 'Economy', 12, '00:25', '2:00', 'Jet Airways', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-042', 'New Delhi', 'Bhopal', 0, 6830, 'Economy', 6, '5:00', '7:35', 'Jet Airways', 'DEL', 'BHO', 'Refundable', 0),
('DEL-043', 'New Delhi', 'Bhopal', 0, 6830, 'Economy', 36, '6:35', '8:55', 'Jet Airways', 'DEL', 'BHO', 'Refundable', 0),
('DEL-044', 'New Delhi', 'Bhopal', 0, 6830, 'Economy', 8, '9:50', '14:00', 'Jet Airways', 'DEL', 'BHO', 'Refundable', 0),
('DEL-045', 'New Delhi', 'Bhopal', 0, 7441, 'Economy', 23, '6:00', '8:50', 'Jet Airways', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-046', 'New Delhi', 'Bhopal', 0, 7999, 'Economy', 15, '14:30', '16:55', 'AirIndia', 'DEL', 'BHO', 'Refundable', 0),
('DEL-048', 'New Delhi', 'Bhopal', 0, 7990, 'Economy', 6, '18:35', '20:00', 'AirIndia', 'DEL', 'BHO', 'Refundable', 0),
('DEL-049', 'New Delhi', 'Bhopal', 0, 8142, 'Economy', 15, '20:35', '23:30', 'AirIndia', 'DEL', 'BHO', 'Refundable', 0),
('DEL-050', 'New Delhi', 'Bhopal', 0, 10000, 'Economy', 2, '15:30', '19:15', 'AirIndia', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-051', 'New Delhi', 'Bhopal', 0, 14000, 'Business', 5, '5:45', '7:00', 'Jet Airways', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-052', 'New Delhi', 'Bhopal', 0, 39100, 'Business', 10, '9:45', '7:25', 'Jet Airways', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-053', 'New Delhi', 'Bhopal', 0, 39100, 'Business', 4, '10:30', '7:25', 'Jet Airways', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-054', 'New Delhi', 'Bhopal', 0, 39100, 'Business', 3, '11:35', '7:25', 'Jet Airways', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-055', 'New Delhi', 'Bhopal', 0, 39100, 'Business', 9, '21:50', '7:25', 'Jet Airways', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-056', 'New Delhi', 'Bhopal', 0, 16700, 'Business', 2, '6:10', '7:35', 'AirIndia', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-057', 'New Delhi', 'Bhopal', 0, 16700, 'Business', 6, '19:55', '21:15', 'AirIndia', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-058', 'New Delhi', 'Bhopal', 0, 46020, 'Business', 10, '18:30', '17:40', 'AirIndia', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-059', 'New Delhi', 'Bhopal', 0, 46020, 'Business', 3, '12:25', '17:40', 'AirIndia', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-060', 'New Delhi', 'Bhopal', 0, 46020, 'Business', 7, '23:00', '7:20', 'AirIndia', 'DEL', 'BHO', 'Non-Refundable', 0),
('DEL-061', 'New Delhi', 'Guwahati', 0, 5515, 'Economy', 12, '00:25', '2:00', 'IndiGo', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-062', 'New Delhi', 'Guwahati', 0, 6830, 'Economy', 6, '5:00', '7:35', 'AirAsia', 'DEL', 'GAU', 'Refundable', 0),
('DEL-063', 'New Delhi', 'Guwahati', 0, 6830, 'Economy', 36, '6:35', '8:55', 'AirAsia', 'DEL', 'GAU', 'Refundable', 0),
('DEL-064', 'New Delhi', 'Guwahati', 0, 6830, 'Economy', 8, '9:50', '14:00', 'AirAsia', 'DEL', 'GAU', 'Refundable', 0),
('DEL-065', 'New Delhi', 'Guwahati', 0, 7441, 'Economy', 23, '6:00', '8:50', 'Spicejet', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-066', 'New Delhi', 'Guwahati', 0, 7999, 'Economy', 15, '14:30', '16:55', 'Spicejet', 'DEL', 'GAU', 'Refundable', 0),
('DEL-067', 'New Delhi', 'Guwahati', 0, 7990, 'Economy', 16, '10:30', '12:30', 'IndiGo', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-068', 'New Delhi', 'Guwahati', 0, 7990, 'Economy', 6, '18:35', '20:00', 'GoAir', 'DEL', 'GAU', 'Refundable', 0),
('DEL-069', 'New Delhi', 'Guwahati', 0, 8142, 'Economy', 15, '20:35', '23:30', 'Vistara', 'DEL', 'GAU', 'Refundable', 0),
('DEL-070', 'New Delhi', 'Guwahati', 0, 10000, 'Economy', 2, '15:30', '19:15', 'IndiGo', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-071', 'New Delhi', 'Guwahati', 0, 15546, 'Business', 5, '2:00', '3:30', 'IndiGo', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-072', 'New Delhi', 'Guwahati', 0, 15546, 'Business', 10, '3:15', '5:00', 'IndiGo', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-073', 'New Delhi', 'Guwahati', 0, 15858, 'Business', 4, '4:10', '6:10', 'AirAsia', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-074', 'New Delhi', 'Guwahati', 0, 16500, 'Business', 3, '5:25', '7:20', 'AirAsia', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-075', 'New Delhi', 'Guwahati', 0, 17499, 'Business', 9, '15:30', '17:25', 'AirAsia', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-076', 'New Delhi', 'Guwahati', 0, 32165, 'Business', 2, '18:45', '6:45', 'GoAir', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-077', 'New Delhi', 'Guwahati', 0, 17000, 'Business', 3, '22:00', '12:20', 'Vistara', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-078', 'New Delhi', 'Guwahati', 0, 22055, 'Business', 6, '12:25', '12:25', 'Spicejet', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-079', 'New Delhi', 'Guwahati', 0, 35265, 'Business', 10, '03:00', '7:00', 'Spicejet', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-080', 'New Delhi', 'Guwahati', 0, 12335, 'Business', 7, '6:45', '23:35', 'Jet Airways', 'DEL', 'GAU', 'Non-Refundable', 0),
('DEL-081', 'New Delhi', 'Goa', 0, 3884, 'Economy', 12, '16:45', '19:30', 'IndiGo', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-082', 'New Delhi', 'Goa', 0, 4887, 'Economy', 6, '11:25', '14:05', 'AirAsia', 'DEL', 'GOI', 'Refundable', 0),
('DEL-083', 'New Delhi', 'Goa', 0, 4000, 'Economy', 3, '5:10', '8:00', 'AirAsia', 'DEL', 'GOI', 'Refundable', 0),
('DEL-084', 'New Delhi', 'Goa', 0, 4000, 'Economy', 8, '12:10', '14:50', 'AirAsia', 'DEL', 'GOI', 'Refundable', 0),
('DEL-085', 'New Delhi', 'Goa', 0, 6830, 'Economy', 23, '10:00', '14:45', 'Spicejet', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-086', 'New Delhi', 'Goa', 0, 6830, 'Economy', 15, '17:00', '3:20', 'Spicejet', 'DEL', 'GOI', 'Refundable', 0),
('DEL-087', 'New Delhi', 'Goa', 0, 4278, 'Economy', 16, '18:45', '21:20', 'IndiGo', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-088', 'New Delhi', 'Goa', 0, 10500, 'Economy', 6, '11:10', '13:45', 'GoAir', 'DEL', 'GOI', 'Refundable', 0),
('DEL-089', 'New Delhi', 'Goa', 0, 4025, 'Economy', 15, '10:45', '13:15', 'Vistara', 'DEL', 'GOI', 'Refundable', 0),
('DEL-090', 'New Delhi', 'Goa', 0, 7000, 'Economy', 2, '14:00', '17:50', 'IndiGo', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-091', 'New Delhi', 'Goa', 0, 23335, 'Business', 5, '11:10', '13:45', 'IndiGo', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-092', 'New Delhi', 'Goa', 0, 23335, 'Business', 10, '18:45', '21:20', 'IndiGo', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-093', 'New Delhi', 'Goa', 0, 29365, 'Business', 4, '11:05', '13:30', 'AirAsia', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-094', 'New Delhi', 'Goa', 0, 38250, 'Business', 3, '21:05', '12:45', 'AirAsia', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-095', 'New Delhi', 'Goa', 0, 38630, 'Business', 2, '19:00', '12:45', 'GoAir', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-096', 'New Delhi', 'Goa', 0, 38630, 'Business', 9, '16:05', '12:45', 'AirAsia', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-097', 'New Delhi', 'Goa', 0, 39100, 'Business', 6, '7:00', '3:20', 'Spicejet', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-098', 'New Delhi', 'Goa', 0, 39100, 'Business', 10, '8:00', '3:20', 'Spicejet', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-099', 'New Delhi', 'Goa', 0, 35050, 'Business', 3, '22:45', '6:35', 'Vistara', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-100', 'New Delhi', 'Goa', 0, 35050, 'Business', 7, '21:50', '3:45', 'Jet Airways', 'DEL', 'GOI', 'Non-Refundable', 0),
('DEL-101', 'New Delhi', 'Hyderabad', 0, 5515, 'Economy', 12, '00:25', '2:00', 'IndiGo', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-102', 'New Delhi', 'Hyderabad', 0, 6830, 'Economy', 6, '5:00', '7:35', 'AirAsia', 'DEL', 'HYD', 'Refundable', 0),
('DEL-103', 'New Delhi', 'Hyderabad', 0, 6830, 'Economy', 24, '6:35', '8:55', 'AirAsia', 'DEL', 'HYD', 'Refundable', 12),
('DEL-104', 'New Delhi', 'Hyderabad', 0, 6830, 'Economy', 8, '9:50', '14:00', 'AirAsia', 'DEL', 'HYD', 'Refundable', 0),
('DEL-105', 'New Delhi', 'Hyderabad', 0, 7441, 'Economy', 23, '6:00', '8:50', 'Spicejet', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-106', 'New Delhi', 'Hyderabad', 0, 7999, 'Economy', 15, '14:30', '16:55', 'Spicejet', 'DEL', 'HYD', 'Refundable', 0),
('DEL-107', 'New Delhi', 'Hyderabad', 0, 7990, 'Economy', 16, '10:30', '12:30', 'IndiGo', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-108', 'New Delhi', 'Hyderabad', 0, 7990, 'Economy', 6, '18:35', '20:00', 'GoAir', 'DEL', 'HYD', 'Refundable', 0),
('DEL-109', 'New Delhi', 'Hyderabad', 0, 8142, 'Economy', 15, '20:35', '23:30', 'Vistara', 'DEL', 'HYD', 'Refundable', 0),
('DEL-110', 'New Delhi', 'Hyderabad', 0, 10000, 'Economy', 2, '15:30', '19:15', 'IndiGo', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-111', 'New Delhi', 'Hyderabad', 0, 15546, 'Business', 5, '2:00', '3:30', 'IndiGo', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-112', 'New Delhi', 'Hyderabad', 0, 15546, 'Business', 10, '3:15', '5:00', 'IndiGo', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-113', 'New Delhi', 'Hyderabad', 0, 15858, 'Business', 4, '4:10', '6:10', 'AirAsia', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-114', 'New Delhi', 'Hyderabad', 0, 16500, 'Business', 3, '5:25', '7:20', 'AirAsia', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-115', 'New Delhi', 'Hyderabad', 0, 17499, 'Business', 9, '15:30', '17:25', 'AirAsia', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-116', 'New Delhi', 'Hyderabad', 0, 32165, 'Business', 2, '18:45', '6:45', 'GoAir', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-117', 'New Delhi', 'Hyderabad', 0, 22055, 'Business', 6, '12:25', '12:25', 'Spicejet', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-118', 'New Delhi', 'Hyderabad', 0, 35265, 'Business', 10, '03:00', '7:00', 'Spicejet', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-119', 'New Delhi', 'Hyderabad', 0, 17000, 'Business', 3, '22:00', '12:20', 'Vistara', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-120', 'New Delhi', 'Hyderabad', 0, 12335, 'Business', 7, '6:45', '23:35', 'Jet Airways', 'DEL', 'HYD', 'Non-Refundable', 0),
('DEL-121', 'New Delhi', 'Kolkata', 0, 5515, 'Economy', 12, '00:25', '2:00', 'AirAsia', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-122', 'New Delhi', 'Kolkata', 0, 6830, 'Economy', 6, '5:00', '7:35', 'AirAsia', 'DEL', 'CCU', 'Refundable', 0),
('DEL-123', 'New Delhi', 'Kolkata', 0, 6830, 'Economy', 36, '6:35', '8:55', 'AirAsia', 'DEL', 'CCU', 'Refundable', 0),
('DEL-124', 'New Delhi', 'Kolkata', 0, 6830, 'Economy', 8, '9:50', '14:00', 'Spicejet', 'DEL', 'CCU', 'Refundable', 0),
('DEL-125', 'New Delhi', 'Kolkata', 0, 7441, 'Economy', 23, '6:00', '8:50', 'Spicejet', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-126', 'New Delhi', 'Kolkata', 0, 7999, 'Economy', 15, '14:30', '16:55', 'Spicejet', 'DEL', 'CCU', 'Refundable', 0),
('DEL-127', 'New Delhi', 'Kolkata', 0, 7990, 'Economy', 16, '10:30', '12:30', 'GoAir', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-128', 'New Delhi', 'Kolkata', 0, 7990, 'Economy', 6, '18:35', '20:00', 'IndiGo', 'DEL', 'CCU', 'Refundable', 0),
('DEL-129', 'New Delhi', 'Kolkata', 0, 8142, 'Economy', 15, '20:35', '23:30', 'IndiGo', 'DEL', 'CCU', 'Refundable', 0),
('DEL-130', 'New Delhi', 'Kolkata', 0, 10000, 'Economy', 2, '15:30', '19:15', 'IndiGo', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-131', 'New Delhi', 'Kolkata', 0, 15546, 'Business', 5, '2:00', '3:30', 'Jet Airways', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-132', 'New Delhi', 'Kolkata', 0, 15546, 'Business', 10, '3:15', '5:00', 'Jet Airways', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-133', 'New Delhi', 'Kolkata', 0, 15858, 'Business', 4, '4:10', '6:10', 'Jet Airways', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-134', 'New Delhi', 'Kolkata', 0, 16500, 'Business', 3, '5:25', '7:20', 'Jet Airways', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-135', 'New Delhi', 'Kolkata', 0, 17499, 'Business', 9, '15:30', '17:25', 'AirIndia', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-136', 'New Delhi', 'Kolkata', 0, 32165, 'Business', 2, '18:45', '6:45', 'AirIndia', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-137', 'New Delhi', 'Kolkata', 0, 22055, 'Business', 6, '12:25', '12:25', 'AirIndia', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-138', 'New Delhi', 'Kolkata', 0, 35265, 'Business', 10, '03:00', '7:00', 'Vistara', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-139', 'New Delhi', 'Kolkata', 0, 17000, 'Business', 3, '22:00', '12:20', 'Vistara', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-140', 'New Delhi', 'Kolkata', 0, 12335, 'Business', 7, '6:45', '23:35', 'Vistara', 'DEL', 'CCU', 'Non-Refundable', 0),
('DEL-141', 'New Delhi', 'Chennai', 0, 3568, 'Economy', 12, '14:00', '16:40', 'Jet Airways', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-142', 'New Delhi', 'Chennai', 0, 3568, 'Economy', 6, '21:45', '0:35', 'Jet Airways', 'DEL', 'MAA', 'Refundable', 0),
('DEL-143', 'New Delhi', 'Chennai', 0, 3600, 'Economy', 10, '6:05', '8:45', 'AirIndia', 'DEL', 'MAA', 'Refundable', 0),
('DEL-144', 'New Delhi', 'Chennai', 0, 3600, 'Economy', 8, '12:30', '15:15', 'AirIndia', 'DEL', 'MAA', 'Refundable', 0),
('DEL-145', 'New Delhi', 'Chennai', 0, 3737, 'Economy', 23, '6:55', '9:45', 'Spicejet', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-146', 'New Delhi', 'Chennai', 0, 3940, 'Economy', 15, '6:50', '9:35', 'Jet Airways', 'DEL', 'MAA', 'Refundable', 0),
('DEL-147', 'New Delhi', 'Chennai', 0, 4076, 'Economy', 16, '21:45', '00:50', 'IndiGo', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-148', 'New Delhi', 'Chennai', 0, 4314, 'Economy', 6, '14:45', '17:25', 'Spicejet', 'DEL', 'MAA', 'Refundable', 0),
('DEL-149', 'New Delhi', 'Chennai', 0, 4314, 'Economy', 15, '20:40', '23:20', 'Spicejet', 'DEL', 'MAA', 'Refundable', 0),
('DEL-150', 'New Delhi', 'Chennai', 0, 4750, 'Economy', 2, '17:20', '20:05', 'AirIndia', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-151', 'New Delhi', 'Chennai', 0, 14850, 'Business', 5, '6:05', '8:45', 'AirIndia', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-152', 'New Delhi', 'Chennai', 0, 14850, 'Business', 10, '17:20', '20:05', 'AirIndia', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-153', 'New Delhi', 'Chennai', 0, 19825, 'Business', 9, '20:45', '23:35', 'AirIndia', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-154', 'New Delhi', 'Chennai', 0, 19825, 'Business', 4, '9:55', '12:40', 'AirIndia', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-155', 'New Delhi', 'Chennai', 0, 19825, 'Business', 3, '12:30', '15:15', 'AirIndia', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-156', 'New Delhi', 'Chennai', 0, 19341, 'Business', 2, '6:50', '9:35', 'Jet Airways', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-157', 'New Delhi', 'Chennai', 0, 19341, 'Business', 6, '8:50', '11:25', 'Jet Airways', 'MAA', 'PNQ', 'Non-Refundable', 0),
('DEL-158', 'New Delhi', 'Chennai', 0, 19341, 'Business', 10, '11:00', '13:50', 'Jet Airways', 'MAA', 'PNQ', 'Non-Refundable', 0),
('DEL-159', 'New Delhi', 'Chennai', 0, 40000, 'Business', 3, '14:00', '16:40', 'Jet Airways', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-160', 'New Delhi', 'Chennai', 0, 42000, 'Business', 7, '16:00', '18:50', 'Jet Airways', 'DEL', 'MAA', 'Non-Refundable', 0),
('DEL-161', 'New Delhi', 'Mumbai', 0, 5297, 'Economy', 12, '8:45', '11:10', 'Vistara', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-162', 'New Delhi', 'Mumbai', 0, 5297, 'Economy', 6, '11:40', '13:50', 'Vistara', 'DEL', 'BOM', 'Refundable', 0),
('DEL-163', 'New Delhi', 'Mumbai', 0, 5297, 'Economy', 3, '15:25', '17:25', 'Vistara', 'DEL', 'BOM', 'Refundable', 0),
('DEL-164', 'New Delhi', 'Mumbai', 0, 5758, 'Economy', 8, '10:45', '12:50', 'GoAir', 'DEL', 'BOM', 'Refundable', 0),
('DEL-165', 'New Delhi', 'Mumbai', 0, 5758, 'Economy', 23, '22:30', '00:05', 'GoAir', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-166', 'New Delhi', 'Mumbai', 0, 5808, 'Economy', 15, '10:30', '12:50', 'IndiGo', 'DEL', 'BOM', 'Refundable', 0),
('DEL-167', 'New Delhi', 'Mumbai', 0, 6067, 'Economy', 16, '9:00', '11:10', 'AirIndia', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-168', 'New Delhi', 'Mumbai', 0, 6067, 'Economy', 6, '10:00', '12:15', 'AirIndia', 'DEL', 'BOM', 'Refundable', 0),
('DEL-169', 'New Delhi', 'Mumbai', 0, 6067, 'Economy', 15, '13:00', '15:10', 'AirIndia', 'DEL', 'BOM', 'Refundable', 0),
('DEL-170', 'New Delhi', 'Mumbai', 0, 6100, 'Economy', 2, '10:30', '12:35', 'Jet Airways', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-171', 'New Delhi', 'Guwahati', 0, 24610, 'Business', 5, '9:00', '11:10', 'AirIndia', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-172', 'New Delhi', 'Guwahati', 0, 24610, 'Business', 10, '10:00', '12:15', 'AirIndia', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-173', 'New Delhi', 'Guwahati', 0, 24610, 'Business', 4, '13:00', '15:10', 'AirIndia', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-174', 'New Delhi', 'Guwahati', 0, 24700, 'Business', 3, '17:00', '19:20', 'AirIndia', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-175', 'New Delhi', 'Guwahati', 0, 21999, 'Business', 9, '6:05', '8:30', 'Spicejet', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-176', 'New Delhi', 'Guwahati', 0, 21999, 'Business', 2, '19:55', '22:00', 'Spicejet', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-177', 'New Delhi', 'Guwahati', 0, 27815, 'Business', 6, '10:20', '12:25', 'Vistara', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-178', 'New Delhi', 'Guwahati', 0, 27815, 'Business', 10, '11:40', '13:50', 'Vistara', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-179', 'New Delhi', 'Guwahati', 0, 28973, 'Business', 3, '7:05', '9:10', 'Jet Airways', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-180', 'New Delhi', 'Guwahati', 0, 28973, 'Business', 7, '9:45', '11:50', 'Jet Airways', 'DEL', 'BOM', 'Non-Refundable', 0),
('DEL-181', 'New Delhi', 'Pune', 0, 5515, 'Economy', 12, '00:25', '2:00', 'IndiGo', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-182', 'New Delhi', 'Pune', 0, 6830, 'Economy', 6, '5:00', '7:35', 'AirAsia', 'DEL', 'PNQ', 'Refundable', 0),
('DEL-183', 'New Delhi', 'Pune', 0, 6830, 'Economy', 36, '6:35', '8:55', 'AirAsia', 'DEL', 'PNQ', 'Refundable', 0),
('DEL-184', 'New Delhi', 'Pune', 0, 7441, 'Economy', 23, '6:00', '8:50', 'Spicejet', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-185', 'New Delhi', 'Pune', 0, 6830, 'Economy', 8, '9:50', '14:00', 'AirAsia', 'DEL', 'PNQ', 'Refundable', 0),
('DEL-1865', 'New Delhi', 'Pune', 0, 7999, 'Economy', 15, '14:30', '16:55', 'Spicejet', 'DEL', 'PNQ', 'Refundable', 0),
('DEL-187', 'New Delhi', 'Pune', 0, 7990, 'Economy', 16, '10:30', '12:30', 'IndiGo', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-188', 'New Delhi', 'Pune', 0, 7990, 'Economy', 6, '18:35', '20:00', 'GoAir', 'DEL', 'PNQ', 'Refundable', 0),
('DEL-190', 'New Delhi', 'Pune', 0, 10000, 'Economy', 2, '15:30', '19:15', 'IndiGo', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-191', 'New Delhi', 'Pune', 0, 15546, 'Business', 5, '2:00', '3:30', 'IndiGo', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-192', 'New Delhi', 'Pune', 0, 15546, 'Business', 10, '3:15', '5:00', 'IndiGo', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-193', 'New Delhi', 'Pune', 0, 15858, 'Business', 4, '4:10', '6:10', 'AirAsia', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-194', 'New Delhi', 'Pune', 0, 16500, 'Business', 3, '5:25', '7:20', 'AirAsia', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-195', 'New Delhi', 'Pune', 0, 17499, 'Business', 9, '15:30', '17:25', 'AirAsia', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-196', 'New Delhi', 'Pune', 0, 32165, 'Business', 2, '18:45', '6:45', 'GoAir', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-197', 'New Delhi', 'Pune', 0, 22055, 'Business', 6, '12:25', '12:25', 'Spicejet', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-198', 'New Delhi', 'Pune', 0, 35265, 'Business', 10, '03:00', '7:00', 'Spicejet', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-199', 'New Delhi', 'Pune', 0, 17000, 'Business', 3, '22:00', '12:20', 'Vistara', 'DEL', 'PNQ', 'Non-Refundable', 0),
('DEL-200', 'New Delhi', 'Pune', 0, 12335, 'Business', 7, '6:45', '23:35', 'Jet Airways', 'DEL', 'PNQ', 'Non-Refundable', 0),
('GHY-001', 'Guwahati', 'Ahmedabad', 0, 8200, 'Economy', 12, '3:15', '7:30', 'IndiGo', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-002', 'Guwahati', 'Ahmedabad', 0, 8400, 'Economy', 6, '6:15', '8:45', 'IndiGo', 'GAU', 'AMD', 'Refundable', 0),
('GHY-003', 'Guwahati', 'Ahmedabad', 0, 4026, 'Economy', 36, '7:30', '9:50', 'IndiGo', 'GAU', 'AMD', 'Refundable', 0),
('GHY-004', 'Guwahati', 'Ahmedabad', 0, 4700, 'Economy', 8, '10:25', '12:55', 'IndiGo', 'GAU', 'AMD', 'Refundable', 0),
('GHY-005', 'Guwahati', 'Ahmedabad', 0, 7421, 'Economy', 23, '15:30', '18:05', 'AirIndia', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-006', 'Guwahati', 'Ahmedabad', 0, 7720, 'Economy', 15, '18:00', '20:30', 'AirAsia', 'GAU', 'AMD', 'Refundable', 0),
('GHY-007', 'Guwahati', 'Ahmedabad', 0, 8940, 'Economy', 16, '8:00', '10:00', 'AirIndia', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-008', 'Guwahati', 'Ahmedabad', 0, 4591, 'Economy', 6, '8:40', '10:30', 'IndiGo', 'GAU', 'AMD', 'Refundable', 0),
('GHY-009', 'Guwahati', 'Ahmedabad', 0, 3200, 'Economy', 15, '14:05', '16:30', 'Jet Airways', 'GAU', 'AMD', 'Refundable', 0),
('GHY-010', 'Guwahati', 'Ahmedabad', 0, 7580, 'Economy', 2, '19:25', '22:10', 'Jet Airways', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-011', 'Guwahati', 'Ahmedabad', 0, 18816, 'Business', 5, '2:00', '3:30', 'AirIndia', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-012', 'Guwahati', 'Ahmedabad', 0, 30616, 'Business', 10, '3:15', '5:00', 'AirIndia', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-013', 'Guwahati', 'Ahmedabad', 0, 52768, 'Business', 4, '4:10', '6:10', 'Vistara', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-014', 'Guwahati', 'Ahmedabad', 0, 32768, 'Business', 3, '5:25', '7:20', 'Vistara', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-015', 'Guwahati', 'Ahmedabad', 0, 34606, 'Business', 9, '15:30', '17:25', 'Jet Airways', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-016', 'Guwahati', 'Ahmedabad', 0, 77100, 'Business', 2, '18:45', '6:45', 'Jet Airways', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-017', 'Guwahati', 'Ahmedabad', 0, 70000, 'Business', 6, '12:25', '12:25', 'AirIndia', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-018', 'Guwahati', 'Ahmedabad', 0, 70000, 'Business', 10, '03:00', '7:00', 'AirIndia', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-019', 'Guwahati', 'Ahmedabad', 0, 60000, 'Business', 3, '22:00', '12:20', 'Jet Airways', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-020', 'Guwahati', 'Ahmedabad', 0, 55600, 'Business', 7, '6:45', '23:35', 'Jet Airways', 'GAU', 'AMD', 'Non-Refundable', 0),
('GHY-021', 'Guwahati', 'Bhopal', 0, 13600, 'Economy', 12, '19:30', '7:00', 'IndiGo', 'GAU', 'BHO', 'Non-Refundable', 0),
('GHY-022', 'Guwahati', 'Bhopal', 0, 13600, 'Economy', 6, '19:30', '20:15', 'IndiGo', 'GAU', 'BHO', 'Refundable', 0),
('GHY-023', 'Guwahati', 'Bhopal', 0, 14600, 'Economy', 36, '16:00', '7:00', 'IndiGo', 'GAU', 'BHO', 'Refundable', 0),
('GHY-024', 'Guwahati', 'Bhopal', 0, 22630, 'Economy', 8, '15:35', '21:15', 'IndiGo', 'GAU', 'BHO', 'Refundable', 0),
('GHY-025', 'Guwahati', 'Bhopal', 0, 22630, 'Economy', 23, '15:35', '7:15', 'AirIndia', 'GAU', 'BHO', 'Non-Refundable', 0),
('GHY-026', 'Guwahati', 'Bhopal', 0, 42410, 'Business', 12, '19:30', '7:00', 'IndiGo', 'GAU', 'BHO', 'Non-Refundable', 0),
('GHY-027', 'Guwahati', 'Bhopal', 0, 43900, 'Business', 6, '19:30', '20:15', 'IndiGo', 'GAU', 'BHO', 'Refundable', 0),
('GHY-028', 'Guwahati', 'Bhopal', 0, 43900, 'Business', 36, '16:00', '7:00', 'IndiGo', 'GAU', 'BHO', 'Refundable', 0),
('GHY-029', 'Guwahati', 'Bhopal', 0, 37810, 'Business', 8, '15:35', '21:15', 'IndiGo', 'GAU', 'BHO', 'Refundable', 0),
('GHY-030', 'Guwahati', 'Bhopal', 0, 41520, 'Business', 23, '15:35', '7:15', 'AirIndia', 'GAU', 'BHO', 'Non-Refundable', 0),
('GHY-031', 'Guwahati', 'Bengaluru', 0, 28816, 'Business', 5, '2:00', '3:30', 'AirIndia', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-032', 'Guwahati', 'Bengaluru', 0, 30616, 'Business', 10, '3:15', '5:00', 'AirIndia', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-033', 'Guwahati', 'Bengaluru', 0, 32768, 'Business', 4, '4:10', '6:10', 'Vistara', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-034', 'Guwahati', 'Bengaluru', 0, 32768, 'Business', 3, '5:25', '7:20', 'Vistara', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-036', 'Guwahati', 'Bengaluru', 0, 37100, 'Business', 2, '18:45', '6:45', 'Jet Airways', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-037', 'Guwahati', 'Bengaluru', 0, 40000, 'Business', 6, '12:25', '12:25', 'AirIndia', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-038', 'Guwahati', 'Bengaluru', 0, 40000, 'Business', 10, '03:00', '7:00', 'AirIndia', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-039', 'Guwahati', 'Bengaluru', 0, 40000, 'Business', 3, '22:00', '12:20', 'Jet Airways', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-040', 'Guwahati', 'Bengaluru', 0, 55600, 'Business', 7, '6:45', '23:35', 'Jet Airways', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-041', 'Guwahati', 'Mumbai', 0, 8999, 'Economy', 12, '15:50', '23:50', 'Spicejet', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-042', 'Guwahati', 'Mumbai', 0, 10300, 'Economy', 6, '15:50', '22:05', 'Spicejet', 'GAU', 'BOM', 'Refundable', 0),
('GHY-043', 'Guwahati', 'Mumbai', 0, 10300, 'Economy', 36, '17:40', '23:50', 'Spicejet', 'GAU', 'BOM', 'Refundable', 0),
('GHY-044', 'Guwahati', 'Mumbai', 0, 10375, 'Economy', 8, '15:20', '22:00', 'GoAir', 'GAU', 'BOM', 'Refundable', 0),
('GHY-045', 'Guwahati', 'Mumbai', 0, 10375, 'Economy', 23, '15:20', '23:00', 'GoAir', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-046', 'Guwahati', 'Mumbai', 0, 10500, 'Economy', 15, '11:45', '12:15', 'AirIndia', 'GAU', 'BOM', 'Refundable', 0),
('GHY-047', 'Guwahati', 'Mumbai', 0, 12650, 'Economy', 16, '18:50', '12:15', 'AirIndia', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-048', 'Guwahati', 'Mumbai', 0, 12500, 'Economy', 6, '10:30', '12:15', 'AirIndia', 'GAU', 'BOM', 'Refundable', 0),
('GHY-049', 'Guwahati', 'Mumbai', 0, 12417, 'Economy', 15, '8:35', '12:05', 'IndiGo', 'GAU', 'BOM', 'Refundable', 0),
('GHY-050', 'Guwahati', 'Mumbai', 0, 16410, 'Economy', 2, '7:25', '13:45', 'IndiGo', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-051', 'Guwahati', 'Mumbai', 0, 28000, 'Business', 5, '13:20', '23:25', 'Vistara', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-052', 'Guwahati', 'Mumbai', 0, 28000, 'Business', 10, '13:20', '8:05', 'Vistara', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-053', 'Guwahati', 'Mumbai', 0, 34000, 'Business', 4, '13:20', '14:55', 'Vistara', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-054', 'Guwahati', 'Mumbai', 0, 37700, 'Business', 3, '16:00', '23:00', 'Jet Airways', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-055', 'Guwahati', 'Mumbai', 0, 52000, 'Business', 3, '15:35', '22:15', 'AirIndia', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-056', 'Guwahati', 'Mumbai', 0, 38300, 'Business', 9, '8:15', '19:10', 'Jet Airways', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-057', 'Guwahati', 'Mumbai', 0, 38300, 'Business', 2, '15:45', '12:10', 'Jet Airways', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-058', 'Guwahati', 'Mumbai', 0, 38200, 'Business', 6, '11:45', '12:15', 'AirIndia', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-059', 'Guwahati', 'Mumbai', 0, 53000, 'Business', 10, '18:50', '00:25', 'AirIndia', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-060', 'Guwahati', 'Mumbai', 0, 34822, 'Business', 7, '6:40', '10:50', 'GoAir', 'GAU', 'BOM', 'Non-Refundable', 0),
('GHY-061', 'Guwahati', 'New Delhi', 0, 4400, 'Economy', 6, '6:15', '8:45', 'Spicejet', 'GAU', 'DEL', 'Refundable', 0),
('GHY-062', 'Guwahati', 'New Delhi', 0, 3200, 'Economy', 35, '7:30', '9:50', 'Spicejet', 'GAU', 'DEL', 'Refundable', 1),
('GHY-063', 'Guwahati', 'New Delhi', 0, 4800, 'Economy', 8, '10:25', '12:55', 'Spicejet', 'GAU', 'DEL', 'Refundable', 0),
('GHY-064', 'Guwahati', 'New Delhi', 0, 5150, 'Economy', 23, '15:30', '18:05', 'Spicejet', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-065', 'Guwahati', 'New Delhi', 0, 7099, 'Economy', 15, '18:00', '20:30', 'Jet Airways', 'GAU', 'DEL', 'Refundable', 0),
('GHY-066', 'Guwahati', 'New Delhi', 0, 3800, 'Economy', 16, '8:00', '10:00', 'IndiGo', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-067', 'Guwahati', 'New Delhi', 0, 6544, 'Economy', 6, '8:40', '10:30', 'IndiGo', 'GAU', 'DEL', 'Refundable', 0),
('GHY-068', 'Guwahati', 'New Delhi', 0, 3650, 'Economy', 15, '14:05', '16:30', 'GoAir', 'GAU', 'DEL', 'Refundable', 0),
('GHY-069', 'Guwahati', 'New Delhi', 0, 8965, 'Economy', 2, '19:25', '22:10', 'AirIndia', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-070', 'Guwahati', 'New Delhi', 0, 6000, 'Economy', 12, '5:15', '9:00', 'Vistara', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-071', 'Guwahati', 'New Delhi', 0, 15546, 'Business', 5, '2:00', '3:30', 'IndiGo', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-072', 'Guwahati', 'New Delhi', 0, 15546, 'Business', 10, '3:15', '5:00', 'IndiGo', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-073', 'Guwahati', 'New Delhi', 0, 15858, 'Business', 4, '4:10', '6:10', 'AirAsia', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-074', 'Guwahati', 'New Delhi', 0, 16500, 'Business', 3, '5:25', '7:20', 'AirAsia', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-075', 'Guwahati', 'New Delhi', 0, 17499, 'Business', 9, '15:30', '17:25', 'AirAsia', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-076', 'Guwahati', 'New Delhi', 0, 32165, 'Business', 2, '18:45', '6:45', 'GoAir', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-077', 'Guwahati', 'New Delhi', 0, 17000, 'Business', 3, '22:00', '12:20', 'Vistara', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-078', 'Guwahati', 'New Delhi', 0, 22055, 'Business', 6, '12:25', '12:25', 'Spicejet', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-079', 'Guwahati', 'New Delhi', 0, 35265, 'Business', 10, '03:00', '7:00', 'Spicejet', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-080', 'Guwahati', 'New Delhi', 0, 12335, 'Business', 7, '6:45', '23:35', 'Jet Airways', 'GAU', 'DEL', 'Non-Refundable', 0),
('GHY-081', 'Guwahati', 'Hyderabad', 0, 2800, 'Economy', 12, '19:30', '20:45', 'IndiGo', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-082', 'Guwahati', 'Hyderabad', 0, 2800, 'Economy', 6, '12:55', '20:45', 'IndiGo', 'GAU', 'HYD', 'Refundable', 0),
('GHY-083', 'Guwahati', 'Hyderabad', 0, 4026, 'Economy', 36, '15:55', '20:45', 'IndiGo', 'GAU', 'HYD', 'Refundable', 0),
('GHY-084', 'Guwahati', 'Hyderabad', 0, 4700, 'Economy', 8, '08:25', '17:05', 'IndiGo', 'GAU', 'HYD', 'Refundable', 0),
('GHY-085', 'Guwahati', 'Hyderabad', 0, 7421, 'Economy', 23, '08:25', '08:45', 'AirIndia', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-086', 'Guwahati', 'Hyderabad', 0, 7720, 'Economy', 15, '19:55', '20:00', 'AirAsia', 'GAU', 'HYD', 'Refundable', 0),
('GHY-087', 'Guwahati', 'Hyderabad', 0, 8940, 'Economy', 16, '15:25', '23:35', 'AirIndia', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-088', 'Guwahati', 'Hyderabad', 0, 9400, 'Economy', 15, '15:50', '23:25', 'Jet Airways', 'GAU', 'HYD', 'Refundable', 0),
('GHY-089', 'Guwahati', 'Hyderabad', 0, 9480, 'Economy', 2, '15:20', '23:00', 'Jet Airways', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-091', 'Guwahati', 'Hyderabad', 0, 30616, 'Business', 10, '3:15', '5:00', 'AirIndia', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-092', 'Guwahati', 'Hyderabad', 0, 32768, 'Business', 4, '4:10', '6:10', 'Vistara', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-093', 'Guwahati', 'Hyderabad', 0, 32768, 'Business', 3, '5:25', '7:20', 'Vistara', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-094', 'Guwahati', 'Hyderabad', 0, 34606, 'Business', 9, '15:30', '17:25', 'Jet Airways', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-095', 'Guwahati', 'Hyderabad', 0, 37100, 'Business', 2, '18:45', '6:45', 'Jet Airways', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-096', 'Guwahati', 'Hyderabad', 0, 40000, 'Business', 6, '12:25', '12:25', 'AirIndia', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-097', 'Guwahati', 'Hyderabad', 0, 40000, 'Business', 10, '03:00', '7:00', 'AirIndia', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-098', 'Guwahati', 'Hyderabad', 0, 40000, 'Business', 3, '22:00', '12:20', 'Jet Airways', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-099', 'Guwahati', 'Hyderabad', 0, 55600, 'Business', 7, '6:45', '23:35', 'Jet Airways', 'GAU', 'HYD', 'Non-Refundable', 0),
('GHY-100', 'Guwahati', 'Bengaluru', 0, 2800, 'Economy', 12, '3:15', '7:30', 'IndiGo', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-101', 'Guwahati', 'Bengaluru', 0, 2800, 'Economy', 6, '6:15', '8:45', 'IndiGo', 'GAU', 'BLR', 'Refundable', 0),
('GHY-102', 'Guwahati', 'Bengaluru', 0, 4026, 'Economy', 36, '7:30', '9:50', 'IndiGo', 'GAU', 'BLR', 'Refundable', 0),
('GHY-103', 'Guwahati', 'Bengaluru', 0, 4700, 'Economy', 8, '10:25', '12:55', 'IndiGo', 'GAU', 'BLR', 'Refundable', 0),
('GHY-104', 'Guwahati', 'Bengaluru', 0, 7421, 'Economy', 16, '15:30', '18:05', 'AirIndia', 'GAU', 'BLR', 'Non-Refundable', 7),
('GHY-105', 'Guwahati', 'Bengaluru', 0, 7720, 'Economy', 15, '18:00', '20:30', 'AirAsia', 'GAU', 'BLR', 'Refundable', 0),
('GHY-106', 'Guwahati', 'Bengaluru', 0, 8940, 'Economy', 16, '8:00', '10:00', 'AirIndia', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-107', 'Guwahati', 'Bengaluru', 0, 9191, 'Economy', 6, '8:40', '10:30', 'IndiGo', 'GAU', 'BLR', 'Refundable', 0),
('GHY-108', 'Guwahati', 'Bengaluru', 0, 9400, 'Economy', 15, '14:05', '16:30', 'Jet Airways', 'GAU', 'BLR', 'Refundable', 0),
('GHY-109', 'Guwahati', 'Bengaluru', 0, 9480, 'Economy', 2, '19:25', '22:10', 'Jet Airways', 'GAU', 'BLR', 'Non-Refundable', 0),
('GHY-110', 'Guwahati', 'Kolkata', 0, 3520, 'Economy', 12, '11:45', '13:05', 'AirIndia', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-111', 'Guwahati', 'Kolkata', 0, 4120, 'Economy', 6, '18:50', '20:00', 'AirIndia', 'GAU', 'CCU', 'Refundable', 0),
('GHY-112', 'Guwahati', 'Kolkata', 0, 4221, 'Economy', 36, '15:10', '16:30', 'Spicejet', 'GAU', 'CCU', 'Refundable', 0),
('GHY-113', 'Guwahati', 'Kolkata', 0, 4720, 'Economy', 8, '20:15', '21:50', 'Spicejet', 'GAU', 'CCU', 'Refundable', 0),
('GHY-114', 'Guwahati', 'Kolkata', 0, 4720, 'Economy', 23, '7:25', '8:40', 'IndiGo', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-115', 'Guwahati', 'Kolkata', 0, 4720, 'Economy', 15, '16:10', '17:55', 'IndiGo', 'GAU', 'CCU', 'Refundable', 0),
('GHY-116', 'Guwahati', 'Kolkata', 0, 5000, 'Economy', 16, '11:15', '12:15', 'GoAir', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-117', 'Guwahati', 'Kolkata', 0, 4500, 'Economy', 6, '8:55', '10:10', 'Jet Airways', 'GAU', 'CCU', 'Refundable', 0),
('GHY-118', 'Guwahati', 'Kolkata', 0, 4500, 'Economy', 15, '15:45', '17:10', 'Jet Airways', 'GAU', 'CCU', 'Refundable', 0),
('GHY-119', 'Guwahati', 'Kolkata', 0, 8400, 'Economy', 2, '12:50', '14:05', 'Jet Airways', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-120', 'Guwahati', 'Kolkata', 0, 13476, 'Business', 5, '11:45', '13:10', 'AirIndia', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-121', 'Guwahati', 'Kolkata', 0, 13476, 'Business', 10, '19:00', '20:00', 'AirIndia', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-122', 'Guwahati', 'Kolkata', 0, 41828, 'Business', 4, '15:35', '9:05', 'AirIndia', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-123', 'Guwahati', 'Kolkata', 0, 21746, 'Business', 3, '12:35', '13:45', 'AirIndia', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-124', 'Guwahati', 'Kolkata', 0, 13771, 'Business', 9, '8:55', '10:10', 'Jet Airways', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-125', 'Guwahati', 'Kolkata', 0, 13771, 'Business', 2, '15:45', '17:10', 'Jet Airways', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-126', 'Guwahati', 'Kolkata', 0, 13771, 'Business', 6, '19:15', '20:30', 'Jet Airways', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-127', 'Guwahati', 'Kolkata', 0, 21476, 'Business', 10, '14:00', '17:00', 'Jet Airways', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-128', 'Guwahati', 'Kolkata', 0, 31980, 'Business', 3, '13:20', '20:20', 'Vistara', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-129', 'Guwahati', 'Kolkata', 0, 31980, 'Business', 7, '13:20', '22:15', 'Vistara', 'GAU', 'CCU', 'Non-Refundable', 0),
('GHY-130', 'Guwahati', 'Chennai', 0, 8920, 'Economy', 12, '8:45', '13:25', 'IndiGo', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-131', 'Guwahati', 'Chennai', 0, 8970, 'Economy', 6, '19:00', '22:10', 'IndiGo', 'GAU', 'MAA', 'Refundable', 0),
('GHY-132', 'Guwahati', 'Chennai', 0, 8970, 'Economy', 36, '8:45', '15:35', 'IndiGo', 'GAU', 'MAA', 'Refundable', 0),
('GHY-133', 'Guwahati', 'Chennai', 0, 10570, 'Economy', 8, '12:25', '19:00', 'IndiGo', 'GAU', 'MAA', 'Refundable', 0),
('GHY-134', 'Guwahati', 'Chennai', 0, 10691, 'Economy', 23, '18:50', '17:05', 'AirIndia', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-135', 'Guwahati', 'Chennai', 0, 12277, 'Economy', 15, '18:50', '12:45', 'AirIndia', 'GAU', 'MAA', 'Refundable', 0),
('GHY-136', 'Guwahati', 'Chennai', 0, 13850, 'Economy', 16, '15:45', '23:35', 'Jet Airways', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-137', 'Guwahati', 'Chennai', 0, 14262, 'Economy', 6, '8:55', '7:55', 'Jet Airways', 'GAU', 'MAA', 'Refundable', 0),
('GHY-138', 'Guwahati', 'Chennai', 0, 14680, 'Economy', 15, '15:45', '18:05', 'Jet Airways', 'GAU', 'MAA', 'Refundable', 0),
('GHY-139', 'Guwahati', 'Chennai', 0, 14850, 'Economy', 2, '8:55', '17:20', 'Jet Airways', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-140', 'Guwahati', 'Chennai', 0, 65432, 'Business', 5, '15:35', '20:05', 'AirIndia', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-141', 'Guwahati', 'Chennai', 0, 45000, 'Business', 10, '15:35', '12:40', 'AirIndia', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-142', 'Guwahati', 'Chennai', 0, 34567, 'Business', 4, '11:45', '15:15', 'AirIndia', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-143', 'Guwahati', 'Chennai', 0, 54321, 'Business', 3, '15:35', '23:35', 'AirIndia', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-144', 'Guwahati', 'Chennai', 0, 45678, 'Business', 9, '11:45', '17:00', 'AirIndia', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-145', 'Guwahati', 'Chennai', 0, 56432, 'Business', 2, '16:00', '9:35', 'Jet Airways', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-146', 'Guwahati', 'Chennai', 0, 56740, 'Business', 6, '16:00', '11:25', 'Jet Airways', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-147', 'Guwahati', 'Chennai', 0, 45900, 'Business', 10, '16:00', '13:50', 'Jet Airways', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-148', 'Guwahati', 'Chennai', 0, 67543, 'Business', 3, '19:15', '23:40', 'Jet Airways', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-149', 'Guwahati', 'Chennai', 0, 45678, 'Business', 7, '16:00', '0:35', 'Jet Airways', 'GAU', 'MAA', 'Non-Refundable', 0),
('GHY-150', 'Guwahati', 'Pune', 0, 8999, 'Economy', 8, '13:25', '19:55', 'IndiGo', 'GAU', 'PNQ', 'Non-Refundable', 4),
('GHY-151', 'Guwahati', 'Pune', 0, 7215, 'Economy', 6, '15:25', '23:00', 'IndiGo', 'GAU', 'PNQ', 'Refundable', 0),
('GHY-152', 'Guwahati', 'Pune', 0, 4651, 'Economy', 11, '19:15', '00:05', 'Jet Airways', 'GAU', 'PNQ', 'Refundable', 9),
('GHY-153', 'Guwahati', 'Pune', 0, 9844, 'Economy', 8, '13:20', '03:00', 'Vistara', 'GAU', 'PNQ', 'Refundable', 0),
('GHY-154', 'Guwahati', 'Pune', 0, 6715, 'Economy', 21, '17:10', '00:10', 'IndiGo', 'GAU', 'PNQ', 'Non-Refundable', 2),
('GHY-155', 'Guwahati', 'Pune', 0, 9999, 'Economy', 15, '16:10', '22:00', 'IndiGo', 'GAU', 'PNQ', 'Refundable', 0),
('GHY-156', 'Guwahati', 'Pune', 0, 7480, 'Economy', 10, '14:25', '22:00', 'IndiGo', 'GAU', 'PNQ', 'Non-Refundable', 6),
('GHY-157', 'Guwahati', 'Pune', 0, 8456, 'Economy', 6, '15:20', '22:00', 'GoAir', 'GAU', 'PNQ', 'Refundable', 0),
('GHY-158', 'Guwahati', 'Pune', 0, 6165, 'Economy', 9, '15:45', '18:05', 'Jet Airways', 'GAU', 'PNQ', 'Refundable', 6),
('GHY-159', 'Guwahati', 'Pune', 0, 8499, 'Economy', 2, '18:05', '11:15', 'AirIndia', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-160', 'Guwahati', 'Pune', 0, 17899, 'Business', 5, '2:00', '3:30', 'AirIndia', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-161', 'Guwahati', 'Pune', 0, 18987, 'Business', 10, '3:15', '5:00', 'AirIndia', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-162', 'Guwahati', 'Pune', 0, 6325, 'Business', 4, '4:10', '6:10', 'Vistara', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-163', 'Guwahati', 'Pune', 0, 29844, 'Business', 3, '5:25', '7:20', 'Vistara', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-164', 'Guwahati', 'Pune', 0, 10400, 'Business', 9, '15:30', '17:25', 'Jet Airways', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-165', 'Guwahati', 'Pune', 0, 39999, 'Business', 2, '18:45', '6:45', 'Jet Airways', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-166', 'Guwahati', 'Pune', 0, 37480, 'Business', 6, '12:25', '12:25', 'AirIndia', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-167', 'Guwahati', 'Pune', 0, 38456, 'Business', 10, '03:00', '7:00', 'AirIndia', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-168', 'Guwahati', 'Pune', 0, 36165, 'Business', 3, '22:00', '12:20', 'Jet Airways', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-169', 'Guwahati', 'Pune', 0, 125400, 'Business', 7, '6:45', '23:35', 'Jet Airways', 'GAU', 'PNQ', 'Non-Refundable', 0),
('GHY-181', 'Guwahati', 'Goa', 0, 8303, 'Economy', 12, '00:15', '8:00', 'IndiGo', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-182', 'Guwahati', 'Goa', 0, 9979, 'Economy', 6, '2:15', '6:35', 'IndiGo', 'GAU', 'GOI', 'Refundable', 0),
('GHY-183', 'Guwahati', 'Goa', 0, 10029, 'Economy', 11, '11:45', '17:30', 'IndiGo', 'GAU', 'GOI', 'Refundable', 0),
('GHY-184', 'Guwahati', 'Goa', 0, 10029, 'Economy', 8, '17:55', '5:15', 'IndiGo', 'GAU', 'GOI', 'Refundable', 0),
('GHY-185', 'Guwahati', 'Goa', 0, 10198, 'Economy', 23, '19:45', '3:00', 'AirAsia', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-186', 'Guwahati', 'Goa', 0, 11420, 'Economy', 15, '21:00', '6:00', 'AirAsia', 'GAU', 'GOI', 'Refundable', 0),
('GHY-187', 'Guwahati', 'Goa', 0, 12202, 'Economy', 16, '3:15', '9:25', 'AirIndia', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-188', 'Guwahati', 'Goa', 0, 12000, 'Economy', 6, '4:15', '9:50', 'AirIndia', 'GAU', 'GOI', 'Refundable', 0),
('GHY-189', 'Guwahati', 'Goa', 0, 12496, 'Economy', 15, '6:25', '12:50', 'Jet Airways', 'GAU', 'GOI', 'Refundable', 0),
('GHY-190', 'Guwahati', 'Goa', 0, 13094, 'Economy', 2, '15:10', '22:10', 'Jet Airways', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-191', 'Guwahati', 'Goa', 0, 50000, 'Business', 5, '2:00', '3:30', 'AirIndia', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-192', 'Guwahati', 'Goa', 0, 50000, 'Business', 10, '3:15', '5:00', 'AirIndia', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-193', 'Guwahati', 'Goa', 0, 50000, 'Business', 4, '4:10', '6:10', 'AirIndia', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-194', 'Guwahati', 'Goa', 0, 50000, 'Business', 3, '5:25', '7:20', 'Vistara', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-195', 'Guwahati', 'Goa', 0, 33333, 'Business', 9, '15:30', '17:25', 'Jet Airways', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-196', 'Guwahati', 'Goa', 0, 33333, 'Business', 2, '18:45', '6:45', 'Jet Airways', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-197', 'Guwahati', 'Goa', 0, 45000, 'Business', 6, '12:25', '12:25', 'Jet Airways', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-198', 'Guwahati', 'Goa', 0, 24500, 'Business', 10, '03:00', '7:00', 'Jet Airways', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-199', 'Guwahati', 'Goa', 0, 32633, 'Business', 3, '22:00', '12:20', 'Jet Airways', 'GAU', 'GOI', 'Non-Refundable', 0),
('GHY-200', 'Guwahati', 'Goa', 0, 29999, 'Business', 7, '6:45', '23:35', 'Jet Airways', 'GAU', 'GOI', 'Non-Refundable', 0),
('GOA-001', 'Goa', 'Ahmedabad', 0, 4500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-002', 'Goa', 'Ahmedabad', 0, 4600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'GOI', 'AMD', 'Refundable', 0),
('GOA-003', 'Goa', 'Ahmedabad', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'GOI', 'AMD', 'Refundable', 0),
('GOA-004', 'Goa', 'Ahmedabad', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'GOI', 'AMD', 'Refundable', 0),
('GOA-005', 'Goa', 'Ahmedabad', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-006', 'Goa', 'Ahmedabad', 0, 2700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'GOI', 'AMD', 'Refundable', 0),
('GOA-007', 'Goa', 'Ahmedabad', 0, 2000, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-008', 'Goa', 'Ahmedabad', 0, 2786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'GOI', 'AMD', 'Refundable', 0),
('GOA-009', 'Goa', 'Ahmedabad', 0, 3786, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'GOI', 'AMD', 'Refundable', 0),
('GOA-010', 'Goa', 'Ahmedabad', 0, 7000, 'Economy', 2, '6:35', '8:10', 'Vistara', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-011', 'Goa', 'Ahmedabad', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-012', 'Goa', 'Ahmedabad', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-013', 'Goa', 'Ahmedabad', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-014', 'Goa', 'Ahmedabad', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-015', 'Goa', 'Ahmedabad', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-016', 'Goa', 'Ahmedabad', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-017', 'Goa', 'Ahmedabad', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-018', 'Goa', 'Ahmedabad', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-019', 'Goa', 'Ahmedabad', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-020', 'Goa', 'Ahmedabad', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'GOI', 'AMD', 'Non-Refundable', 0),
('GOA-021', 'Goa', 'Bhopal', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-022', 'Goa', 'Bhopal', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'GOI', 'BHO', 'Refundable', 0),
('GOA-023', 'Goa', 'Bhopal', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'GOI', 'BHO', 'Refundable', 0),
('GOA-024', 'Goa', 'Bhopal', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'GOI', 'BHO', 'Refundable', 0),
('GOA-025', 'Goa', 'Bhopal', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-026', 'Goa', 'Bhopal', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'GOI', 'BHO', 'Refundable', 0),
('GOA-027', 'Goa', 'Bhopal', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-028', 'Goa', 'Bhopal', 0, 9786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'GOI', 'BHO', 'Refundable', 0),
('GOA-029', 'Goa', 'Bhopal', 0, 9786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'GOI', 'BHO', 'Refundable', 0),
('GOA-030', 'Goa', 'Bhopal', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-031', 'Goa', 'Bhopal', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-032', 'Goa', 'Bhopal', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-033', 'Goa', 'Bhopal', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'GOI', 'BHO', 'Non-Refundable', 0);
INSERT INTO `flights` (`flight_no`, `origin`, `destination`, `distance`, `fare`, `class`, `seats_available`, `departs`, `arrives`, `operator`, `origin_code`, `destination_code`, `refundable`, `noOfBookings`) VALUES
('GOA-034', 'Goa', 'Bhopal', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-035', 'Goa', 'Bhopal', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-036', 'Goa', 'Bhopal', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-037', 'Goa', 'Bhopal', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-038', 'Goa', 'Bhopal', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-039', 'Goa', 'Bhopal', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-040', 'Goa', 'Bhopal', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'GOI', 'BHO', 'Non-Refundable', 0),
('GOA-041', 'Goa', 'Bengaluru', 0, 5500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-042', 'Goa', 'Bengaluru', 0, 4600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'GOI', 'BLR', 'Refundable', 0),
('GOA-043', 'Goa', 'Bengaluru', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'GOI', 'BLR', 'Refundable', 0),
('GOA-044', 'Goa', 'Bengaluru', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'GOI', 'BLR', 'Refundable', 0),
('GOA-045', 'Goa', 'Bengaluru', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-046', 'Goa', 'Bengaluru', 0, 4700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'GOI', 'BLR', 'Refundable', 0),
('GOA-047', 'Goa', 'Bengaluru', 0, 7000, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-048', 'Goa', 'Bengaluru', 0, 4786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'GOI', 'BLR', 'Refundable', 0),
('GOA-049', 'Goa', 'Bengaluru', 0, 5786, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'GOI', 'BLR', 'Refundable', 0),
('GOA-050', 'Goa', 'Bengaluru', 0, 9000, 'Economy', 2, '6:35', '8:10', 'Vistara', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-051', 'Goa', 'Bengaluru', 0, 22500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-052', 'Goa', 'Bengaluru', 0, 22500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-053', 'Goa', 'Bengaluru', 0, 15000, 'Business', 3, '7:00', '18:40', 'AirIndia', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-054', 'Goa', 'Bengaluru', 0, 30000, 'Business', 9, '8:00', '6:40', 'AirIndia', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-055', 'Goa', 'Bengaluru', 0, 44000, 'Business', 2, '6:35', '8:10', 'Vistara', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-056', 'Goa', 'Bengaluru', 0, 44200, 'Business', 6, '8:15', '10:00', 'Vistara', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-057', 'Goa', 'Bengaluru', 0, 44200, 'Business', 10, '18:20', '20:00', 'Vistara', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-058', 'Goa', 'Bengaluru', 0, 56621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-059', 'Goa', 'Bengaluru', 0, 22500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-060', 'Goa', 'Bengaluru', 0, 62621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'GOI', 'BLR', 'Non-Refundable', 0),
('GOA-061', 'Goa', 'Mumbai', 0, 2500, 'Economy', 12, '18:55', '19:55', 'Spicejet', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-062', 'Goa', 'Mumbai', 0, 2600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'GOI', 'BOM', 'Refundable', 0),
('GOA-063', 'Goa', 'Mumbai', 0, 2318, 'Economy', 6, '7:20', '8:15', 'Spicejet', 'GOI', 'BOM', 'Refundable', 0),
('GOA-064', 'Goa', 'Mumbai', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'GOI', 'BOM', 'Refundable', 0),
('GOA-065', 'Goa', 'Mumbai', 0, 3915, 'Economy', 23, '20:05', '21:15', 'AirIndia', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-066', 'Goa', 'Mumbai', 0, 4700, 'Economy', 15, '16:30', '17:25', 'AirIndia', 'GOI', 'BOM', 'Refundable', 0),
('GOA-067', 'Goa', 'Mumbai', 0, 2000, 'Economy', 16, '17:00', '18:40', 'AirIndia', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-068', 'Goa', 'Mumbai', 0, 4786, 'Economy', 6, '18:25', '20:55', 'Jet Airways', 'GOI', 'BOM', 'Refundable', 0),
('GOA-069', 'Goa', 'Mumbai', 0, 5786, 'Economy', 15, '13:20', '14:10', 'Jet Airways', 'GOI', 'BOM', 'Refundable', 0),
('GOA-070', 'Goa', 'Mumbai', 0, 2000, 'Economy', 2, '6:00', '7:00', 'Vistara', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-071', 'Goa', 'Mumbai', 0, 22500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-072', 'Goa', 'Mumbai', 0, 22500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-073', 'Goa', 'Mumbai', 0, 22500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-074', 'Goa', 'Mumbai', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-075', 'Goa', 'Mumbai', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-076', 'Goa', 'Mumbai', 0, 36200, 'Business', 2, '6:35', '8:10', 'Vistara', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-077', 'Goa', 'Mumbai', 0, 36200, 'Business', 6, '8:15', '10:00', 'Vistara', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-078', 'Goa', 'Mumbai', 0, 36200, 'Business', 10, '18:20', '20:00', 'Vistara', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-079', 'Goa', 'Mumbai', 0, 32621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-080', 'Goa', 'Mumbai', 0, 32621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'GOI', 'BOM', 'Non-Refundable', 0),
('GOA-081', 'Goa', 'New Delhi', 0, 5500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-082', 'Goa', 'New Delhi', 0, 4600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'GOI', 'DEL', 'Refundable', 0),
('GOA-083', 'Goa', 'New Delhi', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'GOI', 'DEL', 'Refundable', 0),
('GOA-084', 'Goa', 'New Delhi', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'GOI', 'DEL', 'Refundable', 0),
('GOA-085', 'Goa', 'New Delhi', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-086', 'Goa', 'New Delhi', 0, 4700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'GOI', 'DEL', 'Refundable', 0),
('GOA-087', 'Goa', 'New Delhi', 0, 7000, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-088', 'Goa', 'New Delhi', 0, 4786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'GOI', 'DEL', 'Refundable', 0),
('GOA-089', 'Goa', 'New Delhi', 0, 5786, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'GOI', 'DEL', 'Refundable', 0),
('GOA-090', 'Goa', 'New Delhi', 0, 9000, 'Economy', 2, '6:35', '8:10', 'Vistara', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-091', 'Goa', 'New Delhi', 0, 22500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-092', 'Goa', 'New Delhi', 0, 22500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-093', 'Goa', 'New Delhi', 0, 22500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-094', 'Goa', 'New Delhi', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-095', 'Goa', 'New Delhi', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-096', 'Goa', 'New Delhi', 0, 36200, 'Business', 2, '6:35', '8:10', 'Vistara', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-097', 'Goa', 'New Delhi', 0, 36200, 'Business', 6, '8:15', '10:00', 'Vistara', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-098', 'Goa', 'New Delhi', 0, 36200, 'Business', 10, '18:20', '20:00', 'Vistara', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-099', 'Goa', 'New Delhi', 0, 32621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-100', 'Goa', 'New Delhi', 0, 32621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'GOI', 'DEL', 'Non-Refundable', 0),
('GOA-201', 'Goa', 'Guwahati', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-202', 'Goa', 'Guwahati', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'GOI', 'GAU', 'Refundable', 0),
('GOA-203', 'Goa', 'Guwahati', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'GOI', 'GAU', 'Refundable', 0),
('GOA-204', 'Goa', 'Guwahati', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'GOI', 'GAU', 'Refundable', 0),
('GOA-205', 'Goa', 'Guwahati', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-206', 'Goa', 'Guwahati', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'GOI', 'GAU', 'Refundable', 0),
('GOA-207', 'Goa', 'Guwahati', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-208', 'Goa', 'Guwahati', 0, 9786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'GOI', 'GAU', 'Refundable', 0),
('GOA-209', 'Goa', 'Guwahati', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-210', 'Goa', 'Guwahati', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-211', 'Goa', 'Guwahati', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-212', 'Goa', 'Guwahati', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-213', 'Goa', 'Guwahati', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-214', 'Goa', 'Guwahati', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-215', 'Goa', 'Guwahati', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-216', 'Goa', 'Guwahati', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-217', 'Goa', 'Guwahati', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-218', 'Goa', 'Guwahati', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-219', 'Goa', 'Guwahati', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'GOI', 'GAU', 'Non-Refundable', 0),
('GOA-220', 'Goa', 'Kolkata', 0, 5500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-221', 'Goa', 'Kolkata', 0, 4600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'GOI', 'CCU', 'Refundable', 0),
('GOA-222', 'Goa', 'Kolkata', 0, 9000, 'Economy', 2, '6:35', '8:10', 'Vistara', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-223', 'Goa', 'Kolkata', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'GOI', 'CCU', 'Refundable', 0),
('GOA-224', 'Goa', 'Kolkata', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'GOI', 'CCU', 'Refundable', 0),
('GOA-225', 'Goa', 'Kolkata', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-226', 'Goa', 'Kolkata', 0, 4700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'GOI', 'CCU', 'Refundable', 0),
('GOA-227', 'Goa', 'Kolkata', 0, 7000, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-228', 'Goa', 'Kolkata', 0, 4786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'GOI', 'CCU', 'Refundable', 0),
('GOA-229', 'Goa', 'Kolkata', 0, 5786, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'GOI', 'CCU', 'Refundable', 0),
('GOA-230', 'Goa', 'Kolkata', 0, 22500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-231', 'Goa', 'Kolkata', 0, 22500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-232', 'Goa', 'Kolkata', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-233', 'Goa', 'Kolkata', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-234', 'Goa', 'Kolkata', 0, 32621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-235', 'Goa', 'Kolkata', 0, 36200, 'Business', 2, '6:35', '8:10', 'Vistara', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-236', 'Goa', 'Kolkata', 0, 36200, 'Business', 6, '8:15', '10:00', 'Vistara', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-237', 'Goa', 'Kolkata', 0, 36200, 'Business', 10, '18:20', '20:00', 'Vistara', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-238', 'Goa', 'Kolkata', 0, 32621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'GOI', 'CCU', 'Non-Refundable', 0),
('GOA-239', 'Goa', 'Chennai', 0, 2500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-240', 'Goa', 'Chennai', 0, 2600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'GOI', 'MAA', 'Refundable', 0),
('GOA-241', 'Goa', 'Chennai', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'GOI', 'MAA', 'Refundable', 0),
('GOA-242', 'Goa', 'Chennai', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'GOI', 'MAA', 'Refundable', 0),
('GOA-243', 'Goa', 'Chennai', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-244', 'Goa', 'Chennai', 0, 4700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'GOI', 'MAA', 'Refundable', 0),
('GOA-245', 'Goa', 'Chennai', 0, 2000, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-246', 'Goa', 'Chennai', 0, 4627, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'GOI', 'MAA', 'Refundable', 0),
('GOA-247', 'Goa', 'Chennai', 0, 5025, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'GOI', 'MAA', 'Refundable', 0),
('GOA-248', 'Goa', 'Chennai', 0, 3200, 'Economy', 2, '6:35', '8:10', 'Vistara', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-249', 'Goa', 'Chennai', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-250', 'Goa', 'Chennai', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-251', 'Goa', 'Chennai', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-252', 'Goa', 'Chennai', 0, 14900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-253', 'Goa', 'Chennai', 0, 14900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-254', 'Goa', 'Chennai', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-255', 'Goa', 'Chennai', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-256', 'Goa', 'Chennai', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-257', 'Goa', 'Chennai', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-258', 'Goa', 'Chennai', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'GOI', 'MAA', 'Non-Refundable', 0),
('GOA-260', 'Goa', 'Pune', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-261', 'Goa', 'Pune', 0, 5600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'GOI', 'PNQ', 'Refundable', 0),
('GOA-262', 'Goa', 'Pune', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'GOI', 'PNQ', 'Refundable', 0),
('GOA-263', 'Goa', 'Pune', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'GOI', 'PNQ', 'Refundable', 0),
('GOA-264', 'Goa', 'Pune', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-265', 'Goa', 'Pune', 0, 5700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'GOI', 'PNQ', 'Refundable', 0),
('GOA-266', 'Goa', 'Pune', 0, 5000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-267', 'Goa', 'Pune', 0, 6786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'GOI', 'PNQ', 'Refundable', 0),
('GOA-268', 'Goa', 'Pune', 0, 7000, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'GOI', 'PNQ', 'Refundable', 0),
('GOA-269', 'Goa', 'Pune', 0, 6500, 'Economy', 2, '06:35', '15:10', 'Vistara', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-270', 'Goa', 'Pune', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-271', 'Goa', 'Pune', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-272', 'Goa', 'Pune', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-273', 'Goa', 'Pune', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-274', 'Goa', 'Pune', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-275', 'Goa', 'Pune', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-276', 'Goa', 'Pune', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-277', 'Goa', 'Pune', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-278', 'Goa', 'Pune', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'GOI', 'PNQ', 'Non-Refundable', 0),
('GOA-279', 'Goa', 'Pune', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'GOI', 'PNQ', 'Non-Refundable', 0),
('JAI-001', 'Jaipur', 'Ahmedabad', 0, 4500, 'Economy', 12, '8:10', '9:30', 'IndiGo', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-002', 'Jaipur', 'Ahmedabad', 0, 4600, 'Economy', 6, '13:55', '18:40', 'AirIndia', 'JAI', 'AMD', 'Refundable', 0),
('JAI-003', 'Jaipur', 'Ahmedabad', 0, 3318, 'Economy', 6, '13:55', '6:40', 'AirIndia', 'JAI', 'AMD', 'Refundable', 0),
('JAI-004', 'Jaipur', 'Ahmedabad', 0, 6915, 'Economy', 8, '13:55', '2:25', 'AirIndia', 'JAI', 'AMD', 'Refundable', 0),
('JAI-005', 'Jaipur', 'Ahmedabad', 0, 8915, 'Economy', 23, '21:00', '21:40', 'AirIndia', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-006', 'Jaipur', 'Ahmedabad', 0, 7700, 'Economy', 15, '21:00', '6:30', 'AirIndia', 'JAI', 'AMD', 'Refundable', 0),
('JAI-007', 'Jaipur', 'Ahmedabad', 0, 7000, 'Economy', 16, '3:45', '20:50', 'Jet Airways', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-008', 'Jaipur', 'Ahmedabad', 0, 8786, 'Economy', 6, '16:40', '22:25', 'Jet Airways', 'JAI', 'AMD', 'Refundable', 0),
('JAI-009', 'Jaipur', 'Ahmedabad', 0, 8886, 'Economy', 15, '16:40', '03:50', 'Jet Airways', 'JAI', 'AMD', 'Refundable', 0),
('JAI-010', 'Jaipur', 'Ahmedabad', 0, 4400, 'Economy', 2, '16:40', '6:35', 'Jet Airways', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-011', 'Jaipur', 'Ahmedabad', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-012', 'Jaipur', 'Ahmedabad', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-013', 'Jaipur', 'Ahmedabad', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-014', 'Jaipur', 'Ahmedabad', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-015', 'Jaipur', 'Ahmedabad', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-016', 'Jaipur', 'Ahmedabad', 0, 16200, 'Business', 2, '6:35', '8:10', 'AirIndia', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-017', 'Jaipur', 'Ahmedabad', 0, 16200, 'Business', 6, '8:15', '10:00', 'Jet Airways', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-018', 'Jaipur', 'Ahmedabad', 0, 16200, 'Business', 10, '18:20', '20:00', 'Jet Airways', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-019', 'Jaipur', 'Ahmedabad', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-020', 'Jaipur', 'Ahmedabad', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'JAI', 'AMD', 'Non-Refundable', 0),
('JAI-021', 'Jaipur', 'Bhopal', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-022', 'Jaipur', 'Bhopal', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-023', 'Jaipur', 'Bhopal', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'JAI', 'BHO', 'Refundable', 0),
('JAI-024', 'Jaipur', 'Bhopal', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'JAI', 'BHO', 'Refundable', 0),
('JAI-025', 'Jaipur', 'Bhopal', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'JAI', 'BHO', 'Refundable', 0),
('JAI-026', 'Jaipur', 'Bhopal', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-027', 'Jaipur', 'Bhopal', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'JAI', 'BHO', 'Refundable', 0),
('JAI-028', 'Jaipur', 'Bhopal', 0, 9786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'JAI', 'BHO', 'Refundable', 0),
('JAI-029', 'Jaipur', 'Bhopal', 0, 9786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'JAI', 'BHO', 'Refundable', 0),
('JAI-030', 'Jaipur', 'Bhopal', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-032', 'Jaipur', 'Bhopal', 0, 22400, 'Business', 10, '20:05', '21:40', 'AirIndia', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-033', 'Jaipur', 'Bhopal', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-034', 'Jaipur', 'Bhopal', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-035', 'Jaipur', 'Bhopal', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-036', 'Jaipur', 'Bhopal', 0, 13999, 'Business', 2, '6:35', '8:10', 'Vistara', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-037', 'Jaipur', 'Bhopal', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-038', 'Jaipur', 'Bhopal', 0, 17399, 'Business', 10, '18:20', '20:00', 'Vistara', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-039', 'Jaipur', 'Bhopal', 0, 12750, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-040', 'Jaipur', 'Bhopal', 0, 12626, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'JAI', 'BHO', 'Non-Refundable', 0),
('JAI-041', 'Jaipur', 'Bengaluru', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-042', 'Jaipur', 'Bengaluru', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'JAI', 'BLR', 'Refundable', 0),
('JAI-043', 'Jaipur', 'Bengaluru', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'JAI', 'BLR', 'Refundable', 0),
('JAI-044', 'Jaipur', 'Bengaluru', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'JAI', 'BLR', 'Refundable', 0),
('JAI-045', 'Jaipur', 'Bengaluru', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-046', 'Jaipur', 'Bengaluru', 0, 8700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'JAI', 'BLR', 'Refundable', 0),
('JAI-047', 'Jaipur', 'Bengaluru', 0, 8996, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'JAI', 'BLR', 'Refundable', 0),
('JAI-048', 'Jaipur', 'Bengaluru', 0, 8000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-049', 'Jaipur', 'Bengaluru', 0, 8996, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'JAI', 'BLR', 'Refundable', 0),
('JAI-050', 'Jaipur', 'Bengaluru', 0, 13650, 'Economy', 2, '06:35', '15:10', 'Vistara', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-051', 'Jaipur', 'Bengaluru', 0, 32500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-052', 'Jaipur', 'Bengaluru', 0, 32500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-053', 'Jaipur', 'Bengaluru', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-054', 'Jaipur', 'Bengaluru', 0, 54900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-055', 'Jaipur', 'Bengaluru', 0, 34900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-056', 'Jaipur', 'Bengaluru', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-057', 'Jaipur', 'Bengaluru', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-058', 'Jaipur', 'Bengaluru', 0, 46200, 'Business', 10, '18:20', '20:00', 'Vistara', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-059', 'Jaipur', 'Bengaluru', 0, 12620, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-060', 'Jaipur', 'Bengaluru', 0, 22696, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'JAI', 'BLR', 'Non-Refundable', 0),
('JAI-061', 'Jaipur', 'Kolkata', 0, 8500, 'Economy', 12, '6:00', '12:05', 'IndiGo', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-062', 'Jaipur', 'Kolkata', 0, 7600, 'Economy', 6, '11:20', '17:30', 'IndiGo', 'JAI', 'KOL', 'Refundable', 0),
('JAI-063', 'Jaipur', 'Kolkata', 0, 9318, 'Economy', 6, '20:45', '23:05', 'IndiGo', 'KOL', 'GAU', '', 0),
('JAI-064', 'Jaipur', 'Kolkata', 0, 8915, 'Economy', 8, '21:55', '00:05', 'IndiGo', 'JAI', 'KOL', 'Refundable', 0),
('JAI-065', 'Jaipur', 'Kolkata', 0, 8915, 'Economy', 23, '22:35', '00:55', 'AirAsia', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-066', 'Jaipur', 'Kolkata', 0, 9700, 'Economy', 15, '19:15', '21:40', 'GoAir', 'JAI', 'KOL', 'Refundable', 0),
('JAI-067', 'Jaipur', 'Kolkata', 0, 7000, 'Economy', 16, '05:30', '16:55', 'Spicejet', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-068', 'Jaipur', 'Kolkata', 0, 9786, 'Economy', 6, '11:10', '20:30', 'Spicejet', 'JAI', 'KOL', 'Refundable', 0),
('JAI-069', 'Jaipur', 'Kolkata', 0, 9786, 'Economy', 15, '08:30', '21:50', 'Spicejet', 'JAI', 'KOL', 'Refundable', 0),
('JAI-070', 'Jaipur', 'Kolkata', 0, 9000, 'Economy', 2, '08:30', '16:30', 'Spicejet', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-071', 'Jaipur', 'Kolkata', 0, 12500, 'Business', 5, '16:10', '22:25', 'AirIndia', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-072', 'Jaipur', 'Kolkata', 0, 12500, 'Business', 10, '16:10', '09:05', 'AirIndia', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-073', 'Jaipur', 'Kolkata', 0, 12500, 'Business', 4, '16:10', '19:10', 'AirIndia', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-074', 'Jaipur', 'Kolkata', 0, 24900, 'Business', 3, '13:55', '23:15', 'AirIndia', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-075', 'Jaipur', 'Kolkata', 0, 24900, 'Business', 9, '8:10', '23:20', 'Jet Airways', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-076', 'Jaipur', 'Kolkata', 0, 16200, 'Business', 2, '8:10', '23:20', 'Jet Airways', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-077', 'Jaipur', 'Kolkata', 0, 16200, 'Business', 6, '8:10', '13:00', 'Jet Airways', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-078', 'Jaipur', 'Kolkata', 0, 16200, 'Business', 10, '8:10', '15:35', 'Jet Airways', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-079', 'Jaipur', 'Kolkata', 0, 12621, 'Business', 3, '21:05', '9:45', 'Jet Airways', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-080', 'Jaipur', 'Kolkata', 0, 12621, 'Business', 7, '21:05', '11:05', 'Jet Airways', 'JAI', 'KOL', 'Non-Refundable', 0),
('JAI-081', 'Jaipur', 'New Delhi', 0, 3500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-082', 'Jaipur', 'New Delhi', 0, 3600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'JAI', 'DEL', 'Refundable', 0),
('JAI-083', 'Jaipur', 'New Delhi', 0, 3318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'JAI', 'DEL', 'Refundable', 0),
('JAI-084', 'Jaipur', 'New Delhi', 0, 1515, 'Economy', 8, '05:00', '12:30', 'AirIndia', 'JAI', 'DEL', 'Refundable', 0),
('JAI-085', 'Jaipur', 'New Delhi', 0, 5325, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-086', 'Jaipur', 'New Delhi', 0, 2000, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'JAI', 'DEL', 'Refundable', 0),
('JAI-087', 'Jaipur', 'New Delhi', 0, 3000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-088', 'Jaipur', 'New Delhi', 0, 1886, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'JAI', 'DEL', 'Refundable', 0),
('JAI-089', 'Jaipur', 'New Delhi', 0, 2696, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'JAI', 'DEL', 'Refundable', 0),
('JAI-090', 'Jaipur', 'New Delhi', 0, 1999, 'Economy', 2, '06:35', '15:10', 'Vistara', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-091', 'Jaipur', 'New Delhi', 0, 10500, 'Business', 5, '05:00', '6:30', 'AirIndia', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-092', 'Jaipur', 'New Delhi', 0, 10500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-093', 'Jaipur', 'New Delhi', 0, 10500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-094', 'Jaipur', 'New Delhi', 0, 20900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-095', 'Jaipur', 'New Delhi', 0, 20900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-096', 'Jaipur', 'New Delhi', 0, 10200, 'Business', 2, '6:35', '8:10', 'Vistara', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-097', 'Jaipur', 'New Delhi', 0, 9200, 'Business', 6, '8:15', '10:00', 'Vistara', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-098', 'Jaipur', 'New Delhi', 0, 8999, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-099', 'Jaipur', 'New Delhi', 0, 9799, 'Business', 10, '18:20', '20:00', 'Vistara', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-100', 'Jaipur', 'New Delhi', 0, 13999, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'JAI', 'DEL', 'Non-Refundable', 0),
('JAI-101', 'Jaipur', 'Guwahati', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-102', 'Jaipur', 'Guwahati', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'JAI', 'GAU', 'Refundable', 0),
('JAI-103', 'Jaipur', 'Guwahati', 0, 9318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'JAI', 'GAU', 'Refundable', 0),
('JAI-104', 'Jaipur', 'Guwahati', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'JAI', 'GAU', 'Refundable', 0),
('JAI-105', 'Jaipur', 'Guwahati', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-106', 'Jaipur', 'Guwahati', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'JAI', 'GAU', 'Refundable', 0),
('JAI-107', 'Jaipur', 'Guwahati', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-108', 'Jaipur', 'Guwahati', 0, 9786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'JAI', 'GAU', 'Refundable', 0),
('JAI-109', 'Jaipur', 'Guwahati', 0, 9786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'JAI', 'GAU', 'Refundable', 0),
('JAI-110', 'Jaipur', 'Guwahati', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-111', 'Jaipur', 'Guwahati', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-112', 'Jaipur', 'Guwahati', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-113', 'Jaipur', 'Guwahati', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-114', 'Jaipur', 'Guwahati', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-115', 'Jaipur', 'Guwahati', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-116', 'Jaipur', 'Guwahati', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-117', 'Jaipur', 'Guwahati', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-118', 'Jaipur', 'Guwahati', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-119', 'Jaipur', 'Guwahati', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-120', 'Jaipur', 'Guwahati', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'JAI', 'GAU', 'Non-Refundable', 0),
('JAI-121', 'Jaipur', 'Chennai', 0, 8500, 'Economy', 12, '18:55', '03:15', 'IndiGo', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-122', 'Jaipur', 'Chennai', 0, 8600, 'Economy', 6, '06:20', '13:50', 'IndiGo', 'JAI', 'MAA', 'Refundable', 0),
('JAI-123', 'Jaipur', 'Chennai', 0, 9318, 'Economy', 6, '9:55', '16:15', 'IndiGo', 'JAI', 'MAA', 'Refundable', 0),
('JAI-124', 'Jaipur', 'Chennai', 0, 8915, 'Economy', 8, '5:00', '12:30', 'IndiGo', 'JAI', 'MAA', 'Refundable', 0),
('JAI-125', 'Jaipur', 'Chennai', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-126', 'Jaipur', 'Chennai', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'JAI', 'MAA', 'Refundable', 0),
('JAI-127', 'Jaipur', 'Chennai', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-128', 'Jaipur', 'Chennai', 0, 9786, 'Economy', 6, '19:25', '09:50', 'AirIndia', 'JAI', 'MAA', 'Refundable', 0),
('JAI-129', 'Jaipur', 'Chennai', 0, 8786, 'Economy', 15, '06:20', '14:50', 'Spicejet', 'JAI', 'MAA', 'Refundable', 0),
('JAI-130', 'Jaipur', 'Chennai', 0, 9999, 'Economy', 2, '06:35', '15:10', 'Jet Airways', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-131', 'Jaipur', 'Chennai', 0, 22500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-132', 'Jaipur', 'Chennai', 0, 22500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-133', 'Jaipur', 'Chennai', 0, 22500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-134', 'Jaipur', 'Chennai', 0, 33900, 'Business', 3, '07:00', '18:40', 'AirIndia', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-135', 'Jaipur', 'Chennai', 0, 33900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-136', 'Jaipur', 'Chennai', 0, 33333, 'Business', 2, '6:35', '8:10', 'Jet Airways', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-137', 'Jaipur', 'Chennai', 0, 56300, 'Business', 6, '8:15', '10:00', 'Jet Airways', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-138', 'Jaipur', 'Chennai', 0, 46200, 'Business', 10, '18:20', '20:00', 'Jet Airways', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-140', 'Jaipur', 'Chennai', 0, 32621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'JAI', 'MAA', 'Non-Refundable', 0),
('JAI-141', 'Jaipur', 'Mumbai', 0, 8500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-142', 'Jaipur', 'Mumbai', 0, 7600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'JAI', 'BOM', 'Refundable', 0),
('JAI-143', 'Jaipur', 'Mumbai', 0, 9318, 'Economy', 9, '9:55', '16:15', 'Spicejet', 'JAI', 'BOM', 'Refundable', 0),
('JAI-144', 'Jaipur', 'Mumbai', 0, 8915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'JAI', 'BOM', 'Refundable', 0),
('JAI-145', 'Jaipur', 'Mumbai', 0, 8915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-146', 'Jaipur', 'Mumbai', 0, 9700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'JAI', 'BOM', 'Refundable', 0),
('JAI-147', 'Jaipur', 'Mumbai', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-148', 'Jaipur', 'Mumbai', 0, 9786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'JAI', 'BOM', 'Refundable', 0),
('JAI-149', 'Jaipur', 'Mumbai', 0, 9786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'JAI', 'BOM', 'Refundable', 0),
('JAI-150', 'Jaipur', 'Mumbai', 0, 9000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-151', 'Jaipur', 'Mumbai', 0, 22500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-152', 'Jaipur', 'Mumbai', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-153', 'Jaipur', 'Mumbai', 0, 22500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-154', 'Jaipur', 'Mumbai', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-155', 'Jaipur', 'Mumbai', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-156', 'Jaipur', 'Mumbai', 0, 36200, 'Business', 2, '6:35', '8:10', 'Vistara', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-157', 'Jaipur', 'Mumbai', 0, 46200, 'Business', 6, '8:15', '10:00', 'Vistara', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-158', 'Jaipur', 'Mumbai', 0, 46200, 'Business', 10, '18:20', '20:00', 'Vistara', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-159', 'Jaipur', 'Mumbai', 0, 52621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-160', 'Jaipur', 'Mumbai', 0, 62621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'JAI', 'BOM', 'Non-Refundable', 0),
('JAI-161', 'Jaipur', 'Pune', 0, 4500, 'Economy', 12, '01:05', '03:15', 'Spicejet', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-162', 'Jaipur', 'Pune', 0, 5600, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'JAI', 'PNQ', 'Refundable', 0),
('JAI-163', 'Jaipur', 'Pune', 0, 4318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'JAI', 'PNQ', 'Refundable', 0),
('JAI-164', 'Jaipur', 'Pune', 0, 4915, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'JAI', 'PNQ', 'Refundable', 0),
('JAI-165', 'Jaipur', 'Pune', 0, 4915, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-166', 'Jaipur', 'Pune', 0, 3700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'JAI', 'PNQ', 'Refundable', 0),
('JAI-167', 'Jaipur', 'Pune', 0, 4000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-168', 'Jaipur', 'Pune', 0, 2786, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'JAI', 'PNQ', 'Refundable', 0),
('JAI-169', 'Jaipur', 'Pune', 0, 2786, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'JAI', 'PNQ', 'Refundable', 0),
('JAI-170', 'Jaipur', 'Pune', 0, 2500, 'Economy', 2, '06:35', '15:10', 'Vistara', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-171', 'Jaipur', 'Pune', 0, 12579, 'Business', 5, '5:00', '6:30', 'AirIndia', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-172', 'Jaipur', 'Pune', 0, 12536, 'Business', 10, '20:05', '21:40', 'AirIndia', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-173', 'Jaipur', 'Pune', 0, 12549, 'Business', 4, '16:30', '18:15', 'AirIndia', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-174', 'Jaipur', 'Pune', 0, 24999, 'Business', 3, '7:00', '18:40', 'AirIndia', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-175', 'Jaipur', 'Pune', 0, 25669, 'Business', 9, '8:00', '6:40', 'AirIndia', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-176', 'Jaipur', 'Pune', 0, 16289, 'Business', 2, '6:35', '8:10', 'Vistara', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-177', 'Jaipur', 'Pune', 0, 16299, 'Business', 6, '8:15', '10:00', 'Vistara', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-178', 'Jaipur', 'Pune', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-179', 'Jaipur', 'Pune', 0, 56632, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-180', 'Jaipur', 'Pune', 0, 78900, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'JAI', 'PNQ', 'Non-Refundable', 0),
('JAI-301', 'Jaipur', 'Bhopal', 0, 22500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'JAI', 'BHO', 'Non-Refundable', 0),
('MAA-001', 'Chennai', 'Ahmedabad', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-002', 'Chennai', 'Ahmedabad', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'MAA', 'AMD', 'Refundable', 0),
('MAA-003', 'Ahmedabad', 'Jaipur', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'MAA', 'AMD', 'Refundable', 0),
('MAA-004', 'Chennai', 'Ahmedabad', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'MAA', 'AMD', 'Refundable', 0),
('MAA-005', 'Chennai', 'Ahmedabad', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-006', 'Chennai', 'Ahmedabad', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'MAA', 'AMD', 'Refundable', 0),
('MAA-007', 'Chennai', 'Ahmedabad', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-008', 'Chennai', 'Ahmedabad', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'MAA', 'AMD', 'Refundable', 0),
('MAA-009', 'Chennai', 'Ahmedabad', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'MAA', 'AMD', 'Refundable', 0),
('MAA-010', 'Chennai', 'Ahmedabad', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-011', 'Chennai', 'Ahmedabad', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-012', 'Chennai', 'Ahmedabad', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-013', 'Chennai', 'Ahmedabad', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-014', 'Chennai', 'Ahmedabad', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-015', 'Chennai', 'Ahmedabad', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-016', 'Chennai', 'Ahmedabad', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-017', 'Chennai', 'Ahmedabad', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-018', 'Chennai', 'Ahmedabad', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-019', 'Chennai', 'Ahmedabad', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-020', 'Chennai', 'Ahmedabad', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'MAA', 'AMD', 'Non-Refundable', 0),
('MAA-021', 'Chennai', 'Bhopal', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-022', 'Chennai', 'Bhopal', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'MAA', 'BHO', 'Refundable', 0),
('MAA-023', 'Chennai', 'Bhopal', 0, 6377, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'MAA', 'BHO', 'Refundable', 0),
('MAA-024', 'Chennai', 'Bhopal', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'MAA', 'BHO', 'Refundable', 0),
('MAA-025', 'Chennai', 'Bhopal', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-026', 'Chennai', 'Bhopal', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'MAA', 'BHO', 'Refundable', 0),
('MAA-027', 'Chennai', 'Bhopal', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-028', 'Chennai', 'Bhopal', 0, 4499, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'MAA', 'BHO', 'Refundable', 0),
('MAA-029', 'Chennai', 'Bhopal', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'MAA', 'BHO', 'Refundable', 0),
('MAA-030', 'Chennai', 'Bhopal', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-031', 'Chennai', 'Bhopal', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-032', 'Chennai', 'Bhopal', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-033', 'Chennai', 'Bhopal', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-034', 'Chennai', 'Bhopal', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-035', 'Chennai', 'Bhopal', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-036', 'Chennai', 'Bhopal', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-037', 'Chennai', 'Bhopal', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-038', 'Chennai', 'Bhopal', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-039', 'Chennai', 'Bhopal', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-040', 'Chennai', 'Bhopal', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'MAA', 'BHO', 'Non-Refundable', 0),
('MAA-041', 'Chennai', 'Bengaluru', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-042', 'Chennai', 'Bengaluru', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'MAA', 'BLR', 'Refundable', 0),
('MAA-043', 'Chennai', 'Bengaluru', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'MAA', 'BLR', 'Refundable', 0),
('MAA-044', 'Chennai', 'Bengaluru', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'MAA', 'BLR', 'Refundable', 0),
('MAA-045', 'Chennai', 'Bengaluru', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-046', 'Chennai', 'Bengaluru', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'MAA', 'BLR', 'Refundable', 0),
('MAA-047', 'Chennai', 'Bengaluru', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-048', 'Chennai', 'Bengaluru', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'MAA', 'BLR', 'Refundable', 0),
('MAA-049', 'Chennai', 'Bengaluru', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'MAA', 'BLR', 'Refundable', 0),
('MAA-050', 'Chennai', 'Bengaluru', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-051', 'Chennai', 'Bengaluru', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-052', 'Chennai', 'Bengaluru', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-053', 'Chennai', 'Bengaluru', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-054', 'Chennai', 'Bengaluru', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-055', 'Chennai', 'Bengaluru', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-056', 'Chennai', 'Bengaluru', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-057', 'Chennai', 'Bengaluru', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-058', 'Chennai', 'Bengaluru', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-059', 'Chennai', 'Bengaluru', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-060', 'Chennai', 'Bengaluru', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'MAA', 'BLR', 'Non-Refundable', 0),
('MAA-061', 'Chennai', 'Mumbai', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-062', 'Chennai', 'Mumbai', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'MAA', 'BOM', 'Refundable', 0),
('MAA-063', 'Chennai', 'Mumbai', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'MAA', 'BOM', 'Refundable', 0),
('MAA-064', 'Chennai', 'Mumbai', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'MAA', 'BOM', 'Refundable', 0),
('MAA-065', 'Chennai', 'Mumbai', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-066', 'Chennai', 'Mumbai', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'MAA', 'BOM', 'Refundable', 0),
('MAA-067', 'Chennai', 'Mumbai', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-068', 'Chennai', 'Mumbai', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'MAA', 'BOM', 'Refundable', 0),
('MAA-069', 'Chennai', 'Mumbai', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'MAA', 'BOM', 'Refundable', 0),
('MAA-070', 'Chennai', 'Mumbai', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-071', 'Chennai', 'Mumbai', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-072', 'Chennai', 'Mumbai', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-073', 'Chennai', 'Mumbai', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-074', 'Chennai', 'Mumbai', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-075', 'Chennai', 'Mumbai', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-076', 'Chennai', 'Mumbai', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-077', 'Chennai', 'Mumbai', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-078', 'Chennai', 'Mumbai', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-079', 'Chennai', 'Mumbai', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-080', 'Chennai', 'Mumbai', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'MAA', 'BOM', 'Non-Refundable', 0),
('MAA-081', 'Chennai', 'Kolkata', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-082', 'Chennai', 'Kolkata', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'MAA', 'CCU', 'Refundable', 0),
('MAA-083', 'Chennai', 'Kolkata', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'MAA', 'CCU', 'Refundable', 0),
('MAA-084', 'Chennai', 'Kolkata', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'MAA', 'CCU', 'Refundable', 0),
('MAA-085', 'Chennai', 'Kolkata', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-086', 'Chennai', 'Kolkata', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'MAA', 'CCU', 'Refundable', 0),
('MAA-087', 'Chennai', 'Kolkata', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-088', 'Chennai', 'Kolkata', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'MAA', 'CCU', 'Refundable', 0),
('MAA-089', 'Chennai', 'Kolkata', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'MAA', 'CCU', 'Refundable', 0),
('MAA-090', 'Chennai', 'Kolkata', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-091', 'Chennai', 'Kolkata', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-092', 'Chennai', 'Kolkata', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-093', 'Chennai', 'Kolkata', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'MAA', 'CCU', 'Non-Refundable', 0);
INSERT INTO `flights` (`flight_no`, `origin`, `destination`, `distance`, `fare`, `class`, `seats_available`, `departs`, `arrives`, `operator`, `origin_code`, `destination_code`, `refundable`, `noOfBookings`) VALUES
('MAA-094', 'Chennai', 'Kolkata', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-095', 'Chennai', 'Kolkata', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-096', 'Chennai', 'Kolkata', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-097', 'Chennai', 'Kolkata', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-098', 'Chennai', 'Kolkata', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-099', 'Chennai', 'Kolkata', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-100', 'Chennai', 'Kolkata', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'MAA', 'CCU', 'Non-Refundable', 0),
('MAA-101', 'Chennai', 'New Delhi', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-102', 'Chennai', 'New Delhi', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'MAA', 'DEL', 'Refundable', 0),
('MAA-103', 'Chennai', 'New Delhi', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'MAA', 'DEL', 'Refundable', 0),
('MAA-104', 'Chennai', 'New Delhi', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'MAA', 'DEL', 'Refundable', 0),
('MAA-105', 'Chennai', 'New Delhi', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-106', 'Chennai', 'New Delhi', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'MAA', 'DEL', 'Refundable', 0),
('MAA-107', 'Chennai', 'New Delhi', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-108', 'Chennai', 'New Delhi', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'MAA', 'DEL', 'Refundable', 0),
('MAA-109', 'Chennai', 'New Delhi', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'MAA', 'DEL', 'Refundable', 0),
('MAA-110', 'Chennai', 'New Delhi', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-111', 'Chennai', 'New Delhi', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-112', 'Chennai', 'New Delhi', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-113', 'Chennai', 'New Delhi', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-114', 'Chennai', 'New Delhi', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-115', 'Chennai', 'New Delhi', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-116', 'Chennai', 'New Delhi', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-117', 'Chennai', 'New Delhi', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-118', 'Chennai', 'New Delhi', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-119', 'Chennai', 'New Delhi', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-120', 'Chennai', 'New Delhi', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'MAA', 'DEL', 'Non-Refundable', 0),
('MAA-121', 'Chennai', 'Guwahati', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-122', 'Chennai', 'Guwahati', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'MAA', 'GAU', 'Refundable', 0),
('MAA-123', 'Chennai', 'Guwahati', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'MAA', 'GAU', 'Refundable', 0),
('MAA-124', 'Chennai', 'Guwahati', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'MAA', 'GAU', 'Refundable', 0),
('MAA-125', 'Chennai', 'Guwahati', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-126', 'Chennai', 'Guwahati', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'MAA', 'GAU', 'Refundable', 0),
('MAA-127', 'Chennai', 'Guwahati', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-128', 'Chennai', 'Guwahati', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'MAA', 'GAU', 'Refundable', 0),
('MAA-129', 'Chennai', 'Guwahati', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'MAA', 'GAU', 'Refundable', 0),
('MAA-130', 'Chennai', 'Guwahati', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-131', 'Chennai', 'Guwahati', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-132', 'Chennai', 'Guwahati', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-133', 'Chennai', 'Guwahati', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-134', 'Chennai', 'Guwahati', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-135', 'Chennai', 'Guwahati', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-136', 'Chennai', 'Guwahati', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-137', 'Chennai', 'Guwahati', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-138', 'Chennai', 'Guwahati', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-139', 'Chennai', 'Guwahati', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-140', 'Chennai', 'Guwahati', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'MAA', 'GAU', 'Non-Refundable', 0),
('MAA-141', 'Chennai', 'Goa', 0, 1500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-142', 'Chennai', 'Goa', 0, 1500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'MAA', 'GOI', 'Refundable', 0),
('MAA-143', 'Chennai', 'Goa', 0, 2318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'MAA', 'GOI', 'Refundable', 0),
('MAA-144', 'Chennai', 'Goa', 0, 3015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'MAA', 'GOI', 'Refundable', 0),
('MAA-145', 'Chennai', 'Goa', 0, 2015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-146', 'Chennai', 'Goa', 0, 2700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'MAA', 'GOI', 'Refundable', 0),
('MAA-147', 'Chennai', 'Goa', 0, 2000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-148', 'Chennai', 'Goa', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'MAA', 'GOI', 'Refundable', 0),
('MAA-149', 'Chennai', 'Goa', 0, 2726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'MAA', 'GOI', 'Refundable', 0),
('MAA-150', 'Chennai', 'Goa', 0, 3000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-151', 'Chennai', 'Goa', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-152', 'Chennai', 'Goa', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-153', 'Chennai', 'Goa', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-154', 'Chennai', 'Goa', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-155', 'Chennai', 'Goa', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-156', 'Chennai', 'Goa', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-157', 'Chennai', 'Goa', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-158', 'Chennai', 'Goa', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-159', 'Chennai', 'Goa', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-160', 'Chennai', 'Goa', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'MAA', 'GOI', 'Non-Refundable', 0),
('MAA-161', 'Chennai', 'Jaipur', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-162', 'Chennai', 'Jaipur', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'MAA', 'JAI', 'Refundable', 0),
('MAA-163', 'Chennai', 'Jaipur', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'MAA', 'JAI', 'Refundable', 0),
('MAA-164', 'Chennai', 'Jaipur', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'MAA', 'JAI', 'Refundable', 0),
('MAA-165', 'Chennai', 'Jaipur', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-166', 'Chennai', 'Jaipur', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'MAA', 'JAI', 'Refundable', 0),
('MAA-167', 'Chennai', 'Jaipur', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-168', 'Chennai', 'Jaipur', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'MAA', 'JAI', 'Refundable', 0),
('MAA-169', 'Chennai', 'Jaipur', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'MAA', 'JAI', 'Refundable', 0),
('MAA-170', 'Chennai', 'Jaipur', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-171', 'Chennai', 'Jaipur', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-172', 'Chennai', 'Jaipur', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-173', 'Chennai', 'Jaipur', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-174', 'Chennai', 'Jaipur', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-175', 'Chennai', 'Jaipur', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-176', 'Chennai', 'Jaipur', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-177', 'Chennai', 'Jaipur', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-178', 'Chennai', 'Jaipur', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-179', 'Chennai', 'Jaipur', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-180', 'Chennai', 'Jaipur', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'MAA', 'JAI', 'Non-Refundable', 0),
('MAA-181', 'Chennai', 'Pune', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-182', 'Chennai', 'Pune', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'MAA', 'PNQ', 'Refundable', 0),
('MAA-183', 'Pune', 'Jaipur', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'MAA', 'PNQ', 'Refundable', 0),
('MAA-184', 'Chennai', 'Pune', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'MAA', 'PNQ', 'Refundable', 0),
('MAA-185', 'Chennai', 'Pune', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-186', 'Chennai', 'Pune', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'MAA', 'PNQ', 'Refundable', 0),
('MAA-187', 'Chennai', 'Pune', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-188', 'Chennai', 'Pune', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'MAA', 'PNQ', 'Refundable', 0),
('MAA-189', 'Chennai', 'Pune', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'MAA', 'PNQ', 'Refundable', 0),
('MAA-190', 'Chennai', 'Pune', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-191', 'Chennai', 'Pune', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-192', 'Chennai', 'Pune', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-193', 'Chennai', 'Pune', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-194', 'Chennai', 'Pune', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-195', 'Chennai', 'Pune', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-196', 'Chennai', 'Pune', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-197', 'Chennai', 'Pune', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-198', 'Chennai', 'Pune', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-199', 'Chennai', 'Pune', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'MAA', 'PNQ', 'Non-Refundable', 0),
('MAA-200', 'Chennai', 'Pune', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'MAA', 'PNQ', 'Non-Refundable', 0),
('PNQ-001', 'Pune', 'Ahmedabad', 0, 5500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-002', 'Pune', 'Ahmedabad', 0, 4600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'PNQ', 'AMD', 'Refundable', 0),
('PNQ-003', 'Pune', 'Ahmedabad', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'PNQ', 'AMD', 'Refundable', 0),
('PNQ-004', 'Pune', 'Ahmedabad', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'PNQ', 'AMD', 'Refundable', 0),
('PNQ-005', 'Pune', 'Ahmedabad', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-006', 'Pune', 'Ahmedabad', 0, 4700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'PNQ', 'AMD', 'Refundable', 0),
('PNQ-007', 'Pune', 'Ahmedabad', 0, 7000, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-008', 'Pune', 'Ahmedabad', 0, 4786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'PNQ', 'AMD', 'Refundable', 0),
('PNQ-009', 'Pune', 'Ahmedabad', 0, 5786, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'PNQ', 'AMD', 'Refundable', 0),
('PNQ-010', 'Pune', 'Ahmedabad', 0, 9000, 'Economy', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-011', 'Pune', 'Ahmedabad', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-012', 'Pune', 'Ahmedabad', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-013', 'Pune', 'Ahmedabad', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-014', 'Pune', 'Ahmedabad', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-015', 'Pune', 'Ahmedabad', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-016', 'Pune', 'Ahmedabad', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-017', 'Pune', 'Ahmedabad', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-018', 'Pune', 'Ahmedabad', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-019', 'Pune', 'Ahmedabad', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-020', 'Pune', 'Ahmedabad', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'PNQ', 'AMD', 'Non-Refundable', 0),
('PNQ-021', 'Pune', 'Bhopal', 0, 5500, 'Economy', 12, '18:55', '19:15', 'Spicejet', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-022', 'Pune', 'Bhopal', 0, 4600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'PNQ', 'BHO', 'Refundable', 0),
('PNQ-023', 'Pune', 'Bhopal', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'PNQ', 'BHO', 'Refundable', 0),
('PNQ-024', 'Pune', 'Bhopal', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'PNQ', 'BHO', 'Refundable', 0),
('PNQ-025', 'Pune', 'Bhopal', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-026', 'Pune', 'Bhopal', 0, 4700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'PNQ', 'BHO', 'Refundable', 0),
('PNQ-027', 'Pune', 'Bhopal', 0, 7000, 'Economy', 16, '17:00', '20:00', 'AirIndia', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-028', 'Pune', 'Bhopal', 0, 4786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'PNQ', 'BHO', 'Refundable', 0),
('PNQ-029', 'Pune', 'Bhopal', 0, 5786, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'PNQ', 'BHO', 'Refundable', 0),
('PNQ-030', 'Pune', 'Bhopal', 0, 9000, 'Economy', 2, '6:35', '8:00', 'Vistara', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-031', 'Pune', 'Bhopal', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-032', 'Pune', 'Bhopal', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-033', 'Pune', 'Bhopal', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-034', 'Pune', 'Bhopal', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-035', 'Pune', 'Bhopal', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-036', 'Pune', 'Bhopal', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-037', 'Pune', 'Bhopal', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-038', 'Pune', 'Bhopal', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-039', 'Pune', 'Bhopal', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-040', 'Pune', 'Bhopal', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'PNQ', 'BHO', 'Non-Refundable', 0),
('PNQ-041', 'Pune', 'Bengaluru', 0, 6500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-042', 'Pune', 'Bengaluru', 0, 6600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'PNQ', 'BLR', 'Refundable', 0),
('PNQ-043', 'Pune', 'Bengaluru', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'PNQ', 'BLR', 'Refundable', 0),
('PNQ-044', 'Pune', 'Bengaluru', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'PNQ', 'BLR', 'Refundable', 0),
('PNQ-045', 'Pune', 'Bengaluru', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-046', 'Pune', 'Bengaluru', 0, 5700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'PNQ', 'BLR', 'Refundable', 0),
('PNQ-047', 'Pune', 'Bengaluru', 0, 7000, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-048', 'Pune', 'Bengaluru', 0, 6786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'PNQ', 'BLR', 'Refundable', 0),
('PNQ-049', 'Pune', 'Bengaluru', 0, 3786, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'PNQ', 'BLR', 'Refundable', 0),
('PNQ-050', 'Pune', 'Bengaluru', 0, 4000, 'Economy', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-051', 'Pune', 'Bengaluru', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-052', 'Pune', 'Bengaluru', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-053', 'Pune', 'Bengaluru', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-054', 'Pune', 'Bengaluru', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-055', 'Pune', 'Bengaluru', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-056', 'Pune', 'Bengaluru', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-057', 'Pune', 'Bengaluru', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-058', 'Pune', 'Bengaluru', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-059', 'Pune', 'Bengaluru', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-060', 'Pune', 'Bengaluru', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'PNQ', 'BLR', 'Non-Refundable', 0),
('PNQ-061', 'Pune', 'Mumbai', 0, 2500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-062', 'Pune', 'Mumbai', 0, 2600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'PNQ', 'BOM', 'Refundable', 0),
('PNQ-063', 'Pune', 'Mumbai', 0, 2318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'PNQ', 'BOM', 'Refundable', 0),
('PNQ-064', 'Pune', 'Mumbai', 0, 1915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'PNQ', 'BOM', 'Refundable', 0),
('PNQ-065', 'Pune', 'Mumbai', 0, 1915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-066', 'Pune', 'Mumbai', 0, 1470, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'PNQ', 'BOM', 'Refundable', 0),
('PNQ-067', 'Pune', 'Mumbai', 0, 1700, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-068', 'Pune', 'Mumbai', 0, 1478, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'PNQ', 'BOM', 'Refundable', 0),
('PNQ-069', 'Pune', 'Mumbai', 0, 1578, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'PNQ', 'BOM', 'Refundable', 0),
('PNQ-070', 'Pune', 'Mumbai', 0, 900, 'Economy', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-071', 'Pune', 'Mumbai', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-072', 'Pune', 'Mumbai', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-073', 'Pune', 'Mumbai', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-074', 'Pune', 'Mumbai', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-075', 'Pune', 'Mumbai', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-076', 'Pune', 'Mumbai', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-077', 'Pune', 'Mumbai', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-078', 'Pune', 'Mumbai', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-079', 'Pune', 'Mumbai', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-080', 'Pune', 'Mumbai', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'PNQ', 'BOM', 'Non-Refundable', 0),
('PNQ-081', 'Pune', 'Kolkata', 0, 5500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-082', 'Pune', 'Kolkata', 0, 4600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'PNQ', 'CCU', 'Refundable', 0),
('PNQ-083', 'Pune', 'Kolkata', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'PNQ', 'CCU', 'Refundable', 0),
('PNQ-084', 'Pune', 'Kolkata', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'PNQ', 'CCU', 'Refundable', 0),
('PNQ-085', 'Pune', 'Kolkata', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-086', 'Pune', 'Kolkata', 0, 4700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'PNQ', 'CCU', 'Refundable', 0),
('PNQ-087', 'Pune', 'Kolkata', 0, 7000, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-088', 'Pune', 'Kolkata', 0, 4786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'PNQ', 'CCU', 'Refundable', 0),
('PNQ-089', 'Pune', 'Kolkata', 0, 5786, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'PNQ', 'CCU', 'Refundable', 0),
('PNQ-090', 'Pune', 'Kolkata', 0, 9000, 'Economy', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-091', 'Pune', 'Kolkata', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-092', 'Pune', 'Kolkata', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-093', 'Pune', 'Kolkata', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-094', 'Pune', 'Kolkata', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-095', 'Pune', 'Kolkata', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-096', 'Pune', 'Kolkata', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-097', 'Pune', 'Kolkata', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-098', 'Pune', 'Kolkata', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-099', 'Pune', 'Kolkata', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-100', 'Pune', 'Kolkata', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'PNQ', 'CCU', 'Non-Refundable', 0),
('PNQ-101', 'Pune', 'New Delhi', 0, 5500, 'Economy', 12, '18:55', '20:15', 'Spicejet', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-102', 'Pune', 'New Delhi', 0, 4600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'PNQ', 'DEL', 'Refundable', 0),
('PNQ-103', 'Pune', 'New Delhi', 0, 3318, 'Economy', 6, '7:20', '14:15', 'Spicejet', 'PNQ', 'DEL', 'Refundable', 0),
('PNQ-104', 'Pune', 'New Delhi', 0, 3915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'PNQ', 'DEL', 'Refundable', 0),
('PNQ-105', 'Pune', 'New Delhi', 0, 3915, 'Economy', 23, '20:05', '21:40', 'AirIndia', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-106', 'Pune', 'New Delhi', 0, 4700, 'Economy', 15, '16:30', '18:15', 'AirIndia', 'PNQ', 'DEL', 'Refundable', 0),
('PNQ-107', 'Pune', 'New Delhi', 0, 7000, 'Economy', 16, '17:00', '6:40', 'AirIndia', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-108', 'Pune', 'New Delhi', 0, 4786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'PNQ', 'DEL', 'Refundable', 0),
('PNQ-109', 'Pune', 'New Delhi', 0, 5786, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'PNQ', 'DEL', 'Refundable', 0),
('PNQ-110', 'Pune', 'New Delhi', 0, 9000, 'Economy', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-111', 'Pune', 'New Delhi', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-112', 'Pune', 'New Delhi', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-113', 'Pune', 'New Delhi', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-114', 'Pune', 'New Delhi', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-115', 'Pune', 'New Delhi', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-116', 'Pune', 'New Delhi', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-117', 'Pune', 'New Delhi', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-118', 'Pune', 'New Delhi', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-119', 'Pune', 'New Delhi', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-120', 'Pune', 'New Delhi', 0, 12621, 'Business', 7, '23:10', '00:35', 'Jet Airways', 'PNQ', 'DEL', 'Non-Refundable', 0),
('PNQ-121', 'Pune', 'Guwahati', 0, 9000, 'Economy', 12, '3:55', '8:20', 'IndiGo', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-122', 'Pune', 'Guwahati', 0, 11000, 'Economy', 6, '4:20', '11:45', 'IndiGo', 'PNQ', 'GAU', 'Refundable', 0),
('PNQ-123', 'Pune', 'Guwahati', 0, 12000, 'Economy', 6, '3:55', '11:45', 'Jet Airways', 'PNQ', 'GAU', 'Refundable', 0),
('PNQ-124', 'Pune', 'Guwahati', 0, 12880, 'Economy', 8, '5:15', '12:45', 'Vistara', 'PNQ', 'GAU', 'Refundable', 0),
('PNQ-125', 'Pune', 'Guwahati', 0, 12880, 'Economy', 17, '13:10', '12:45', 'IndiGo', 'PNQ', 'GAU', 'Non-Refundable', 6),
('PNQ-126', 'Pune', 'Guwahati', 0, 12880, 'Economy', 12, '20:10', '12:45', 'IndiGo', 'PNQ', 'GAU', 'Refundable', 3),
('PNQ-127', 'Pune', 'Guwahati', 0, 13400, 'Economy', 6, '15:55', '18:40', 'IndiGo', 'PNQ', 'GAU', 'Non-Refundable', 10),
('PNQ-128', 'Pune', 'Guwahati', 0, 13510, 'Economy', 6, '11:25', '18:40', 'GoAir', 'PNQ', 'GAU', 'Refundable', 0),
('PNQ-129', 'Pune', 'Guwahati', 0, 13510, 'Economy', 7, '05:30', '12:10', 'Jet Airways', 'PNQ', 'GAU', 'Refundable', 8),
('PNQ-130', 'Pune', 'Guwahati', 0, 7000, 'Economy', 2, '00:40', '08:15', 'AirIndia', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-131', 'Pune', 'Guwahati', 0, 31295, 'Business', 5, '3:55', '11:45', 'Jet Airways', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-132', 'Pune', 'Guwahati', 0, 31295, 'Business', 10, '3:55', '18:40', 'Jet Airways', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-133', 'Pune', 'Guwahati', 0, 33717, 'Business', 4, '5:15', '12:45', 'Vistara', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-134', 'Pune', 'Guwahati', 0, 33717, 'Business', 3, '13:10', '12:45', 'Vistara', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-135', 'Pune', 'Guwahati', 0, 33717, 'Business', 9, '20:10', '12:45', 'Vistara', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-136', 'Pune', 'Guwahati', 0, 40515, 'Business', 2, '3:55', '8:20', 'AirIndia', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-137', 'Pune', 'Guwahati', 0, 40515, 'Business', 6, '7:40', '12:00', 'AirIndia', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-138', 'Pune', 'Guwahati', 0, 40615, 'Business', 10, '18:50', '12:00', 'AirIndia', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-139', 'Pune', 'Guwahati', 0, 43270, 'Business', 3, '22:00', '12:00', 'Jet Airways', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-140', 'Pune', 'Guwahati', 0, 54700, 'Business', 7, '7:50', '12:20', 'Jet Airways', 'PNQ', 'GAU', 'Non-Refundable', 0),
('PNQ-141', 'Pune', 'Goa', 0, 5500, 'Economy', 12, '12:20', '13:20', 'Spicejet', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-142', 'Pune', 'Goa', 0, 4600, 'Economy', 6, '13:10', '13:45', 'Spicejet', 'PNQ', 'GOI', 'Refundable', 0),
('PNQ-143', 'Pune', 'Goa', 0, 3318, 'Economy', 6, '11:50', '12:45', 'Spicejet', 'PNQ', 'GOI', 'Refundable', 0),
('PNQ-144', 'Pune', 'Goa', 0, 3915, 'Economy', 8, '15:05', '18:15', 'AirIndia', 'PNQ', 'GOI', 'Refundable', 0),
('PNQ-145', 'Pune', 'Goa', 0, 3915, 'Economy', 23, '07:40', '13:13', 'AirIndia', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-146', 'Pune', 'Goa', 0, 4700, 'Economy', 15, '17:35', '03:45', 'AirIndia', 'PNQ', 'GOI', 'Refundable', 0),
('PNQ-147', 'Pune', 'Goa', 0, 7000, 'Economy', 16, '17:45', '16:35', 'AirIndia', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-148', 'Pune', 'Goa', 0, 4786, 'Economy', 6, '10:00', '15:00', 'Jet Airways', 'PNQ', 'GOI', 'Refundable', 0),
('PNQ-149', 'Pune', 'Goa', 0, 5786, 'Economy', 15, '20:10', '21:20', 'Jet Airways', 'PNQ', 'GOI', 'Refundable', 0),
('PNQ-150', 'Pune', 'Goa', 0, 9000, 'Economy', 2, '5:15', '21:20', 'Vistara', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-151', 'Pune', 'Goa', 0, 12500, 'Business', 5, '11:50', '12:50', 'AirIndia', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-152', 'Pune', 'Goa', 0, 12500, 'Business', 10, '15:05', '18:15', 'AirIndia', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-153', 'Pune', 'Goa', 0, 12500, 'Business', 4, '7:40', '13:30', 'AirIndia', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-154', 'Pune', 'Goa', 0, 24900, 'Business', 3, '18:50', '13:30', 'AirIndia', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-155', 'Pune', 'Goa', 0, 24900, 'Business', 9, '17:35', '3:45', 'AirIndia', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-156', 'Pune', 'Goa', 0, 16200, 'Business', 2, '17:35', '6:45', 'Vistara', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-157', 'Pune', 'Goa', 0, 16200, 'Business', 6, '17:35', '17:50', 'Vistara', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-158', 'Pune', 'Goa', 0, 16200, 'Business', 10, '5:15', '21:20', 'Vistara', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-159', 'Pune', 'Goa', 0, 12621, 'Business', 3, '13:10', '21:20', 'Jet Airways', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-160', 'Pune', 'Goa', 0, 12621, 'Business', 7, '20:10', '13:45', 'Jet Airways', 'PNQ', 'GOI', 'Non-Refundable', 0),
('PNQ-161', 'Pune', 'Jaipur', 0, 5500, 'Economy', 12, '18:55', '03:15', 'Spicejet', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-162', 'Pune', 'Jaipur', 0, 5500, 'Economy', 6, '6:20', '13:50', 'Spicejet', 'PNQ', 'JAI', 'Refundable', 0),
('PNQ-163', 'Pune', 'Jaipur', 0, 5318, 'Economy', 6, '9:55', '16:15', 'Spicejet', 'PNQ', 'JAI', 'Refundable', 0),
('PNQ-164', 'Pune', 'Jaipur', 0, 6015, 'Economy', 8, '5:00', '12:30', 'AirIndia', 'PNQ', 'JAI', 'Refundable', 0),
('PNQ-165', 'Pune', 'Jaipur', 0, 7015, 'Economy', 23, '20:05', '05:40', 'AirIndia', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-166', 'Pune', 'Jaipur', 0, 7700, 'Economy', 15, '19:30', '02:15', 'AirIndia', 'PNQ', 'JAI', 'Refundable', 0),
('PNQ-167', 'Pune', 'Jaipur', 0, 7000, 'Economy', 16, '17:00', '06:40', 'AirIndia', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-168', 'Pune', 'Jaipur', 0, 10400, 'Economy', 6, '19:25', '09:50', 'Jet Airways', 'PNQ', 'JAI', 'Refundable', 0),
('PNQ-169', 'Pune', 'Jaipur', 0, 8726, 'Economy', 15, '06:20', '14:50', 'Jet Airways', 'PNQ', 'JAI', 'Refundable', 0),
('PNQ-170', 'Pune', 'Jaipur', 0, 8000, 'Economy', 2, '06:35', '15:10', 'Vistara', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-171', 'Pune', 'Jaipur', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-172', 'Pune', 'Jaipur', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-173', 'Pune', 'Jaipur', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-174', 'Pune', 'Jaipur', 0, 24900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-175', 'Pune', 'Jaipur', 0, 24900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-176', 'Pune', 'Jaipur', 0, 16200, 'Business', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-177', 'Pune', 'Jaipur', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-178', 'Pune', 'Jaipur', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-179', 'Pune', 'Jaipur', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-180', 'Pune', 'Jaipur', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'PNQ', 'JAI', 'Non-Refundable', 0),
('PNQ-181', 'Pune', 'Chennai', 0, 7500, 'Economy', 12, '18:55', '20:00', 'Spicejet', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-182', 'Pune', 'Chennai', 0, 4600, 'Economy', 6, '6:20', '7:50', 'Spicejet', 'PNQ', 'MAA', 'Refundable', 0),
('PNQ-183', 'Pune', 'Chennai', 0, 3318, 'Economy', 6, '7:20', '8:15', 'Spicejet', 'PNQ', 'MAA', 'Refundable', 0),
('PNQ-184', 'Pune', 'Chennai', 0, 7915, 'Economy', 8, '5:00', '6:30', 'AirIndia', 'PNQ', 'MAA', 'Refundable', 0),
('PNQ-185', 'Pune', 'Chennai', 0, 7915, 'Economy', 23, '20:05', '21:10', 'AirIndia', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-186', 'Pune', 'Chennai', 0, 7700, 'Economy', 15, '16:30', '18:00', 'AirIndia', 'PNQ', 'MAA', 'Refundable', 0),
('PNQ-187', 'Pune', 'Chennai', 0, 7000, 'Economy', 16, '17:00', '18:00', 'AirIndia', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-188', 'Pune', 'Chennai', 0, 5786, 'Economy', 6, '19:25', '20:50', 'Jet Airways', 'PNQ', 'MAA', 'Refundable', 0),
('PNQ-189', 'Pune', 'Chennai', 0, 3776, 'Economy', 15, '13:20', '14:50', 'Jet Airways', 'PNQ', 'MAA', 'Refundable', 0),
('PNQ-190', 'Pune', 'Chennai', 0, 9238, 'Economy', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-191', 'Pune', 'Chennai', 0, 12500, 'Business', 5, '5:00', '6:30', 'AirIndia', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-192', 'Pune', 'Chennai', 0, 12500, 'Business', 10, '20:05', '21:40', 'AirIndia', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-193', 'Pune', 'Chennai', 0, 12500, 'Business', 4, '16:30', '18:15', 'AirIndia', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-194', 'Pune', 'Chennai', 0, 14900, 'Business', 3, '7:00', '18:40', 'AirIndia', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-195', 'Pune', 'Chennai', 0, 14900, 'Business', 9, '8:00', '6:40', 'AirIndia', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-196', 'Pune', 'Chennai', 0, 36200, 'Business', 2, '6:35', '8:10', 'Vistara', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-197', 'Pune', 'Chennai', 0, 16200, 'Business', 6, '8:15', '10:00', 'Vistara', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-198', 'Pune', 'Chennai', 0, 16200, 'Business', 10, '18:20', '20:00', 'Vistara', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-199', 'Pune', 'Chennai', 0, 12621, 'Business', 3, '13:20', '14:50', 'Jet Airways', 'PNQ', 'MAA', 'Non-Refundable', 0),
('PNQ-200', 'Pune', 'Chennai', 0, 12621, 'Business', 7, '23:10', '0:35', 'Jet Airways', 'PNQ', 'MAA', 'Non-Refundable', 0),
('UK-189', 'New Delhi', 'Pune', 0, 8142, 'Economy', 15, '20:35', '23:30', 'Vistara', 'DEL', 'PNQ', 'Refundable', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotelbookings`
--

CREATE TABLE `hotelbookings` (
  `bookingID` int(10) NOT NULL,
  `hotelName` varchar(50) NOT NULL,
  `date` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `cancelled` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelbookings`
--

INSERT INTO `hotelbookings` (`bookingID`, `hotelName`, `date`, `username`, `cancelled`) VALUES
(3, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(4, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(5, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(6, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(7, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(8, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(9, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(10, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(11, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(12, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(13, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(14, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(15, 'Vivanta By Taj, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(16, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(17, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(18, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(19, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(20, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(21, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(22, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(23, 'Vivanta By Taj, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(24, 'Fortune Select JP Cosmos, Cunningham Crescent Road', '25-10-2017', 'holika', 'yes'),
(27, ', , ', '26-10-2017', 'joydeep', 'yes'),
(28, 'Hotel Siroy Lily, Paltan Bazaar, Guwahati', '30-10-2017', 'joydeep', 'yes'),
(29, 'Hotel Siroy Lily, Paltan Bazaar, Guwahati', '30-10-2017', 'joydeep', 'yes'),
(30, 'Vivanta By Taj, Khanapara, Guwahati', '30-10-2017', 'joydeep', 'yes'),
(31, 'Hotel Siroy Lily, Paltan Bazaar, Guwahati', '31-10-2017', 'joydeep', 'yes'),
(32, 'Hotel Royal Plaza, Connaught Place, New Delhi', '05-11-2017', 'joydeep', 'yes'),
(33, 'Hyatt Pune, Kalyani Nagar, Pune', '05-11-2017', 'joydeep', 'no'),
(34, 'Hotel Le Roi, Paharganj, New Delhi', '05-11-2017', 'joydeep', 'no'),
(35, 'Sun-N-Sand, Juhu, Mumbai', '05-11-2017', 'joydeep', 'no'),
(36, 'FabHotel Di Oriell, Koramangla, Bangalore', '05-11-2017', 'joydeep', 'no'),
(37, 'Regenta Orkos Kolkata, Topsia, Kolkata', '05-11-2017', 'joydeep', 'no'),
(38, 'Hotel Royal Plaza, Connaught Place, New Delhi', '06-11-2017', 'joydeep', 'no'),
(39, 'Hotel Niharika, AJC Bose Road, Kolkata', '07-11-2017', 'joydeep', 'no'),
(40, 'Gold Finch Hotel, Andheri (East), Mumbai', '07-11-2017', 'joydeep', 'no'),
(41, 'Hotel Crest Inn, Ballygunge, Kolkata', '07-11-2017', 'joydeep', 'no'),
(42, 'Holiday Inn, Mumbai International Airport, Mumbai', '18-12-2017', 'joydeep', 'no'),
(43, 'Urbanpod Hotel, Andheri (East), Mumbai', '18-12-2017', 'joydeep', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotelID` varchar(10) NOT NULL,
  `hotelName` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `stars` int(5) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `hotelDesc` varchar(1000) NOT NULL,
  `checkIn` varchar(6) NOT NULL,
  `checkOut` varchar(6) NOT NULL,
  `price` int(10) NOT NULL,
  `roomsAvailable` int(5) NOT NULL,
  `wifi` varchar(5) NOT NULL,
  `swimmingPool` varchar(5) NOT NULL,
  `parking` varchar(5) NOT NULL,
  `restaurant` varchar(5) NOT NULL,
  `laundry` varchar(5) NOT NULL,
  `cafe` varchar(5) NOT NULL,
  `mainImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotelID`, `hotelName`, `city`, `locality`, `stars`, `rating`, `hotelDesc`, `checkIn`, `checkOut`, `price`, `roomsAvailable`, `wifi`, `swimmingPool`, `parking`, `restaurant`, `laundry`, `cafe`, `mainImage`) VALUES
('BLR001', 'Keys Select Hotel', 'Bangalore', 'Whitefield', 3, '4.4', 'Located on ITPL road with modern white exterior, the hotel offers rooms and apartments, gymnasium, and poolside bar. Reflecting the true spirit of liveliness, Keys Hotel Whitefield Bangaluru has a modern white architect design. Located on ITPL road across Graphite, the hotel is an hour drive from southern railway station. Popular destinations nearby include Tennis Club (6 km), Doddanekundi Lake (12 km), Karnataka golf association (14.5 km), and Bellandur Lake (12.5 km). The hotel is suitable for leisure and business travelers. The hotel offers keys rooms, keys indulge rooms, studio apartments and one bedroom apartment categories. The rooms are well-equipped with flat screen television, telephone, Wi-Fi, in-room safe, mini bar, tea/coffee maker, laundry, comfortable bed, an ergonomic chair, and a work desk. The en suite bathroom is facilitated with stand alone bath and shower cubicle with essential bath amenities.', '14:00', '12:00', 1556, 8, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Bangalore/keysSelect.jpg'),
('BLR002', 'FabHotel Di Oriell', 'Bangalore', 'Koramangla', 3, '3.9', 'Based in city area of Koramangala, the hotel offers 27 well-furnished rooms, and guests may dine-in or barbecue outdoor. FabHotel De Oriell is a well-furnished property located in the city area of Koramangala. The hotel is 11 km away from Kempegowda Railway Station. MNCs like Wipro, Bosch Technologies, Sasken Communications are all within a 5-minute drive. Landmarks like Garuda Mall, The Escape Hut, Tipu Sultan Summer Palace, and Freedom Park are within 10 km. This hotel is suitable for leisure and business travelers. The hotel offers 27 rooms in deluxe, studio room, and suite categories. The spacious rooms feature classic wooden furniture, LCD television, tea/coffee maker, mini-bar, and in-room safe. Select rooms are furbished with large lobby for free movement. The en suite bathroom is well-equipped with hot/cold water and bath essentials. For the convenience of guests, the hotel provides lift, WiFi, travel assistance, medical assistance, laundry, and car parking. To meet the needs o', '14:00', '12:00', 1556, 8, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Bangalore/fabhotel.jpg'),
('BLR003', 'The Elite Royal', 'Bangalore', 'HSR Layout', 3, '4.4', 'The Elite Royale is located in Bangalore which offers many interesting locations to visitors. The Elite Royale is a charming property that welcomes the visitors to the congenial conform and the world of hospitality. The property is located at an accessible distance from Bangalore International Airport and Bangalore Railway Station. The spacious, deluxe and designer rooms of the hotel invite indulgence with contemporary decor and also comfy beds and cozy bed linens. Festooned with range of amenities such as air conditioning, television, mini bar, electric kettle and many more. They have well maintained attached bathrooms fitted with necessary bathroom amenities and toiletries along with hot/cold water supply. Hotel Facilities: Hotel provides an array of other necessary services like Wi-Fi, laundry, airport transfer, room service, front desk and many more.', '14:00', '12:00', 1486, 8, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Bangalore/theElite.jpg'),
('BLR004', 'Hotel Ekaa', 'Bangalore', 'Hosur', 3, '3.8', 'Less than a 10-minute drive from Electronic City (7 km), the hotel is preferred by corporate travelers.\r\nGuest can book the spacious banquet hall to organizemeetings, conferences and private parties. Enjoy therapeutic massages at the hotels spa after a day out exploring the city. Travel desk, doctor on call, 24-hour security and valet parking are other facilities offered by the hotel.\r\nThe hotels 32 contemporary rooms come equipped with amenities like LCD TV, Wi-Fi, mini bar, personal safe and tea/coffee maker.\r\nMelange, the hotels multi-cuisine restaurant, serves Indian, Chinese and Continental cuisines. You can also enjoy North and South Indian dishes at the vegetarian restaurant Sree Krishna Sagar Greens.\r\nGopalan Innovation Mall and Tibet Mall are a 15-minute drive from the hotel.', '14:00', '12:00', 1000, 8, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Bangalore/ekaa.jpg'),
('BLR005', 'Lemon Tree Premiere', 'Bangalore', 'Ulsoor Lake', 4, '4.4', ' Located just 4.1 km from Bangalore Palace, 4.5 km from Visvesvaraya Industrial and Technological Museum and 6.6 km from Bangalore City Junction Railway Station, Lemon Tree Premier is a short walk from Ulsoor Lake. The hotel offers 188 rooms, which are spacious, well-furnished and well-maintained. Satellite TV, tea/coffee maker, electronic safe and Wi-Fi (surcharge) are amenities found in all the rooms. There are special rooms, having wide doors and special amenities, for differently- abled guests. Given its prime location near the MG Road and important tourist attractions, the hotel is suitable for business and leisure travelers alike. The availability of conference room, boardroom and banqueting space helps guests organize business meetings, events or social gatherings. Swimming pool, fitness centre and spa are other highlights of the hotel. Citrus Cafe is the multi-cuisine restaurant where Indian and international delicacies can be savored. There is also an award winning restaurant ', '14:00', '12:00', 2351, 8, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Bangalore/lemonTree.jpg'),
('BLR006', 'Ramada Encore', 'Bangalore', 'Dolmur 1st Stage', 4, '3.8', 'Offering a gym, meeting facilities, multi-cuisine restaurant and free Wi-Fi, it is just 1 km from Embassy Golf Links Business Park. Situated on Intermediate Ring Road in Bangalores Indiranagar suburb, Ramada Encore Bangalore is a contemporary 4 star property. Offering easy access to Embassy Golf Links Business Park (1 km), M G Road (5 km) and Bagmane Tech Park (7 km), the hotel is suitable for both corporate and leisure visitors. Further, Bangalore City Junction Railway Station is less than 30 mins drive from here whereas Kempegowda International Airport is an-hour away. Tourist spots less than 8 km away include Vidhana Soudha, Cubbon Park, HAL Museum and Lalbagh Botanical Garden. Designed in contemporary style, the hotels 90 rooms are spacious, airy and tastefully furnished. Each room has wooden flooring and memory foam beds, and comes equipped with 40-inch LED TV, air conditioning, work desk, electronic safe, mini bar, tea/coffee maker and telephones with voice mail facilities. Glass', '14:00', '12:00', 2351, 8, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Bangalore/ramada.jpg'),
('BLR007', 'Citrus Cunningham Road', 'Bangalore', 'Cunningham Road', 4, '3.8', 'Set in the heart of Bangalore, Citrus Cunningham Road boasts a rooftop lounge bar, outdoor dining and a relaxing spa. The Citrus Cunningham Road Bangalore is 33 km from the Bangalore international airport and 3 km from the Bangalore city railway station. It is also 3 km from the Majestic Interstate bus Terminal. The Tipu Sultan Summer Palace is 6 km from the property. The Lal Bagh Botanical Garden is about 6 km from the hotel. Guests should definitely not miss the Bangalore Palace, which is less than 3 km from the property. The Superior rooms and the Deluxe rooms are the two room categories at the hotel. The in-room amenities include high-speed Wi-Fi, air conditioning, hot and cold water, and minibar. All the rooms have a universal adapter, which makes it convenient to charge ones gadgets. The view of the rooms is limited to the urban surroundings of Bangalore city. Set in the heart of Bangalore, the Citrus Cunningham Road boasts a rooftop lounge bar, outdoor dining and a relaxing spa.', '14:00', '12:00', 2350, 8, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Bangalore/citrus.jpg'),
('BLR008', 'The Pride', 'Bangalore', 'Richmond Road', 4, '4.3', 'Location: Located on the famous Richmond Road, The Pride - Bangalore is only 4 km from Bangalore City Junction Railway Station, 2.5 km from Visvesvaraya Museum and 4 km from Vidhana Soudha. Other places of interest like Lalbagh Lake (3 km), Garuda Mall (2 km) and MG Road(2.4km) can be reached with ease. Designed in contemporary architecture, the hotel features 100 rooms, including 57 Deluxe Rooms, 38 S-Class Rooms and 5 Suites. In-room amenities include air conditioning, hair dryer, Internet, telephone and tea/coffee maker. Additional services like mini bar, TV and electronic safe can be availed in select rooms. The property has four multi-functional halls. Other facilities include a board room, business centre, spa, gym, laundry and travel desk. Featuring lavish interiors and relaxed setting, Fuel-Resto Bar is an onsite restaurant that specializes in Mediterranean and Indian cuisine. There is a 24-hour coffee shop as well, called Cafe Treat. Angare is an open air restaurant offering a', '14:00', '12:00', 2881, 13, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Bangalore/thePride.jpg'),
('BLR009', 'Fortune Select JP Cosmos', 'Bangalore', 'Cunningham Crescent Road', 5, '4.3', 'Fortune Select JP Cosmos is situated in the heart of Bengaluru city, just off Cunningham Road behind the famous Sigma Mall. Itsjust 2 km from MG Road, the Central Business District of Bangalore, and 500 meters from Cantonment Railway Station with easy access to the new International Airport at Devanhalli. The lush gardens and the noble architecture give it a sense of grandeur. The hotel has a selection of 134 well-appointed rooms. 1 room has been specially designed for differently-abled. The spacious rooms boast of a carefully crafted blend of modern amenities and aesthetics.Rooms are provided with contemporary amenities like air conditioning, satellite television, telephone, iron/ironing board on demand, tea/coffee maker, in-room-safe, sofa units, mini bar and en suite bathrooms have hot and cold water along with essential toiletries. For wholesome dining experience, guests can step in the on-site restaurant, Zodiac, that serves tempting multi-cuisine dishes along with hot and cold be', '14:00', '12:00', 3522, 12, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Bangalore/jpCosmos.jpg'),
('BLR010', 'The Lalit Ashok', 'Bangalore', 'Kamara Krupa High Ground', 5, '4.1', ' The Lalit Ashok is regarded as one of the finest 5-star hotels in Bangalore. Sprawling over an area of 10 acres, the hotel is around 2 km from the lush Bangalore Golf Club and over 4 km away from Bangalore Railway Station. The high-end luxurious property offers 184 well-decorated rooms and suites. All the rooms face either the golf course or the hotels azure pool. The elegantly furnished rooms are replete with an array of amenities like mini bar, LCD TV, electronic safe, Internet, tea/coffee maker, work desk etc. The hotel offers spacious and well-equipped venues for organizing business events and other social gatherings. The signature Rejuve - The Spa offers aroma, ayurvedic, herbal treatments and yoga. Facilities like outdoor swimming pool, gymnasium and tennis court are offered by the hotel. Guests can visit any of the three restaurants of the hotel: 24/7 Restaurant (multi-cuisine), Baluchi (Pan Indian cuisine) and OKO (Pan Asian cuisine). To enjoy an array of refreshing cocktails ', '14:00', '12:00', 6624, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Bangalore/lalit.jpg'),
('BOM001', 'Hotel Rosewood', 'Mumbai', 'Mumbai Central', 2, '4.0', 'Hotel Rosewood has the basic necessities and keeps very high standard of cleanliness. This 5 floored hotel offers value for money and will make sure your stay is a pleasurable one. Lobby The lobby is a small but well designed area with a black and white marble slab for the reception top and a wooden framework at the bottom. A magnificent scenery painting is mounted on a wooden panel behind the reception. There are glass paintings on the walls and a magazine rack placed next to the seating area. Rooms A total of 45 rooms spread over 5 floors are divided into categories which cater to different budgets and needs of the guests. There are 27 Standard rooms, 15 Deluxe rooms, 2 Suites and 1 Single room. The Standard rooms are further divided into categories with twin beds and double beds. The rooms have either brown, beige or red & black upholstery and bedcovers. Mini bars are offered only in the suites and Deluxe rooms and only the Suites boast of bathtubs. The Suites being the biggest room', '14:00', '12:00', 1600, 15, 'Yes', 'No', 'Yes', '', 'No', 'Yes', 'images/hotels/cities/Mumbai/rosewood.jpg'),
('BOM002', 'Hotel Columbus', 'Mumbai', 'Mumbai International Airport', 2, '3.7', 'Hotel Columbus is a budget hotel situated in Vile Parle- a suburb of Mumbai. The property is located within 15 minutes drive from ', '14:00', '12:00', 1800, 15, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Mumbai/columbus.jpg'),
('BOM003', 'Urbanpod Hotel', 'Mumbai', 'Andheri (East)', 2, '4.4', ' Hotel Urban Pod is situated in Mumbai which is popular as the entertainment and financial capital. Hotel Urban Pod is a reliable property that offers budget accommodation, courteous hospitality and customized services. Easy mode of transportation to the hotel is available through Chhatrapati Shivaji International Airport and Mumbai Central Railway Station that are well connected to all major cities. The rooms are well furnished with unique interiors with a feel of an upscale home including comfy beds and comfortable linens. Evoking the grandeur and opulence, all rooms are finely appointed with all necessary room amenities like television and many more. All rooms have attached bathrooms well equipped with essential bathroom amenities and toiletries along with hot/cold water supply. The property host an array of all modern amenities like Wi-Fi, concierge service, room service and many more for a quality stay. The professional and attentive staff of the hotel is always ready to help gues', '14:00', '12:00', 2400, 15, 'Yes', 'No', 'Yes', '', 'No', 'Yes', 'images/hotels/cities/Mumbai/urbanpod.jpg'),
('BOM004', 'Hotel Elphinstone Annex', 'Mumbai', 'P D Mello Road', 2, '4.1', 'gfg', '14:00', '12:00', 1900, 15, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Mumbai/elphinestone.jpg'),
('BOM005', 'Gold Finch Hotel', 'Mumbai', 'Andheri (East)', 3, '3.4', 'Around 3 km away from Mahakali Caves, Goldfinch Mumbaifeatures facilities like a banquet hall, board rooms, restaurant, cafe mojo bar and WiFi internet. Goldfinch Mumbai is located close to the major business districts and shopping hubs like SEEPZ, MIDC,Oberoi Mall, Infiniti Mall. Rated 4 star, this business hotel features 91 well-designed rooms that are divided into two types- Executive Rooms, and Suites. All the rooms are centrally air-conditioned and have cable TV, Wi-Fi (chargeable) and iron/ironing board (on request). Ideal for meetings and parties, this hotel features four well-equipped boardrooms and a banquet hall- Bay Leaf. Seanete To cater business travellers, facilities like video conferencing, photocopy centre, Wi-Fi and broadband connectivity are available. Laundry, currency exchange, travel desk and valet parking are other facilities offered at the hotel. Saffron Spice is the stylish on-site restaurant that serves mouth-watering Thai, Indian and Chinese delicacies. Enjoy ', '14:00', '12:00', 1800, 15, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Mumbai/goldFinch.jpg'),
('BOM006', 'Hotel Parle International', 'Mumbai', 'Vile Parle East', 3, '3.4', 'Hotel Parle International is situated in Mumbai. The hotel offers Wi-Fi, room service, pickup and drop, front desk and many more. It is situated at a distance of 3 km from Western Express Highway Metro Station and 5 km from Chhatrapati Shivaji International Airport. The cozy in-house multi-cuisine restaurant is a perfect place for guests to pamper their taste buds with a wide range of delectable dishes. One can savor yummy dishes and fresh beverages at on-site coffee shop. The hotel features a boardroom and ball room to fulfill the needs of corporate travelers. The rooms are designed to provide the right ambiance and amenities for relaxing stay to discerning business traveler. They are a blend of beauty and comfort with exquisite interiors and spacious to move around freely. They are equipped with air-conditioner, television, tea/coffee maker, comfortable beds and hot and cold water. The hotel is at a walking distance from the famous Mahalakshmi Temple. The guests can visit places like', '14:00', '12:00', 2500, 15, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Mumbai/parle.jpg'),
('BOM007', 'Hotel Krishna Palace', 'Mumbai', 'Grand Road', 4, '3.9', '3 km from Mumbai Marine Drive, Krishna Palace features the popular Baroke nightclub, ghazal nights and The Flute restaurant and bar. A place you can call home; Krishna Palace Hotel is a four star hotel offering premium luxuries and world class amenities, at economical prices. Located in the heart of South Mumbai, Krishna Palace Hotel is just 180 m from the Grant Road Railway Station and is in close proximity to Marine Drive (3 km), Chhatrapati Shivaji Terminus (5 KM), Nariman Point (5 km), and Colaba (8km). Chhatrapati Shivaji International Airport is just 18 km away. Krishna Palace Hotel has 68 rooms with royal ambience. The accommodation is categorised into Deluxe or Executive rooms, and ultra-spacious Suites. The Deluxe rooms offer amenities including WiI-Fi, LCD TV, electronic safes, tea/ coffee maker and mini bar while the Executive rooms add to the luxuries with separate working desk, magnifying mirrors in the bathroom, and ironing board/ iron on request. 24 hr room service is av', '14:00', '12:00', 4416, 15, 'Yes', 'Yes', 'Yes', '', 'No', 'Yes', 'images/hotels/cities/Mumbai/krishnaPalace.jpg'),
('BOM008', 'Royal Orchid Central Grazia', 'Mumbai', 'Vashi', 4, '4.0', ' Approx. 2 km from Raghuleela Mall, Royal Orchid Central Grazia is strategically located in Vashi. Its situated at a distance of 26 km from Chhatrapati Shivaji International Airport and 21 km from Kalamboli Railway Station. The hotel features 67 spacious and elegantly designed Deluxe and Club Rooms. These rooms feature modern amenities like air-conditioner, direct-dial phone, 32-inch flat screen TV, tea/coffee maker, in-room safe, hair dryer and Wi-Fi access. The hotel offers Wi-Fi, travel assistance, currency exchange, parking, laundry service and more. The banquet and conference facilities are suitable for business and social events. During the stay here, guests can avail leisure facilities such as swimming pool and gym to maintain fitness regime even while travelling. Echo- the in-house coffee shop serves delicious snacks and refreshing drinks. Twilight is the in-house rooftop restaurant where guests can enjoy Oriental and Indian cuisines.', '14:00', '12:00', 3359, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Mumbai/royalOrchid.jpg'),
('BOM009', 'Holiday Inn', 'Mumbai', 'Mumbai International Airport', 5, '4.4', ' Holiday Inn Mumbai International Airport is located at an accessible distance of 3.7 km from Chhatrapati Shivaji International Airport and 6 km from Andheri Railway Station. It is also close to various tourist attractions, such as 2.6 km from Jangaleshwar Mahadeo Mandir, 4 km from Powai Lake, 7.3 km from Bandra Kurla Complex.The hotel isa few minutes away from Chandivali Lake and also enjoys proximity to Mahakali Caves and Sidhpura Industrial Estate. As per their needs, guests can choose the room type from 245 aesthetically designed rooms. These have been divided intoExecutive Room, Superior Room, Deluxe Room and Suite. All the rooms consistof several amenities like coffee/tea maker, mini-bar, work desk, satellite TV and telephone. The hotel offers a wide range of facilities like valet parking, doctor on call, Wi-Fi internet access, laundry/dry cleaning service, spa, front desk and travel assistance. The hotels spacious ballroom, well-maintained terrace and 3 air-conditioned halls of ', '14:00', '12:00', 4381, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Mumbai/holidayInn.jpg'),
('BOM010', 'Sun-N-Sand', 'Mumbai', 'Juhu', 5, '4.2', 'Fun in the Sun-N-Sand Mumbai includes exotic spa treatments, traditional Awadhi delicacies, Chinese cuisine and a cocktail bar. Sun-n-Sand of Mumbai is Indias first beachfront hotel that opened in 1962. Located at the Juhu beach, the hotel is near Chhatrapati Shivaji International Airport (5 km), Ville Parle Railway Station (3 km) and Parasi Colony Juhu Bus stop (1 km). Famous tourist attractions in the vicinity are ISCON temple (800 m), Prithvi theatre (650 m) and Juhu beach (2 km). The rooms are categorised into Superior Rooms, Ocean Facing, Executive Rooms, Club Superior Rooms, Club Ocean/Pool facing Rooms, Deluxe Suite, Luxury Suite and Presidential Suite. All rooms have TV, WiFi, telephone, digital locker, AC controller, minibar, and tea/coffee maker. Rooms also have weighing machine, hairdryer and newspapers. Frequented by Bollywood stars, the hotel has a health club, swimming pool and spa which includes sauna, steam and Jacuzzi. Other facilities include a business centre, confer', '14:00', '12:00', 5021, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Mumbai/sunNsand.jpg'),
('DEL001', 'Red Fox Hotel', 'New Delhi', 'Mayur Vihar, Phase 3', 3, '4.0', ' Red Fox Hotel is 26km from Indira Gandhi international airport and 18 km from the Delhi railway station. Delhi Aerocity Airport Express Metro Station is just 1 km away. The hotel offers 207 smart rooms and suites in the preferences of Standard, Superior and Executive ones. Each room in different categories includes the smart amenities of LCD television, IRD, laundry, utility kiosks with ironing and water cooler, Wi-Fi, tea/coffee maker, mini fridge and premium bedding. The en suite bathroom hosts a rain shower with complete toiletries. One special-abled room has been designed for the under privileged. The hotel offers 24-hour front desk service for the guests. The guests can cater to their fitness needs by treating their bodies at our fully equipped fitness centre. The conference room has the capacity to house a huge gathering in different styles and is well equipped with all necessary facilities and equipment to ensure smooth functioning of an event. The hotel offers cyber kiosk, a t', '14:00', '12:00', 2389, 9, 'Yes', 'No', 'Yes', '', 'No', 'No', 'images/hotels/cities/NewDelhi/redFox.jpg'),
('DEL002', 'Hotel Le Roi', 'New Delhi', 'Paharganj', 3, '4.1', '2.6 km from Chandni Chowk, 1.8 km from New Delhi Railway Station, 15.5 km from the IGI Airport, Multi-cuisine restaurant, Wi-Fi. Hotel Le Roi, located in Paharganj, is a budget boutique hotel with 53 air-conditioned rooms that have sound-proof doors and windows. This 3 star property offers modern amenities, such as colour TV, telephone, internet, tea/coffee maker and mini bar in all its rooms. It lies in proximity to popular attractions, such as Red Fort, Jama Masjid, Birla Mandir and India Gate. The hotel offers other facilities, such as laundry, doctor-on-call, and 24-hour air and railway booking. The travel desk in the hotel organises holiday packages to Agra, Shimla, Jaipur and other popular tourist destinations., besides local tours. There is a business centre in the lobby that is available throughout the day and has a conference facility and wireless internet. Awarded for its excellent service by Brands Academy, Hotel Le Roi is an ideal option for both business and leisure travel', '14:00', '12:00', 1540, 15, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/NewDelhi/leRoi.jpg'),
('DEL003', 'Hotel Hari Piorko', 'New Delhi', 'Paharganj', 3, '4.2', 'Sprawling over an area of 5,000 square yards, Hotel Hari Piorko welcomes guests to its cosy ambience. The hotel is located in proximity to the New Delhi railway station, while the Indira Gandhi International Airport can be reached within 30 minutes. Guests can choose from 39 spacious rooms, categorised as Executive Gold, Executive Room, Deluxe Room, Semi Deluxe, Quad (Four Bed), Triple Bed Room and Club Room. LCD TV with satellite channels, direct-dial telephone and refrigerator are some of the in-room amenities. The 24-hour business centre in the hotel caters to all the needs of corporate guests. For leisure and recreation, guests can avail health benefits from therapeutic Kerala massages at the wellness centre or spend a pleasurable time at the rooftop garden of the hotel. Other facilities offered include laundry, money exchange, doctor-on-call and airport pick-up/drop. Featuring beautiful decor, the hotel has a food court that serves mouth-watering delicacies in its cosy ambience. F', '14:00', '12:00', 1724, 12, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/NewDelhi/hariPiorko.jpg'),
('DEL004', 'Ginger Gurgaon', 'New Delhi', 'Gurugram', 3, '3.5', 'Ginger Gurgaon is located in New Delhi which has numerous attractive places and sightseeing for travelers to explore. Ginger Gurgaon offers a fine blend of opulence and comfort at its best. The nearest means of transport to reach the hotel are Gurgaon Railway Station and Indira Gandhi International Airport. All rooms are well furnished and have been created to blend comfort with style. The shelves of each room are decorated with artifacts and this adds to the beauty of the rooms Furnishings and fabrics of contrasting colors enhance the aura of each room. All rooms have attached bathrooms with running hot and cold water. The hotel ensures varying requirements of guests are fulfilled as ample conveniences are offered which includes front desk, room service and many more. A friendly and dedicated staff will create a loving and relaxing experience so that each guest will be completely satisfied.', '14:00', '12:00', 2059, 13, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/NewDelhi/ginger.jpg'),
('DEL005', 'Hotel Mint Casa', 'New Delhi', 'Mathura Rd, New Friends Colony', 3, '4.0', ' Hotel Mint Casa is situated in the New Friends Colony in South Delhi. Hotel Mint Casa is present at a 10 minutes drive from the Delhi metro station. The New Delhi Railway Station and Indira Gandhi International Airport are at 10 km and 16 km distance from the hotel respectively. The rooms speak impressively through each precisely crafted amenity which is used to enhance the beauty of the space. They are adorned with comfy beds, clean linen, television, mini bar, safe deposit locker, wardrobe and many more. All rooms have attach bathrooms with complimentary supplies of basic standard toiletries in each. For the comfortable stay of the guests, the hotel features pickup and drop service, laundry, travel assistance, medical assistance, wake-up call service, and parking facility. The hotel also offers conferencing and banqueting space for social events. The warm and supportive staff ensures any and every whim is met at the earliest. There is in-house restaurant that serves Indian, Chinese ', '14:00', '12:00', 1550, 15, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/NewDelhi/mintCasa.jpg'),
('DEL006', 'Hotel Royal Plaza', 'New Delhi', 'Connaught Place', 4, '3.9', 'The Royal Plaza features Delhis highest lounge - the SKY Lounge, a spa, the rooftop Royal Brewery and the Lutyens restaurant. Hotel The Royal Plaza is a classic business hotel in Connaught Place, New Delhi. The modes of connectivity nearby are New Delhi Railway Station (3 Km) and Indira Gandhi International Airport (14 Km). Tourist attractions in close proximity include Connaught Place (2 Km), India Gate (2 km) Gurudwara Bangal Sahib (3 Km), and Pragati Maidan (3 Km). Guests can choose from 419 rooms and suites categorized as Deluxe Rooms, Club Rooms, Royal Suites and Maharaja Suites. They offer a birds eye view of the city and come with modern amenities such as a mini-bar, electronic Safe, flat-screen TV, work desk with chair, tea/coffee maker and attached bathroom with separate shower. Among the health and wellness options, there is a gym and fitness center, Energy the spa and salon and a swimming pool. There are numerous event spaces at the hotel- Regal, Regent, Venetian, Connaught,', '14:00', '12:00', 6302, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/NewDelhi/royalPlaza.jpg'),
('DEL007', 'The Picadilly', 'New Delhi', 'Janakpuri', 5, '3.7', 'Piccadily Hotel is located in the capital city of India, New delhi. The seven times destroyed capital city, Delhi speaks through its diverse ethnicity, culture and tradition, food and language. Political and business centre of the country, Delhi boasts of being the perfect blend of history and modernity. The Piccadily Hotel is designed and appointed to satisfy the most elegant and extravagant tastes in luxury lifestyles. The property offers an ideal and the perfect blend of convenience and efficiency to guests from holiday makers to business travellers. Quietly elegant and exclusive the property facilitates room amenities that ensures a delightful stay for guests. Attached bathrooms here are neat and equipped with necessary toiletries.', '14:00', '12:00', 3761, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/NewDelhi/piccadily.jpg'),
('DEL008', 'The Pilazzio', 'New Delhi', 'Sector 29, Janakpuri', 5, '4.2', 'European architecture and gardens greet guests at Pllazio. Enjoy all day dining at Melange and signature cocktails at Scruples Bar. Elegantly designed with continental overtones, wide portico and landscaped gardens, the Pilazio is located very close to Huda Metro Station (1 km). The other modes of connectivity are Bridge Railway Station (19 km) and the Indira Gandhi International Airport (14 km). It offers easy access to some of the main tourist spots such as the Kingdom of Dreams (650 m) and Qutub Minar (17 km). Set amidst spacious grounds and verdant greenery, the hotel features 80 rooms and 2 suites. They are all elegantly styled to reflect the very best of European architecture, including large windows that offer scenic views of the garden. The air conditioned rooms come with WiFi, in-room safe, iron and iron board and well-designed bathrooms with complimentary toiletries.\r\n The hotel features a well-equipped business center with secretarial services. Event spaces include a banquet', '14:00', '12:00', 3723, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/NewDelhi/pllazio.jpg'),
('DEL009', 'The Suryaa Hotel', 'New Delhi', 'Okhla', 5, '4.2', ' The Suryaa is a business hotel that is well connected to the main transportation hubs such as Indraprastha Metro Station (11 km), New Delhi Railway Station (13 km) and Indira Gandhi International Airport (18 km). Some of the places of interest that are not too far away include Lotus Temple (5 km), Red Fort (12 km) and Jama Masjid (13 km). There are 244 elegantly appointed and themed rooms categorized as Club rooms, Deluxe rooms and Luxury Suites. Each room has large French windows offering an expansive views of the surrounding. All the rooms are air-conditioned and come equipped with WiFi, flat-screen TV, mini-bar, coffee/ tea maker, work desk and plush furniture. Only guests staying in the Club Room and Luxury Suite have access to the gym and outdoor pool. The hotel features three banqueting halls- Elysee, Crystal and Vendome, each with the capacity to accommodate 500 guests. There is also a well-equipped business center with video conferencing facilities, as well as a gym, swimming ', '14:00', '12:00', 6000, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/NewDelhi/suryaa.jpg'),
('DEL010', 'The Bristol', 'New Delhi', 'DLF City, Gurgaon', 5, '4.2', ' Offering superlative standards of comfort and luxury, this business hotel is set close to both Delhi and Faridabad. The Bristol Hotel is located close to various shopping and entertainment options including Sahara Mall (600 m), City Center Mall (1 km), Ambiance Mall (8 km) and Qutub Minar (9 km). Indira Gandhi International Airport is 12 km away and Gurugram Railway Station is 8 km away. A truly luxurious business hotel, there are 83 rooms comprising of Executive Club Rooms, Deluxe Rooms, Penthouse Suites, and Business Suites. The beautiful interiors are constructed from the finest wood. Every room offers tea/ coffee maker, Wi-Fi, newspaper, bottles of drinking water, electronic safe, indoor parking, hair dryer, and iron/ ironing board. The rooms also feature a bedside console to control AC/ lights/ TV and world time display. The list of facilities at the Bristol Hotel includes 24 hr room service, laundry and dry cleaning on chargeable basis, travel desk assistance, secretarial servic', '14:00', '12:00', 3723, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/NewDelhi/bristol.jpg'),
('GHY001', 'Hotel Brindavan', 'Guwahati', 'Paltan Bazaar', 2, '4.1', 'Hotel Brindavan is a 2 star property, located at 21.4 kms from Guwahati Airport, 400 metres from Guwahati Railway Station and 2.5 kms from Maskhowa ASTC Bus Stand. The hotel is embedded with all amenities and comforts of highest living with warm hospitality and dedicated services. It proffers unparalleled and unforgettable experiences to its guests. In addition to the beautiful landscape and architect, the hotel has huge potential to offer with a lasting impression on every visitor. The property provides facilities like doctor on call, laundry, airport transfers, room service, guide service, sightseeing and parking. Limited room service, that is offered from 7 am to 10 pm, is also offered. The guest rooms are specious and outstanding and come fitted with modern amenities. Each room features a television with cable/satellite channels, intercom, Wi-Fi internet, snack basket and mineral water are available at a charge. Geyser and bathroom toiletries are provided in the attached bathrooms.', '8:00', '12:00', 2389, 9, 'Yes', 'No', 'Yes', '', 'No', 'No', 'images/hotels/cities/Guwahati/brindavan.jpg'),
('GHY002', 'Hotel Siroy Lily', 'Guwahati', 'Paltan Bazaar', 2, '3.4', 'Just 400 m from Guwahati train station, Hotel Siroy Lily is a budget property in the heart of the city. Guests can take a short drive to ISKCON Temple (1.2 km) and Nehru Park (1.9 km). Ferry Ghat is only 2.1 km away. In addition to a banquet hall, the hotel offers 24-hour room service, laundry service, car rental, parking and travel desk. Stay in one of the hotels AC/non-AC rooms that are spacious and have wooden furnishing. Rooms are well-equipped with amenities like flat-screen TV, telephone, wardrobe, and work desk. You can enjoy tea/coffee and Indian dishes at the multi-cuisine restaurant. Bar service is also available at the hotel.', '8:00', '12:00', 4142, 15, 'Yes', 'No', 'Yes', '', 'No', 'Yes', 'images/hotels/cities/Guwahati/siroyLily.jpg'),
('GHY003', 'Hotel Vishwaratna', 'Guwahati', 'AT Road', 3, '4.2', 'Hotel Vishwaratna is located in one of the fastest growing and beautiful cities of India, Guwahati. One can reach this swanky plush property via Lokpriya Gopinath Bordoloi International Airport(21 km) and hotel is just a kilometre away from Guwahati Railway Station. During the stay in this city, do not miss a chance to visit attractions like Assam State Museum(1.5 km), Guwahati Zoo(6 km), Kamakhya Temple(7 km) and Srimanta Sankaradeva Kalakshetra(12 km).Featuring roof-top restaurant, bar and Wi-Fi, this property is located in proximity to Paltan Bazar- Guwahatis prime shopping and commercial centre. All air-conditioned rooms are beautifully decorated, well maintained and fitted with amenities like satellite television, mini-bar, tea/coffee maker, internet access and much more. En suite bathrooms come with shower, hot/cold water supply plus all.Being an ideal place for business as well as leisure travellers, hotel offers conference/banquet halls to organise functions. Hotel also offers ', '7:00', '12:00', 1724, 12, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Guwahati/vishwaratna.jpg'),
('GHY004', 'Hotel Nandan', 'Guwahati', 'Paltan Bazaar', 3, '4.2', 'Hotel Nandan is nestled in a city where mighty river brahmaputra flows right in between the city delicately splitting it into two', '8:00', '12:00', 2956, 13, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Guwahati/nandan.jpg'),
('GHY005', 'Pragati Manor', 'Guwahati', 'GS Road', 3, '4.2', 'Hotel Pragati Manor, set on G.S. Road, is a 15-minute from Guwahati Railway Station. Guests can seek blessings at the Baptist Church, which is within a 5-minute walk of the hotel. There are well-equipped venues for hosting social and business events like marriage functions, meetings and seminars without hassle. Other facilities offered here are 24-hour room service, laundry, dry cleaning and luggage storage.Relish an array of delectable specialties at the on-site Chaska restaurant. Enjoy a fine selection of snacks, refreshments and drinks at the Coffee Shop within the premises. Along with these, there is an in-house lounge bar that is stocked with a variety of exotic beverages. Guests can choose from 47 air-conditioned and fully furnished rooms at this property. These are categorized as Royal Suite, Presidential Suite, Imperial Suite, Imperial Club, Corporate and Executive. Common in-room amenities include cable television, telephone, mini bar and reading lamps. The attached bathrooms ', '8:00', '12:00', 3723, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Guwahati/pragatiManor.jpg'),
('GHY006', 'Hotel Gateway Grandeur', 'Guwahati', 'GS Road', 3, '4.3', 'Within 7 km radius from Guwahati railway station and Assam State Zoo, Hotel Gateway Grandeur offers conference rooms, pool, gym, spa and restaurant. Hotel Gateway Grandeur is a prominent 3 star property located on G.S. Road in Guwahati, at a 25-minute drive from Kamakhya Temple. The hotel maintains 50 rooms in six categories - Grandeur Executive Room, Grandeur Corporate Room, Grandeur Bliss, Grandeur Club Suite, King Queen Princess and Presidential Suite. In-room amenities include cable TV with satellite channels, mini bar, safe and tea/coffee make. The hotel features five conference halls, namely The Lotus, Tulip, Laurel, Maple and Aster, which can accommodate 20 to 150 people. For catering to the needs of corporate guests, the hotel also offers internet, LCD projector, workstations and secretarial service. In addition, there is an R & D Hall that can be utilised for conferences, parties or other events. Guests can avail on-site recreational facilities like swimming pool, fitness cent', '13:00', '12:00', 3424, 14, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Guwahati/gatewayGrandeur.jpg'),
('GHY007', 'Hotel Grand Starline', 'Guwahati', 'GS Road', 3, '4.1', 'Hotel Grand Starline is located in one of the fastest growing and beautiful cities of India, Guwahati. One can reach this swanky plush property via Lokpriya Gopinath Bordoloi International Airport (28 km) and hotel is just 7 km away from Guwahati Railway Station. During the stay in this city, do not miss a chance to visit attractions like Guwahati Zoo (3 km), Srimanta Sankaradeva Kalakshetra (7 km), Assam State Museum (8 km), Kamakhya Temple (14 km) and many more. Surrounded by the canopy of beautiful nature sights, this hotel offers variety of essential services to its guests and in turn makes their stay a memorable one. For accommodation the property features capacious and spotlessly clean rooms that are perfectly designed and crafted as per the taste of guests to make their stay relaxed and comfortable and are equipped with various conveniences like attached bathroom, hot and cold water.', '8:00', '12:00', 1604, 14, 'Yes', 'Yes', 'No', '', 'Yes', 'Yes', 'images/hotels/cities/Guwahati/grandStarline.jpg'),
('GHY008', 'Royal de Casa', 'Guwahati', 'GS Road', 4, '4.5', 'The modern hotel offers rooms with views of hills, full-service spa, outdoor pool, global fare and a British-style bar for drinks. All rooms and suites at the hotel are beautifully appointed, and feature modern amenities like air conditioning, LED TV, electric kettles, electronic safe, dual line telephone, free Wi-Fi access, and attached baths with hairdryers and exclusive toiletries. The assurance of prompt 24-hour room service is yet another comforting factor for guests. Besides, elegantly furnished Junior and Presidential Suites offer splendid views of mountains. Be soothed by music and fragrance of flowers at the full-service Plumeria Spa that offers an array of time-tested aromatherapy and Ayurveda therapies, along with Thai, hot stone and Abhyangam massages. The hotel also has a well-maintained outdoor pool for its fitness-conscious guests. Other offerings include two conference halls, luggage storage, parking and free Wi-Fi in public places. Living up to its name, the in-house D', '14:00', '12:00', 3385, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Guwahati/royalDeCasa.jpg'),
('GHY009', 'Radisson Blu', 'Guwahati', 'Tetelia', 5, '4.9', 'The Radisson Blu Guwahati features a world class health club, multiple fine dining venues, the stylish Reign Bar & more. Radisson Blu Hotel, Guwahati is 15 km away from Lokpriya Gopinath Bordoloi Airport and a 40 min drive from the Guwahati Railway Station. The Deepor Beel bird sanctuary is just 4 km away, and the famous cultural institution Sankardev Kalakshetra is a 47 min drive from the property. The hotel has 196 exquisitely done up rooms and suites. Spacious and with elegant decor, each room has an LED TV, a wardrobe, a mini-bar with a refrigerator and complimentary WiFi. Most of the rooms provide an excellent view of Assams green hills. The hotel offers huge banquet halls that are sufficiently equipped to hold large business conferences or even extravagant weddings. Other facilities include a terrace swimming pool, spa and gym. The terrace next to the swimming pool provides a sweeping view of the alluring scenery around the hotel. Other services on offer include daily housekeepin', '8:00', '12:00', 3424, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Guwahati/radissonBlu.jpg'),
('GHY010', 'Vivanta By Taj', 'Guwahati', 'Khanapara', 5, '4.8', 'A 6-minute walk from the Regional Science Centre, this upscale hotel is 6 km from Basistha Temple and 10 km from Assam State Museum. The warm, refined rooms offer free Wi-Fi, flat-screen TVs, sofas, and tea and coffeemakers. Upgraded rooms and suites add minibars and/or separate living areas. Room service is available 24 hours. Breakfast is complimentary and served in 1 of 3 gourmet restaurants. Theres also a bar, a rooftop pool and fitness facilities, plus a business centre.', '8:00', '12:00', 3424, 8, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Guwahati/vivanta.jpg'),
('KEL001', 'Hilton Hotel', 'Kerala', 'Perinthalmanna', 3, '4.0', 'Nestled amidst in the city of natural beauty, Hotel Hiton is located at a distance of 43.9 km from Calicut International Airport, 4.8 km from Pattikad Railway Station and 22.2 km from Malappuram Bus Stand.\r\nPopular tourist attractions like Nilambur Teak Museum, Kadalundi Bird Sanctuary, Valiya Juma Masjid, Kadampuzha Temple, Thirunavaya Templ and Biyyam Kayal are situated in the close vicinity to the hotel. Quietly elegant and exclusive, the hotel features facilities suchlike parking, airline desk, anti-slip ramps to allow wheelchair access, 24 hour concierge, 24 hours front desk, air conditioning, 24 hour coffee shop, laundry service, wake up call, terrace and gym. The rooms of the hotel are aesthetically designed and well maintained with amenities like international direct dialing facility, WiFi internet access, television, tea/coffee making facilities daily newspaper and 24 hour room service. The multicuisine restaurant serves choicest dishes from around the world to cater to the va', '10:00', '12:00', 1826, 9, 'No', 'No', 'Yes', '', 'No', 'No', 'images/hotels/cities/Kerala/hilton.jpg'),
('KEL002', 'Pookodans International', 'Kerala', 'Kondotty', 3, '4.0', 'The Hotel Pookodans International is located in Malappuram, which is bounded by the Nilgiris hills on the East and the Arabian Sea on the west. The hotel is merely a 10 minutes drive from Calicut International Airport and only 17.7 km from the Feroke Railway Station. As it is surrounded by natural views, there are many tourist destination such as Kottakkunnu, Beypore, Kappad beach, Mananchira, Thirumandhamkunnu Bhagavathy Temple, Kadampuzha Bhagavathy Temple and Nilambur Teak Museum. Tourist can get relaxed while they are on their vacation. Basic facilities like valet parking, laundry, dry cleaning, WiFi connection and broadband high-speed internet access are provided at this 3 star property. For the benefits of business travellers it provides boardroom, conference hall, banquet hall and business centre so that the traveller can organize meets, gatherings, seminars and conferences. In order to relish in leisure times guests can enjoy themselves at health club, swimming pool and fitness', '12:00', '12:00', 4000, 6, 'Yes', 'No', 'Yes', '', 'Yes', 'No', 'images/hotels/cities/Kerala/pookodans.jpg'),
('KEL003', 'Hotel City Palace Residency', 'Kerala', 'Wantoor', 3, '4.2', 'Located on Ooty Road, Hotel City Palace Residency is promised to be a home away from home for travelers in Wandoor town of Malappuram district. It is just 1 km away from the Wandoor Manalinmmal Bus Stand. People travelling to cities like Ooty, Mysore, Munnar and Kochi usually like to have a halt in this city. The hotel offers facilities like parking, doctor on call, airport/railway station pickup and drop, tour assistance. Guests can enjoy the mouth-watering dishes served at the in-house restaurant. For business travelers who want to host meetings and conferences, the resort has a stylish and well-appointed conference hall. For accommodation, this three-star property features capacious and spotlessly clean rooms that are perfectly designed. They are equipped with various conveniences like attached bathroom, hot and cold water.', '14:00', '12:00', 950, 7, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kerala/cityPalace.jpg'),
('KEL004', 'Ruby Residency', 'Kerala', 'Kottakkal', 2, '3.9', 'Located in Malappuram, Ruby Residency is at a distance of 27.7 km from Calicut International Airport, 24.9 km from Angadipuram railway station and 14.6 km from Tirur Bus Stand.\r\nThe rooms of the hotel are spacious airy and well maintained which makes staying here an absolute joy. The hotel also offers room service which ensures that the guests are well attended and their demands are met promptly.', '14:00', '12:00', 830, 13, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kerala/rubyResidence.jpg'),
('KEL005', 'Aarya Bhawan Residency', 'Kerala', 'Angadipuram', 1, '3.5', 'Aarya Bhavan Residency is nestled in Angadipuram, it is an important pilgrimage centre for Hindus located in Malappuram District of Kerala. Entire region is famous for its exotic backwaters and paddy fields. The hotel is located at the distance of  550 m from Angadipuram Railway Station, 750 m from Angadipuram Temple Bus Stop, 17 km from MSP Bus Stop, Kozhikode and the nearest airport is Calicut International Airport. While staying in this beautiful city, guests should make a point to visit the places like Thali Mahadeva Temple(1 km), St.Marys Church(5 km), Christu Raja Church(6 km) and lots of other religious and tourist spots.Guests can seek blessings of the almighty and spend some peaceful time at Thirumandhamkunnu Temple which is located at the distance of only1 km from the hotel. For the comfortable stay of guests, hotel features the services like front desk, parking, elevator for easy movement, housekeeping, laundry, room service, Wi-Fi, travel desk, tourist guide, currency excha', '14:00', '12:00', 700, 15, 'No', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kerala/aryaBhawan.jpg'),
('KEL006', 'Malabar Heritage', 'Kerala', 'Manjeri', 1, '4.0', 'Located in Malappuram, Malabar Heritage is at a distance of 22.8 km from Calicut International Airport, 21.9km from Angadipuram railway station and 12.3 km from Malappuram Bus Stand. Facilities hotel offers are doctor on call, laundry and room service. All rooms are equipped with television, hot/cold water, attached bathroom and essential bathroom toiletries.It features well-equipped conferencing and banqueting venues, making it a perfect base for business travellers. Relish authentic and flavourful dishes in the serene ambience of the in-house swanky restaurant. Guests can request rejuvenating massage therapies and treatments at the in-house ayurveda center.', '14:00', '12:00', 3300, 14, 'Yes', 'No', 'Yes', '', 'Yes', 'No', 'images/hotels/cities/Kerala/malabar.jpg'),
('KEL007', 'Kumargiri Farm & Nature Camp', 'Kerala', 'Malappuram', 1, '4.1', 'Kumaragiri Farm And Nature Camp is situated in the beautiful city in the southern Indian state of Kerala, Malappuram. The nearest airport is the Calicut International Airport and the closest railway station Angadipuram Railway Station which makes it easy for the guest to commute.The camp has comfortable accomodation for the visitor, for a relaxing stay. There is a facility of private bathroom with required bath amenities. The city has many interesting places which the guest can explore. Have a nice stay at Kumaragiri Farm And Nature Camp!', '12:00', '12:00', 1500, 14, 'No', 'No', 'Yes', '', 'No', 'No', 'images/hotels/cities/Kerala/kumargiri.jpg');
INSERT INTO `hotels` (`hotelID`, `hotelName`, `city`, `locality`, `stars`, `rating`, `hotelDesc`, `checkIn`, `checkOut`, `price`, `roomsAvailable`, `wifi`, `swimmingPool`, `parking`, `restaurant`, `laundry`, `cafe`, `mainImage`) VALUES
('KEL008', 'Vivanta By Taj', 'Kerala', 'CV Pillai Road', 5, '4.4', ' The hotel is less than 10 km from the coast, 15 mins from the Trivandrum International Airport and 5 mins from the Trivandrum Central Railway Station. In the heart of the city, it is close to attractions such as Padmanabhaswamy Temple (3 km), Priyadarshini Planetarium (3 km), Natural History Museum (5 km) and the Thiruvananthapuram Zoo (3 km). The luxurious rooms and suites have modern architecture with sleek finishing. The amenities include ergonomically designed work stations, custom lighting, LCD television with satellite channels and home theatre systems, cookies and fruit platters, tea/coffee maker, minibars and 24-hour room service. The rooms are categorised into Superior Charm, Deluxe Delight, Premium Indulgence, Deluxe Allure Suite and Luxury Bliss Suite. All of them have pool orcity view. Ideal for business events and functions the hotel offers boardrooms, a ballroom, Senate and lawn with guest capacity varying from 12 to 1000. Oval is the 24/7 business centre. Leisure servic', '14:00', '12:00', 6000, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kerala/vivanta.jpg'),
('KEL009', 'Turtle On The Beach Hotel', 'Kerala', 'Kovalam', 5, '4.5', 'Set among tropical gardens overlooking Hawa Beach, this sophisticated resort is 1 km from Lighthouse Beach. It is about 15 km from Trivandrum Railway Station and 14 km from Thiruvananthapuram International Airport. It is less than 10 km from Bethsaida Hermitage. Other attractions near the resort are Vellayani Lake (13 km) and Trivandrum Zoo (17 km). Places of worship such as Attukal Temple, Padmanabhaswamy Temple, Pazhavangadi Ganapthy Temple are within 15 km. The Turtle on the Beach offers rooms in Turtle Garden View, Arabian Sea View, Suite, Duplex Suite, Turtle Signature Suite and Sky Suite categories. The rooms are air-conditioned and have a DVD player and flat-screen TV soaps, shampoo, moisturizer, dental kit, shaving kit, tea/coffee maker and bathrobe. The Turtle Signature Suites are very spacious, with a lounge area and private bar. The Sky Suite is located on the top floor and includes a living room, terrace with Jacuzzi and a pergola. The hotel offers an array of amenities inc', '14:00', '12:00', 11200, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kerala/turtle.jpg'),
('KEL010', 'Kochi Marriot Hotel', 'Kerala', 'Kochi', 5, '4.8', ' In the premises of Lulu Mall near the citys prime IT hub, Kochi Marriott Hotel is less than 9 km away from Ernakulam Junction.The hotel is approx. 21 km from Cochin International Airport. If you are travelling with kids, plan a fun day out with them ice skating, playing video games or bowling at Lulu Mall. You can also head to Wonderla Amusement Park (12 km) for rides. Kochi Marriot Hotel offers 246 rooms in the Deluxe, Executive and Suites categories. The rooms are equipped with amenities like coffee/tea maker, desk, and marble bathroom with robe, hair dryer and slippers. The hotel houses an outdoor pool and well-equipped fitness centre. The in-house Quan Spa offers a variety of treatments including Ayurvedic massages and foot reflexology. At the in-house restaurant Cassava, the hotel brings regional specialties from different communities of Kerala. Other dining options include Kochi Kitchen (multi-cuisine restaurant), Great Room (all day dining) and Pool Bar.', '14:00', '12:00', 6250, 8, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kerala/marriot.jpg'),
('KOL001', 'Hotel Mulberry', 'Kolkata', 'Sarat Bose Road', 2, '3.9', 'Location: Hotel Mulberry is a budget property located in the heart of Kolkata. It is situated 20 km from the Kolkata International Airport and 10 km from the Kolkata Chitpur Railway Terminus. The property is in vicinity of famous sightseeing places like Kalighat Kali Temple(2 km), Indian Museum(4 km), Alipore Zoo(4 km), Eden Gardens (5 km), Fort William(6. km). The well-appointed and comfortable rooms here are equipped with amenities like air-conditioner, Wi-Fi connectivity, television, wardrobe and more. There is an attached bathroom too which contains modern fittings and a hot/cold water supply. The facilities offered here are front desk, room service, laundry, dry cleaning, doctor on call, travel desk, Wi-Fi, power backup, parking, safety deposit, airport pickup and drop. It features well-equipped conferencing and banqueting venues. In-house restaurant dishes out the best of Indian cuisines along with authentic local flavours.', '14:00', '12:00', 1320, 9, 'Yes', 'No', 'Yes', '', 'Yes', 'No', 'images/hotels/cities/Kolkata/mulberry.jpg'),
('KOL002', 'Geetanjali Residency', 'Kolkata', 'Kaikali Mor', 2, '4.3', 'Geetanjali Residency is situated in Kolkata which is also known as the City of Joy. The hotel is just 4 km away from Subhash Chandra Bose International Airport, thereby making it an ideal choice for all sorts of travelers. It offers a value for money stay to all the guests along with providing facilities like front desk, parking, the internet, room service. doctor on call service and many more. The hotel also houses a restaurant named Desi Kitchen where hygienic and freshly prepared Indian, Chinese, Tandoori, Continental and South Indian dishes are served. The conferencing and banqueting spaces available at the hotel are ideal for organising business and social events. Those who do not wish to miss out their exercise regime can visit the gym. The aesthetically elegant and contemporary rooms promise immaculate bed-linens and linen in addition to basic facilities and attached washroom with hot/cold water supply with essential toiletries. The supportive staff of the hotel ensures that all', '14:00', '12:00', 4142, 15, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kolkata/geetanjali.jpg'),
('KOL003', 'Hotel Crest Inn', 'Kolkata', 'Ballygunge', 2, '3.5', 'Hotel Crest Inn is nestled in Kolkata, the bustling capital city of West Bengal,also a city that boasts of a rich cultural heritage, evident in its distinct cuisine, clothing, lifestyle, its literature and even architecture. Located at a distance of 18.9 km away from Netaji Subhash Chandra Bose International Airport, 8.9 km away from Kolkata Chitpur Railway Station and there are several buses that connects to various parts of the city. Guest can visit the famous tourist places in and around the city like Birla Temple(2 km), Victoria Memorial Hall(4km), St. Pauls Cathedral(4.1km), Belur Math Shrine(20.7km), Eco Tourism Park(20.2km) and many more. The clean and ventilated rooms in the hotel are well-maintained and comes with amenities like telephone, hot and cold water, attached bathroom. Room and housekeeping service ensures the comfortable stay of the guest long with the cleanliness of the hotel.', '14:00', '12:00', 1724, 12, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kolkata/crest.jpg'),
('KOL004', 'Hotel Trimoorti', 'Kolkata', 'Park Street', 2, '4.1', 'Hotel Trimoorti is a 2 star facility located near Elgin Road Forum Shopping Mall, Kolkata. Tourist attraction including Victoria Memorial and Howrah Bridge are easily accessible from the hotel. It offers spacious and well-decorated rooms in four categories, namely Economy, Deluxe, Super Deluxe, and Suite. Rooms are well-equipped with requisite amenities such as air-conditioner, LCD TV with cable connection, free internet and telephone. 8.6 km from Howrah Railway Station, 1.2 km from Rabindra Sadan Metro Station, 2.6 km from Victoria Memorial, 8 km from Howrah Bridge. The hotel is popular with both leisure and corporate travellers. 24-hour room service, laundry, doctor-on-call and fire safeguards are some of the other facilities offered at the hotel. Guests can avail fast and efficient room service to enjoy sumptuous dishes in the comfort of their rooms.', '14:00', '12:00', 1370, 13, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kolkata/trimoorti.jpg'),
('KOL005', 'Hotel Niharika', 'Kolkata', 'AJC Bose Road', 3, '4.2', '7 km from The Howrah Bridge, 2 km from Birla Planetarium, In-house multi-cuisine restaurant Located 1 kilometre from Rabindra ', '14:00', '12:00', 3243, 10, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kolkata/niharika.jpg'),
('KOL006', 'Ethnotel', 'Kolkata', 'Airport Zone, Dum Dum', 3, '4.3', 'Ethnotel is a three star hotel. It isconveniently located at Jessore road which is just 200 meters away from Netaji Subhash Chandra Bose International Airport. The entire property exudes an ideal blend of comfort and the right ambiance for the guests to unwind. Experience the perfect vacation at Ethnotel. Lavishly designed rooms are equipped with modern amenities like air conditioning, sitting area and cable television. Well decorated rooms also features tea coffee maker and mini bar. Featuring a shower, private bathroom also comes with essentialtoiletries. In hotel multi cuisine restaurant one can enjoy lip smacking delicacies or choose to dine in the comfort of their rooms by availing round the clock room service. Refreshing and exotic beverages can be enjoyed at on site bar. The conference hall is ideal for hosting seminars, meetings and conferences while the banquet hall facilitates parties and social gatherings. To explore popular tourist destinations in and around the city, guest', '14:00', '12:00', 2300, 13, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kolkata/ethnotel.jpg'),
('KOL007', 'Regenta Orkos Kolkata', 'Kolkata', 'Topsia', 4, '4.1', 'Regenta Orkos Kolkata is a business hotel that lets guests explore the city of joy along with business. Regenta Orkos is a 4 star luxurious property situated in the beautiful city of Kolkata. The property is situated at the distance of 21 km from Netaji Subhash Chandra Bose International Airport, 14 km from Kolkata Railway Station and 2 km from Kasba Bus Depot. The hotel is located near to the famous places like Victoria Memorial (7 km), Indian Museum (8 km), Shaheed Minar (11 km), Eden Gardens (12 km) and Howrah Bridge (14 km). Rooms of the property are equipped with luxurious amenities to offers comfort to their guests. In-room delights includes television, telephone, intercom, air condition, hot/cold running water and essential bathroom toiletries. The property offers wide range of facilities such as swimming pool, handicap facilities, front desk, room service, airport transfer, Wi-Fi, laundry (chargeable) and parking. A well-maintained conference and banquet hall is also available ', '14:00', '12:00', 2400, 14, 'Yes', 'Yes', 'No', '', 'Yes', 'Yes', 'images/hotels/cities/Kolkata/regenta.jpg'),
('KOL008', 'Pipal Tree Hotel', 'Kolkata', 'Hatiara, Major Arterial Road', 4, '4.3', 'A 3 star property, Pipal Tree Hotel is located at 3 km from Netaji Subhash Chandra Bose International Airport, 10 km from New Barrackpore Railway Station and 7 km from bus stand.It provides excellent accommodation, warm hospitality, personalised services and modern facilities for the pleasant stay of guests. The hotel is represented by bright and elegantly appointed rooms. A round the clock room service and efficient house-keeping ensures for relaxed and comfort stay. Room delights include tea/coffee maker, foot massager, mini bar, iron and ironing board, television with satellite connection and direct dial telephone. Wi-Fi and high speed wireless internet access is available in all rooms. All modernised bathroom come with running water, shower area and bathroom toiletries. Guest can enjoy exploring collection of books and periodicals by visiting library at the hotel. Also take advantage of banquet hall and conference hall to make your special occasion extra special. In-house restauran', '14:00', '12:00', 2534, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kolkata/pipal.jpg'),
('KOL009', 'Hyatt Regency', 'Kolkata', 'Salt Lake, Sector 3', 5, '4.6', ' Set among beautifully landscaped gardens, Hyatt Regency Kolkata is a 5-star luxury hotel situated 12 km from Kolkata International Airport and a 20-min drive to the Rajarhat Newton IT Hub. The property is in proximity to popular tourist attractions like Marble Palace (6 km) and Shaheed Minar (9 km). Hyatt Regency Kolkata features 233 luxury rooms, including 70 Regency Club rooms and 13 Suites, each adorned with Malaysian teak floors, floor-to-ceiling windows and textured walls. In-room amenities include Internet, tea/coffee machine, TV and hairdryer. Guests at the Hyatt Regency can avail facilities such as business workstations, meeting/conference rooms and travel desk. Additional amenities include massage services, sports facilities and an outdoor poolside venue for private events. Enjoy delicious Indian food at Guchhi and Italian cuisine at La Cucina. The Waterside Cafe offers a healthy breakfast while The Bar and The Pool Bar serve innovative cocktails and other alcoholic beverages', '14:00', '12:00', 8400, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kolkata/HyattRegency.jpg'),
('KOL010', 'Novotel', 'Kolkata', 'New Town', 5, '4.3', ' Close to the IT sector in New Town and a short 20-min drive from Netaji Subhash Chandra Bose Airport, Novotel Kolkata Hotel and Residences is the largest 5-star hotel in Eastern India. Axis Mall is less than 1 km away whereas the exciting Eco Tourism Park and the award-winning science and adventure park, Science City, are within a 20-min drive from the property. Child Policy - There are charges (INR 1500/-) if the child requires an extra bedding, payable directly at the hotel. No charges if the child shares the bedding with his parents (Age Range - 0-16). Novotel Kolkata Hotel and Residencies offers 340 rooms, suites and bungalows & apartments. Common in-room amenities include en suite bath/shower, ergonomic work area, LCD TV, internet, hair dryer, minibar and tea/coffee maker. The Square is a 24-hour restaurant serving International cuisine. Other dining options are Studio (Pan Asian), Delice (bakery), Sante (lounge bar) and Cascades (pool bar).', '14:00', '12:00', 6800, 8, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Kolkata/novotel.jpg'),
('KUU001', 'Sun Park Resort', 'Manali', 'Aleo, Left Bank', 4, '4.2', 'Indulge in an Ayurvedic massage amidst breathtaking views of winding Beas river and pine forests. Sun Park Manali features rooftop fine dining and a chic disco. With breathtaking scenery, Sun Park Resort Manali has lush green pinewood forests, majestic Himalayan Mountains, and the winding Beas River as a visual feast. The hotel is located less than 5 km from the Kullu Manali Circuit and Hidimba Devi Temple, and only 14 km from Solang Valley Ski. The hotel is 20 km from Naggar Bus Station, and 52 km from Kullu Manali Domestic Airport. Sun Park Resort is a four-star resort with 71 rooms in this hotel. Guests can choose from Super Deluxe or Honeymoon room, and Luxury, Royal Honeymoon, Premium Family, Duplex, and Maharaja Suites. Rooms have mountain views, tea/coffee maker, LCD TV, Wi-Fi, spacious bathrooms with bath amenities and hot/ cold water. The resort provides babysitting/child care facilities, parking, fitness center, sauna, game/arcade room, laundry, travel desk. Guests can indulg', '14:00', '12:00', 4270, 9, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Manali/sunPark.jpg'),
('KUU002', 'Snow Valley Resorts', 'Manali', 'Loghut Road', 4, '4.2', '2 km from Manali bus stand, Snow Valley Resort is surrounded by apple orchards. Guests can enjoy rafting, massages and terrace dining. Snow Valley Resorts is located in a beautiful hill station in the Himalayas. The resort is surrounded by apple orchards. It is 2 km from Manali Bus Stand and 52 km from Kullu Manali Domestic Airport. Hadimba Devi Temple and Vashisht Bath are less than 5 km away. The resort offers 52 rooms and suites create a warm and welcoming retreat. Choose from Standard, Luxury, Presidential, Maharaja and Family Duplex rooms. The rooms are decorated with beautiful luxury touches and colors, with wooden floors and plush furnishings. along with modern amenities and optional stunning views. They all feature a TV, personal safe, WiFi, tea/ coffee maker, and fridge. The bathroom is equipped with hot and cold water. Some rooms have stunning views of the Himalayas. Room service is available.\r\nHotel Facilities: Guest can entertain themselves playing billiards or table tennis', '14:00', '12:00', 3568, 9, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Manali/snowValley.jpg'),
('KUU003', 'Honeymoon Inn', 'Manali', 'Aleo Left Bank', 3, '4.5', 'Honeymoon Inn Manaliwith simply spectacular views of the soaring Himalayasand expansive gardens is really is a world apart. Somewhere to escape the hustle and bustle of everyday modern life. Somewhere to unwind, relax and recharge.\r\nWhat better way than to start your married life with a Honeymoon in Manali! The beautiful Beas river, the majestic snow clad mountains and green deodar forests present the perfect setting for a very special Honeymoon.All rooms are equipped with modern amenities, such as complimentary Wi-Fi, tea/coffee maker and satellite television,Recently refurbished, the rooms are elegantly decorated in rich colors and fabrics, and offer wonderful views over the garden and surrounding countryside.\r\nEat and drink in style in our restaurant with its high standards of service and cuisine. The relaxed, friendly relationship with our guests has tempted many to return to the Hotel Honeymoon Inn, Manali. Honeymoon Inn promises joyous memories of your honeymoon in Manali that wi', '14:00', '12:00', 3243, 7, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Manali/honeymoon.jpg'),
('KUU004', 'Golden Tulip', 'Manali', 'Old Manali', 1, '4.2', ' Conveniently located in the heart of Manali, Golden Tulip is considered to be the home base for further exploration of the mountain region. Golden Tulip is a 4-star property located in close proximity to major tourist attractions, such as Rohtang Pass, Solang Valley, Manali Sanctuary, Pandoh Dam, Hidimba Devi Temple, Bijli Mahadev, Great Himalayan National Park and Bhrigu Lake. The hotel rooms are well-maintained rooms with standard amenities like, cable television, intercom facility, Wi-Fi internet access, mini bar, tea/coffee maker, iron/ironing board, sofa unit, study table,, fireplace, room heater and bathroom toiletries. Each room in the hotel has been designed to provide views of natural surroundings. Golden Tulip offers basic facilities like guide service, laundry, travel desk and parking facility. Additionally, the hotel offers taxi services, sightseeing, and railway station and airport transfer on request. The prompt room service and the homely ambience of the hotel make gues', '14:00', '12:00', 2640, 13, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Manali/goldenTulip.jpg'),
('KUU005', 'Hotel Renuka', 'Manali', 'Central Manali', 1, '4.7', 'Nestled in Manali, Hotel Renuka is designed to provide guests with pleasurable stay. The hotel offers a home like experience with its simple decor, warm ambiance and comfortable rooms. It features facilities like Wi-Fi, laundry, power backup and room service. The in-house multi-cuisine restaurant is a treat for the people who enjoy food as the very important ingredient of life. The travel desk at the hotel will conduct sightseeing trips on request.The rooms are a cozy place to relax. They come with all the modern guest amenities like television, telephone, hot and cold water. The guestrooms have private balconies so that the patrons can enjoy fresh air and beautiful outside views right from their rooms. They have attached bathrooms fitted with essential toiletries. The nearest airport and railway station to the region are Kullu Manali Airport and Joginder Nagar Railway Station. Ease out and have a lovely stay at Hotel Renuka!', '14:00', '12:00', 550, 15, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Manali/renuka.jpg'),
('KUU006', 'Shingar Residency', 'Manali', 'Hadimba Temple Road', 3, '4.4', 'Located just 300 meters from Hadimba Temple, Shingar Regency features a conference hall, multi-cuisine restaurant, travel desk and health spa. Located in picturesque surroundings, Shingar Regency is situated on Hadimba Road, at a short walk from the Manali Bus Depot. This 3 star property features 40 elegantly furnished rooms that come under Regency, Premium, Superior, Suite, Honeymoon, 2 Bed Room Cottage and 4 Bed Room Cottage categories. All rooms are provided with en suite bathroom and modern amenities like cable television, telephone and work desk. Guests can enjoy the splendid view of mountains as there are private balconies in all rooms. The hotel is located close to a number of tourist attractions like Hadimba Temple and Mall Road. To cater to the needs of business travellers, it houses a spacious conference hall, where meetings can be held. Facilities like doctor-on-call, room service, car parking, health spa, laundry service, travel desk and games room are also offered here. Gu', '14:00', '12:00', 2626, 14, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Manali/shingar.jpg'),
('KUU007', 'Royal Park Resort', 'Manali', 'Prini', 3, '4.1', 'Royal Park Resort is situated in the picturesque hill station of Manali. The city promises relaxed vacation amidst lush green hillsides, winding mountain paths, gurgling streams and the snowy mountains. Manali Bus Stand is at a distance of 4 km which makes it a perfect abode for guests accommodation. The hotels interiors and rooms are designed elegantly. The staff ensures that all the rooms are clean, comfortable and sumptuous. The rooms are equipped with television. All the rooms have attached bathrooms with basic toiletries and hot and cold running water. The rooms have balconies where recipients can feast their eyes to snow capped mountains. Best in class room service is provided to all the guests. Multi-cuisine restaurant is there where guests can relish their taste buds to scrumptious and delectable delicacies. Guests can relax at the bar and enjoy high spirited drinks. Terrace garden is also there at the hotel where guests can enjoy natures bounty and feel one with the nature. Th', '14:00', '12:00', 1500, 14, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Manali/royalPark.jpg'),
('KUU008', 'Hotel Snow Park', 'Manali', 'New Manali', 4, '4', 'Hotel Snow Park, situated in New Manali, offers a blissful stay to guests at affordable rates. This 3 star hotel lies in vicinity of Gayatri Temple and Manu Temple. The hotel offers 28 cozy and comfortable rooms that feature facilities like color TV, telephone and safe deposit locker. Room heaters are provided in rooms during winter. Guests can choose rooms from four categories- Deluxe, Super Deluxe, Luxury and Family Suite. Wall to wall carpet, beautiful curtains, swanky lamps and comfy furniture adorn the rooms.The presence of majestic mountains in the surroundings makes the hotel an ideal place for leisure travelers to spend peaceful holidays. It gives importance to guests convenience by providing parking, laundry, power backup, car rental and travel assistance.Hotel Snow Park features a multi-cuisine restaurant, where guests can savor mouth-watering Chinese, Continental and Indian dishes. Those who wish to enjoy meals under the sky can head to the terrace.Do not miss to shop at the', '13:00', '12:00', 3385, 10, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Manali/snowPark.jpg'),
('KUU009', 'Moniker Resort & Spa', 'Manali', 'Simsa Village', 3, '4.9', ' The Moniker Resort And Spa is a luxurious property in Manali, surrounded by such pristine setting that will engulf one with its extravagance and grandeur. The nearest airport and railway station is Bhuntar Airport and Jogindernagar Railway Station. The city has many beautiful and wonderful spots which the visitors can explore. For accommodation, the property offers well furnished and spacious rooms with modern amenities like Wi-Fi access, television, telephone, mini bar and intercom. Each room has attached washroom with essential bathroom toiletries and running hot and cold water. Backed by a team of skilled professionals, the property ensures that all needs of guests are fulfilled timely. It proffers facilities like health center, 24 hours front desk for assistance, games room, laundry service, housekeeping services, travel desk to make tour arrangements, discotheque and conference hall for corporate events. The doctor on call facility ensures health safety of patrons. The hotel hous', '14:00', '12:00', 3424, 10, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Manali/moniker.jpg'),
('KUU010', 'The Anantmaya Resort', 'Manali', 'Shuru', 3, '4.0', 'Al fresco dining, a well-stocked bar, spa treatments, sauna and relaxing massages are the highlights at Anantmaya Resort. The name Ananymaya means Gods endless and blissful creation. And so it is. Set amidst landscaped gardens, overlooking the stunning Himalayas, this luxury destination is indeed blissful. Manali Bus Depot is 5.5 km away, and Kullu Manali Domestic Airport is 47 km away. Naggar and Naggar Castle are 16.5 km away, and Hadimba Devi Temple and Vashisht Temple are only 6.5 km away. The 42 well-appointed rooms are divided into 2 categories, Luxury and Villa rooms. The rooms are spacious with individual balconies. There are many services provided by the hotel including WiFi, LED TV, tea/ coffee maker, safe, mini fridge, and hot running water. Room service is available. Relax at our spa, with sauna, steam bath, shower, and massage available. Laundry, car parking, open air barbecueand fully stocked kitchen facilities are also available. The conference room on site can accommoda', '14:00', '12:00', 4870, 8, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Manali/anantmaya.jpg'),
('MAA001', 'Marina Inn', 'Chennai', 'Egmore', 2, '4.0', 'Beside Egmore Railway Station, the centrally located Marina Inn is 1 km from Government Museum, Chennai which houses an extensive collection of Roman antiquities. Those interested in art and history can take a short drive to National Art Gallery (1 km). Visit Marina Beach (4 km) to enjoy a horse ride or freshly-prepared seafood. Buy souvenirs and gifts at the popular Spencer Plaza Mall (1.5 km). The Rooms come with parquet flooring and wooden furniture. In-room amenities include LCD TV, Wi-Fi, wardrobe, telephone, desk, chairsand attached bathrooms. Conveniences like laundry service, parking, doctor on call and power backup are offered here. Relishvegetarian varieties at the restaurants. Have a Comfortable Stay at Marina Inn!', '14:00', '12:00', 932, 6, 'Yes', 'No', 'Yes', '', 'No', 'No', 'images/hotels/cities/Chennai/marina.jpg'),
('MAA002', 'Regenta Central Deccan', 'Chennai', 'Royalpettah', 4, '3.5', 'Just 300 m from AIADMK headquarters, the hotel offers 93 well-furnished rooms, well-equipped gym, and ayurvedic spa. Less than 300 m from AIADMK headquarters, Regenta Central Deccan is 14 km from Chennai International Airport and 4 km from Railway Station. Companies like GlaxoSmithKline, BASF India, and McKinsey are within 1.5 km. Major attractions like Amir Mahal, Marina Beach, and Kamaraj Memorial House are within 3.5 km. The hotel is a suitable option for both business and leisure travelers. The hotel offers 93 well-groomed rooms with contemporary interiors in superior, luxury suite, and deluxe suite categories. Amenities offered in these rooms include HD television, safe deposit locker, DVD player, tea/coffee maker, well-stocked mini-bar, wall art, fruit basket, and writing desk, bedside table with chest drawers, night lamp, and comfortable bed. The en suite bathroom comes with hot/cold water, shaving mirror, and essential bath amenities. For savoring vegetarian delicacies, guests ', '14:00', '12:00', 1520, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Chennai/regenta.jpg'),
('MAA003', 'The Spin', 'Chennai', 'Annasalai', 3, '4.5', 'The Spin Hotel is a 3 star property located in the beautiful city of Chennai. The property is situated at the distance of 18.9 km from Anna International Terminal, 2.7 km from Chennai Central Railway Station and at walking distance from the bus stop. The hotel offers lavish accommodation and wide array of facilities to offer comfortable and cosy stay to their guests. Explore famous tourist places like Parthasarthy Temple (1.6 km), Marina Beach (2.8 km), Fort St George (3.3 km), Kapaleeswarar Temple (5.6 km) and Elliots Beach (12.3 km) in the free time while staying at the hotel. Rooms of the property are equipped with amenities like Wi-Fi, telephone, cable television, air condition, electronic kettle, iron/ironing board, sofa unit, tea/coffee maker and in-room safe. All rooms have attached bathroom with bathrobe, hot/cold running water and essential bathroom toiletries. For convenience of the guests, hotel offers services like parking, banquet facility, front desk, reception desk, secu', '14:00', '12:00', 1251, 12, 'Yes', 'No', 'Yes', '', 'Yes', 'No', 'images/hotels/cities/Chennai/theSpin.jpg'),
('MAA004', 'Ginger Chennai', 'Chennai', 'Vadalapani', 3, '4.0', 'The hotel offers well equipped rooms with in house multi cuisine restaurant and on site Cafe coffee day outlet. Around 1 km from Vadapalani Murugan Temple, Ginger Hotel Vadapalani is over 11 km from Chennai International Airport and 9 km from the railway station. Offices of several prominent companies are within 1.5 km of the hotel. Major attractions include Amir Mahal (9 km) and Gandhi Beach (less than 10 km). The hotel features 79 well-appointed rooms, equipped with LCD TV, tea/coffee maker, work desk, and Wi-Fi. The en suite bathroom comes with hot/cold water, shower, and essential bath amenities. The hotel offers a well-equipped gym, safe zone, net zone, laundry, and doctor on call, parking and conference facilities.\r\nDining: The hotel offers an in-house restaurant that offers various delicacies and an on-site Cafe Coffee Day outlet. Guests can also avail the in-room dining option.', '14:00', '12:00', 1896, 13, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Chennai/ginger.jpg'),
('MAA005', 'Clarion Chennai', 'Chennai', 'Mylapore', 3, '4.2', 'Situated on Dr. Radhakrishnan Salai, Clarion Chennai is a 4 star boutique property in the heart of Chennais business district. Popular among travellers for its modern facilities and personalized services, the hotel is about 7 km from Chennai Central Railway Station and 18 km from Chennai International Airport. The famous Marina Beach and Kapaleeshwarar Temple are less than 20 minutes walk from the hotel. Done in contemporary style, the hotels refurbished rooms and suites are equipped with pillow-top beds, air conditioning, 52-inch LED TVs, desk, electronic safe, tea/coffee maker, mini bar and Wi-Fi access. En suite bathrooms have 24-hour hot/cold showers, bathrobes and exclusive toiletries. Select rooms offer breathtaking views of the beach. Fitness-conscious guests can work out at the gym and take a refreshing swim in the outdoor pool. The hotels travel desk organises sightseeing tours, and offers car hire and ticketing services. Other offerings include 24-hour front desk, meeting/ban', '14:00', '12:00', 3723, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Chennai/clarion.jpg'),
('MAA006', 'The Raintree', 'Chennai', 'Anna Salai', 5, '4.6', 'Located in the bustling business and commercial district of Teynampet, The Raintree, Anna Salai is an upscale business hotel in the heart of Chennai city. Preferred by corporate travellers, this 5 star property is just 700 m from Teynampet Metro Station, and 20 mins drive from both Central Railway Station and Chennai International Airport. The famous Kapaleeshwarar Temple is just 3 km away while Marina Beach and Government Museum are within 6 km of the hotel. Featuring contemporary decor and furnishings, the hotels 230 luxurious rooms and suites make for a comfortable and pleasant stay in Chennai. All rooms offer plush amenities like HDTV, iPod docks, electronic safe, telephone tea/coffee maker, mini bar, wireless internet, and bathrooms with eco-friendly toiletries. Guests can relax in the rooftop pool, work out at the gym, and indulge in a variety of massages and treatments at the in-house spa. A well-equipped business centre and flexible meeting and conference rooms cater to the mee', '14:00', '12:00', 5205, 14, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Chennai/theRaintree.jpg'),
('MAA007', 'Trident', 'Chennai', 'GST Road', 5, '4.8', 'Location: Having world class amenities and minimalistic architecture, Trident in Chennai is just 3 km from the international airport. One could reach the hotel in a quick 45-minute drive from the Chennai Central Railway Junction. Its a 10-minute drive from Chennai Trade Centre and an hour away from business districts of Mahindra World City and Maraimalai Nagar. This hotel comes with 156 rooms and 11 suites which include Deluxe Rooms, Deluxe Garden View Rooms, Trident Club Rooms, Junior Suites, Executive Suites and a Presidential Suite. The well-lit and spacious rooms are equipped with modern amenities. These include a large LCD TV, safety locker, personal bar, tea/coffee maker, lounge chair and en-suite bathrooms. Complimentary airport transfers are also offered as a part of stay in select rooms. The suites are large and come with stunning views of the garden or pool. They also come with a separate living room, dining room, and bedroom. Those staying at the hotel have access to the Tri', '14:00', '12:00', 1604, 14, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Chennai/trident.jpg'),
('MAA008', 'Welcom Hotel', 'Chennai', 'Gopalapuram', 4, '4.5', 'Located on Cathedral Road, WelcomHotelChennai features a 24 hr coffee shop, 2 specialty restaurants & the Durrants Bar. WelcomHotel, Chennai is 15 km away from the Chennai International Airport and 5 km away from Chennai Central Railway Station. The property is located on Cathedral road, which is the central business district in Chennai. T Nagar and Anna Salai are both only a 15 min drive from the hotel. Marina Beach is 4 km away, while the Kaapaleshwarar temple and Parthasarathy temple are only 3 km away. The room categories at the hotel include the Club room, Superiorroom and Executivesuites. The rooms are designed to offer utmost comfort to and offer amenities such as an electronic safe, high-speed WiFi, tea/coffee maker, LED TV with satellite connection and a fridge. Guests staying at the Executive Suites can also request for a late check out which is subject to the booking status for the next day. The property has a well-equipped gym, an outdoor pool, steam and sauna, shopping arc', '14:00', '12:00', 3515, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Chennai/welcom.jpg'),
('MAA009', 'Hablis Hotel', 'Chennai', 'GST Road, Guindy', 5, '4.4', 'In business district of Guindy, it offers a rooftop pool, spa with unique Aqua and Dry Fitness Zones, and meeting facilities. Hablis Chennai is a stylish 5 star business hotel in the centre of Guindy, one of the posh residential and business districts of Chennai. This luxury property is just 5 minutes walk from Guindy Metro Station allowing guests to reach any part of the city without any hassle. Further, Chennai International Airport is just 10 mins drive from the hotel while Chennai Central Railway Station is 40 mins away. Areas prominent landmarks such as Guindy National Park, Anna University, Tidel Park and IIT Madras are within 6 km. Marina Beach is less than 30 mins by car. Featuring contemporary dcor and furnishings, spacious rooms and suites of the hotel come with a sitting area with sofa units. Room amenities include air conditioning, flat-screen TV, telephone, iron and ironing board, desk and Wi-Fi access. Those opting for suites can avail complimentary airport transfers as w', '14:00', '12:00', 3424, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Chennai/hablis.jpg'),
('MAA010', 'The Park', 'Chennai', 'Anna Salai', 5, '3.8', ' The Park Hotel Chennai is 14km from Chennai International Airport and 7 km from Chennai Central Railway Station. Situated in Anna Salai, the heart of the city, the hotel stands on the premises of the erstwhile Gemini Film Studios. It is well connected to important business centres and tourist attractions thanks to its central location. The property is 5 km away from the M.A. Chidambaram Stadium and 4 km away from Marina Beach. The Park Chennai has 214 rooms with sleek interiors set in muted colours. Rooms are categorised as Deluxe and Luxury, while suites are classified as Studio, Deluxe, Premier and the Residence. Each room is aesthetically decorated with a subtle touch of regional design. Amenities include a functional work space with a 2-line phone, a mini-bar, high-speed internet connectivity, tea/coffee maker, flat screen TV and a glass-walled bathroom stocked with premium toiletries. The Park offers guests a salon, gift shop, fully equipped gymnasium and the rejuvenating Aura sp', '8:00', '12:00', 2351, 8, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Chennai/thePark.jpg'),
('PNQ001', 'St Laurn Hotel', 'Pune', 'Koregaon Park', 3, '4.1', 'The St Laurn Business Hotel is 6 kmfrom Pune Airport. Guests can unwind at 15A, the in-house multi cuisine restaurant and bar. St. Laurn is a business hotel close to transportation hubs such as the Pune Station Bus Stand (6 km), Pune Railway Junction (5 km) and Pune Lohegaon Airport (6 km). It is also quite close to some of the main tourist spots such as the Osho Ashram (0.4 km) and Bund Garden (4 km). The rooms are well ventilated and offer a view of the hotel gardens. There are 63 rooms that feature air conditioning, WiFi, minibar, flat-screen TV, ergonomic work desk, hairdryer, coffee/tea maker, complimentary newspapers, electronic safe, iron and ironing board, telephone with international dialing and voice mail and attached four fixture bathrooms. There is a well-equipped business center and banquet hall, which can easily seat up to 100 guests. It also has a gym, fitness center, housekeeping, 24-hour room service, 24-hour front desk, travel desk, currency exchange, valet parking an', '13:00', '12:00', 2600, 9, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Pune/stLaurn.jpg'),
('PNQ002', 'Siesta Hinjewadi Lexia', 'Pune', 'Hinjewadi', 3, '4.2', ' An ultimate destination for modern style and luxury, Siesta Hinjewadi Lxia ensures unrivalled comfort. The property is at a distance of 23 km from Pune Lohegaon Airport and 18 km from Pune Junction. Famous tourist attractions in the city are Shaniwar Wada Fort (16 km), Raja Dinkar Kelkar Museum (17 km), Aga Khan Palace (20 km), Osho Garden (20 km), Pu La Deshpande Garden (23 km) and many more. Hotel has well furnished and fully equipped rooms with amenities like Wi-Fi access, television, mini bar, electronic safe and tea and coffee maker. Each room has attached bathroom with regular supply of hot and cold water. The hotel proffers modern facilities like round the clock room service, gymnasium, business center and travel assistance to make tour arrangements. The houses multi cuisine restaurant which serves mouthwatering and tasty dishes for the guests to savor.', '14:00', '12:00', 1373, 6, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Pune/siesta.jpg'),
('PNQ003', 'Ginger Pune Wakad', 'Pune', 'Wakad', 3, '4.2', 'Placed on Mumbai-Bengaluru Highway, the hotel offers 128 well-kept rooms with smart interiors and multi-cuisine eatery. Next to Mumbai-Bengaluru Highway, Ginger Hotel Wakad is a short 40-minute drive from Pune Railway Station and 25 km from Pune Airport. The hotel is in proximity to many educational institutes like Indira National School (1 km), Balaji Institute of Telecom and Management (750 m), Akshara International School (1.5 km), and Institute of Business Management and Research (450 m).  The Enchanted Gardens is 4 km from the hotel. The hotel offers 128 well-kept rooms with smart interiors. All smart space rooms are equipped with LCD television, tea/coffee maker, work desk, wooden closet, reading lamp, electronic door lock, and comfortable bed. The en suite bathroom is equipped with hot/cold water, shower cubicle, and essential bath amenities. The hotel also offers room for the differently abled. For fitness lovers, the hotel offers a well-equipped gymnasium. Other facilities off', '14:00', '12:00', 1700, 7, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Pune/ginger.jpg'),
('PNQ004', 'Rathi Residency Chikhali', 'Pune', 'Pimpri-Chinchwar', 3, '4.4', ' Fabhotel Rathi Residency Chikhali is nestled in Pune which encircles some eminent heritage and pilgrimage sites. Fabhotel Rathi Residency Chikhali is an earmark property that offers splendid comfort to its guests. It is situated at a distance of 21 km from Pune International Airport and 21 km from Pune Railway Station.For accommodation, the property offers spacious, airy and well-lit rooms, featuring sophisticated and welcoming ambiance with the warmth and comfort of home. Quietly elegant and exclusive the property facilitates room amenities like mini bar, television, telephone, wardrobe, hot and cold water and many more. Adorned with stylish fittings, all rooms are equipped with essential bathroom amenities and toiletries. The hotel facilitates with all modern amenities like Wi-Fi, elevator, laundry, parking, room service and many more. For business travelers who want to host meetings and conferences, the hotel has a stylish and well-appointed conference hall. Doctor on call facility', '14:00', '12:00', 1101, 13, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Pune/rathi.jpg'),
('PNQ005', 'Hotel Aurora Towers', 'Pune', 'MG Road', 4, '4.3', 'Hotel Aurora Towers is located within walking distance of the Westend Theatre, as well as eateries and shopping options at Mahatma Gandhi Road. It houses 3 dining options, a gym and a swimming pool. Free Wi-Fi access is provided. The hotel is 2 km from Pune Railway Station and 6 km from Aga Khan Palace. Pune Airport is 8 km away. The contemporary air-conditioned rooms feature a flat-screen TV with satellite channels and an en suite bathroom. Select accommodation offers a living area and Steam Bath. The Fernery/Four Seasons serves Indian and Continental delights, while ZEN offers Pan Asian cuisines. Refreshing drinks can be found at Aqua Lounge. In-room dining is possible. Aurora Towers operates a 24-hour front desk, which can assist with laundry, luggage storage, and the use of meeting/banquet facilities. Guests can make travel arrangements at the tour desk.', '14:00', '12:00', 3723, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Pune/aurora.jpg'),
('PNQ006', 'Royal Orchid Central', 'Pune', 'Kalyani Nagar', 4, '4.4', 'Dine at the poolside lounge,open-air restaurant Tiger Trail and MixBar at Royal Orchid Pune. It offers an outdoor pool and fitness centre. Royal Orchid Central, Pune is 4 km away from Pune Airport and 7 km away from the Pune Railway Station. The property is well connected and is an ideal stopover for business and leisure travellers alike. This property offers 111 rooms and 4 suites categorised as Deluxe Rooms, Club Rooms and Executive Suites, with elegantly decorated interiors and top class amenities. High-speed Internet being the de facto, the rooms are equipped with tea/coffee maker, electronic safe, mini-bar and ensuite toilet equipped with toiletries. Royal Orchid Central offers a host of facilities like an outdoor swimming pool, fitness centre and airport transport. The property also offers state-of-the-art venues for holding corporate conferences or board meetings, with the well-equipped Maple Hall being an ideal venue. Tiger Trail is the open air restaurant that offers a wide va', '14:00', '12:00', 2918, 14, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Pune/royalOrchid.jpg'),
('PNQ007', 'Hotel Sagar Plaza', 'Pune', 'Pune Central City', 4, '4.1', '8 kmfrom Lohegaon Airport, Punes Sagar Plaza features a trendy sports bar, poolside grill and multi cuisine dining at Tangerine. Hotel Sagar Plaza is a mid-sized business hotel situated close to some of the main transportation hubs such as the Shivani Nagar Railway Station (3 km), Pune Central Bus Stand (5 km) and Pune Lohegaon Airport (8 km). Guests can also visit places of interest nearby such as Sarasbaug Temple (6 km), Pu La Deshpande Garden (8 km) and the Rajiv Gandhi Zoological Park (11 km). The hotel currently offers 76 lavishly furnished rooms and suites, with large bay windows that open to scenic views of the gardens. The air conditioned rooms come with complimentary WiFi, choice of newspapers, laundry/dry cleaning services, tea/coffee maker, mini-bar, electronic safe and attached bathrooms with complimentary toiletries. There is a well-equipped business center with video conferencing facilities, as well as a banquet hall which can accommodate up to 100 guests. Leisure options', '14:00', '12:00', 2170, 14, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Pune/sagarPlaza.jpg'),
('PNQ008', 'Hotel Fidalgo', 'Pune', 'Viman Nagar', 4, '4.2', 'Fidalgo is situated in the city surrounded with green hills and placid lakes and having a salubrious climate, Pune which is also known as the Queen of the Deccan and Oxford of the East. It is located at a distance of 2 km from Pune Airport, 7 km from Pune Junction Railway Station and 7 km from Pune Station Bus Stand which makes it easy for the guest to travel. The hotel has elegantly decorated and fully furnished rooms with amenities like television, telephone, wireless internet, tea/coffee maker, electronic safe and mini bar. Each room has attached bathroom with regular supply of hot and cold water. Room service is available for the convenience of the guests. Hotel facilitates laundry services, currency exchange services, car rental services, airport pick and drop services, business centre for corporate meeting and conference hall for social functions, training and seminars. Doctor on call is available for any medical emergency. The hotel has restaurant which serves mouthwatering and ', '14:00', '12:00', 2256, 12, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Pune/fidalgo.jpg'),
('PNQ009', 'The Pride Hotel', 'Pune', 'Shivaji Nagar', 5, '4.1', 'Location: Hyatt Pune is a 5-min walk from Aga Khan Palace in the IT hub. It is over 5 km from Pune Airport and a 20-min drive from Pune Railway Station. This 5-star hotel is close to Phoenix Market City (3 km) and Darshan Museum (20-min drive). The hotel has 209 guest rooms (Standard, Deluxe and Suites categories), offering panoramic views of the city. There is also one room specially designed for differently-abled guests.\r\nIn-room amenities (depending on room type) include walk-in wardrobe, minibar, coffee maker, hairdryer, iron and ironing board, LED TV, internet, individual air-conditioning control, safe and crib, and bath amenities on request. Hyatt Spa offers signature salon and spa services, outdoor pool, sun deck, gym and indoor games. The hotel also offers 24-hour room service, babysitter (on request) and safety deposit at the front office. Guests can choose from Baan Tao, the pan-Asian restaurant, Eighty Eight, the all-day restaurant and cafe. The Fishbowl is a great place to ', '14:00', '12:00', 2500, 8, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Pune/thePride.jpg'),
('PNQ010', 'Hyatt Pune', 'Pune', 'Kalyani Nagar', 5, '4.5', '11 kms from the Pune airport, the Pride hotel features a health club & sauna along with multiple restaurants & a bar. The Pride radiates class and comfort in the heart of Pune. It is 4 km away from Pune Railway Station and 11 km away from Pune Airport. The property is well-connected to the city and is in close proximity to OSHO Rajneesh Ashram, Koregaon Park, Shivajinagar and Hinjewadi. The rooms are well-designed, contemporary and comfortable while enjoying a variety of amenities. The 112 sophisticated rooms are classified as Superior, Premium and Suites. All rooms offer a flat-screen TV, a mini-bar, electronic safe and high-speed WiFi. The hotel comprises a state-of-the-art spa, health club and swimming pool, which offer the best leisure options. The Pride, Pune also offers banquet halls and event venues, namely Crystal, Regal, Senate, Poolside and Chancery. All of them boast of contemporary amenities and an experienced and professional in-house event team. Casablanca is the 24-hour ', '14:00', '12:00', 5050, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Pune/hyatt.jpg'),
('SHL001', 'Hotel City View Inn', 'Shillong', 'Jail Road', 1, '3.2', 'aaa', '10:00', '12:00', 2500, 9, 'No', 'No', 'Yes', '', 'No', 'No', 'images/hotels/cities/Shillong/cityView.jpg'),
('SHL002', 'Eden Residency', 'Shillong', 'Police Bazaar', 1, '3', 'aaa', '12:00', '12:00', 2500, 6, 'Yes', 'No', 'Yes', '', 'Yes', 'No', 'images/hotels/cities/Shillong/eden.jpg');
INSERT INTO `hotels` (`hotelID`, `hotelName`, `city`, `locality`, `stars`, `rating`, `hotelDesc`, `checkIn`, `checkOut`, `price`, `roomsAvailable`, `wifi`, `swimmingPool`, `parking`, `restaurant`, `laundry`, `cafe`, `mainImage`) VALUES
('SHL003', 'Cafe Cherrapunje', 'Shillong', 'SohrS Road', 1, '2', 'Welcome to the Cafe Cherapunjee, the classic hotel in Shillong, in the city of The Abode of Clouds. The property has an advantage of nearest Airport, Railway Station and Bus Stand for guest to easy commute. Guest can enjoy various activities like ziplining, scuba diving, snorkellng, river rafting, beach camping. The property offers room services, house keeping, cab on call. The tents are places on wooden platforms to ensure guest a comfortable stay. The luxury tents ensure dressing area, attached bath, blower and hot water running. ', '14:00', '12:00', 4999, 7, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Shillong/cafe.jpg'),
('SHL004', 'Cordial Hotel', 'Shillong', 'Sohra-Shella Road', 1, '4.2', '', '8:00', '12:00', 2956, 13, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Shillong/cordial.jpg'),
('SHL005', 'Hotel Silk Route', 'Shillong', 'Police Bazaar', 2, '4.1', '2 km from Rhino Museum, 5.2 km from Nongmynsong Bus Stop, 5.9 km from Don Bosco Museum, Free Wi-Fi internet, Multi-cuisine restaurant & bar.A unit of Silk Route Hotel & Resorts Pvt. Ltd., Hotel Silk Route Shillong is a budget hotel, located near the Rhino Museum on Keating Road. The 28 rooms of the hotel are categorised as Silk Route Suite, Executive Suite, Luxury Rooms and Executive Rooms. Cable TV, free Wi-Fi internet and comfortable furniture are provided in all the rooms. Symposium is the multi-purpose hall of the hotel that can be used for organising parties and meetings. During their stay, guests can de-stress at the fully equipped on-site gym named Sehat. Ample space for car parking, laundry and doctor-on-call are other facilities offered at the hotel. Guests can enjoy delectable Indian, Continental, Chinese, Assamese and Bengali fare at the multi-cuisine restaurant- Signorina. Solitaire is the on-site lounge bar that serves a wide range of liquors. The hotel is located in Shill', '14:00', '12:00', 3723, 15, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Shillong/silk.jpg'),
('SHL006', 'Hotel Broadway', 'Shillong', 'GS Road', 2, '3.4', 'Hotel Broadway is set right in the heart of Shillong, around 40 minutes drive from Shillong Airport. Located on G. S. Road, this property is close to tourist hotspots like Lady Hydari Park, Don Bosco Museum and Shillong Golf Course. To conveniently explore the many attractions of the city, guests can avail the services of on-site travel desk. Other than this, essential facilities like round the-clock room service, medical aid, laundry and airport transfers are provided by the hotel. For scrumptious regional and global culinary delights, head to the in-house multi-cuisine restaurant. In addition, guests can also choose to dine in their rooms or visit the nearby restaurants for a memorable dining experience. The hotel offers 33 rooms that are clean, spacious and properly maintained. All rooms have wooden flooring and are provided with essential amenities like telephone and cable TV. For the convenience of guests, the attached baths come with geyser facility and complimentary toiletries. ', '13:00', '12:00', 8871, 14, 'Yes', 'No', 'Yes', '', 'Yes', 'No', 'images/hotels/cities/Shillong/broadway.jpg'),
('SHL007', 'Hotel Barbareek Inn', 'Shillong', 'Barabazaar', 3, '4.1', '4 Kms From Police Bazaar, This 2 Star hotel has one of many beautiful rooms provided with a peek of the view of Shillong', '12:00', '12:00', 1500, 14, 'Yes', 'No', 'Yes', '', 'Yes', 'No', 'images/hotels/cities/Shillong/barbareek.jpg'),
('SHL008', 'Hotel Polo Towers', 'Shillong', 'Cherrapunjee', 4, '4', 'A 12-minute walk from Shillong Golf Club, this high-end hotel is also 2.1 km from Lady Hydari Park and 12 km from Elephant Falls waterfall. Upmarket rooms and suites come with free Wi-Fi, flat-screen TVs, minibars, and tea and coffeemaking facilities. Room service is available. Breakfast and parking are complimentary. There are 3 restaurants, including an Italian option and a BBQ venue. The hotel also offers a cosy bar, a spa and a fitness room.', '14:00', '12:00', 3385, 10, 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Shillong/polo.jpg'),
('SHL009', 'Hotel Centre Point', 'Shillong', 'Police Bazaar', 3, '4.9', 'A minutes walk from bus access, this downtown hotel is also a 12-minute walk from the State Museum and 2.9 km from the Don Bosco Centre for Indigenous Cultures. Offering flat-screen TVs with cable channels, the modern rooms also have mountain views, tea and coffeemaking facilities and desks. Some rooms feature classic decor with knotted pine accents, while rooms in another wing feature contemporary decor. Upgraded rooms add sitting areas with sofas. Breakfast and parking are free. Additional amenities include an upscale restaurant featuring international cuisine, a nightclub with Pan-Asian dining, and a business centre.', '14:00', '12:00', 3424, 10, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Shillong/center.jpg'),
('SHL010', 'Hotel Alpine Continental', 'Shillong', 'Police Bazaar', 3, '4.0', 'In an area of Shillong filled with shops and restaurants, this unassuming hotel is a 5-minute walk from a bus station. Down-to-earth rooms and suites come with flat-screen TVs. Upgraded quarters add air-conditioning and/or city views. Room service is available. Kids age 11 and under stay at no cost with an adult. A breakfast buffet is complimentary. Other amenities include a laid-back restaurant, a cocktail bar and a terrace.', '14:00', '12:00', 3424, 8, 'Yes', 'No', 'Yes', '', 'Yes', 'Yes', 'images/hotels/cities/Shillong/alpine.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trainbookings`
--

CREATE TABLE `trainbookings` (
  `bookingID` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(60) NOT NULL,
  `cancelled` varchar(20) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `passengers` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainbookings`
--

INSERT INTO `trainbookings` (`bookingID`, `username`, `date`, `cancelled`, `origin`, `destination`, `passengers`) VALUES
(1, 'joydeep', '05-04-2018', 'yes', 'Guwahati', 'Howrah', 4),
(2, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(3, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(4, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(5, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(6, 'joydeep', '06-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(7, 'joydeep', '06-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(8, 'joydeep', '06-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(9, 'joydeep', '06-04-2018', 'yes', 'Guwahati', 'Howrah', 4),
(10, 'joydeep', '06-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(11, 'joydeep', '06-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(12, 'joydeep', '06-04-2018', 'yes', 'Guwahati', 'Howrah', 4);

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `trainNo` int(10) NOT NULL,
  `region` varchar(10) NOT NULL,
  `returnTrainNo` int(10) NOT NULL,
  `trainName` varchar(100) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `originCode` varchar(20) NOT NULL,
  `destinationCode` varchar(20) NOT NULL,
  `originTime` varchar(20) NOT NULL,
  `destinationTime` varchar(20) NOT NULL,
  `originPlatform` varchar(10) NOT NULL,
  `destinationPlatform` varchar(10) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `classes` varchar(50) NOT NULL,
  `seats1AC` int(10) NOT NULL,
  `seats2AC` int(10) NOT NULL,
  `seats3AC` int(10) NOT NULL,
  `seatsSL` int(10) NOT NULL,
  `seatsChairCar` int(10) NOT NULL,
  `seatsChairCarAC` int(10) NOT NULL,
  `price1AC` varchar(20) NOT NULL,
  `price2AC` varchar(20) NOT NULL,
  `price3AC` varchar(20) NOT NULL,
  `priceSL` varchar(20) NOT NULL,
  `priceChairCar` varchar(20) NOT NULL,
  `priceChairCarAC` varchar(20) NOT NULL,
  `runsOn` varchar(50) NOT NULL,
  `noOfBookings` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`trainNo`, `region`, `returnTrainNo`, `trainName`, `origin`, `destination`, `originCode`, `destinationCode`, `originTime`, `destinationTime`, `originPlatform`, `destinationPlatform`, `duration`, `classes`, `seats1AC`, `seats2AC`, `seats3AC`, `seatsSL`, `seatsChairCar`, `seatsChairCarAC`, `price1AC`, `price2AC`, `price3AC`, `priceSL`, `priceChairCar`, `priceChairCarAC`, `runsOn`, `noOfBookings`) VALUES
(12346, 'ER', 12345, 'SARAIGHAT EXPRESS', 'Guwahati', 'Howrah', 'GHY', 'HWH', '12:25', '5:10', '2', '9', '16h 45m', '1AC,2AC,3AC,SL', 2, -11, 4, -20, 0, 0, '3200', '1900', '1300', '700', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 197),
(12424, 'NR', 12435, 'RAJDHANI EXPRESS', 'New Delhi', 'Guwahati', 'DLI', 'GHY', '16:10', '19:50', '2', '1', '27h 24m', '1AC,2AC,3AC', 45, 24, 15, 0, 0, 0, '4000', '3200', '2600', '0', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 0),
(12505, 'NR', 12506, 'NORTHEAST EXPRESS', 'Guwahati', 'New Delhi', 'GHY', 'DLI', '09:40', '19:20', '4', '2', '33h 35m', '2AC,3AC,SL', 0, 3, 8, 100, 0, 0, '0', '3000', '2400', '1300', '0', '0', 'Sa', 0),
(12506, 'NR', 12505, 'NORTHEAST EXPRESS', 'New Delhi', 'Guwahati', 'DLI', 'GHY', '06:45', '16:50', '2', '4', '34h 05m', '2AC,3AC,SL', 0, 24, 5, 12, 0, 0, '0', '2400', '1600', '900', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 0),
(12509, 'ER', 12510, 'GUWAHATI EXPRESS', 'Howrah', 'Guwahati', 'HWH', 'GHY', '11:15', '6:00', '9', '2', '18h 45m', '2AC,3AC,SL', 0, 5, 5, 10, 0, 0, '3000', '2500', '1700', '1000', '0', '0', 'Fr,Sa,Su', 0),
(14055, 'NFR', 14054, 'BRAHMAPUTRA MAIL', 'New Jalpaiguri', 'Guwahati', 'NJP', 'GHY', '07:25', '01:55', '4', '2', '6h 30m', 'SL,2AC,3AC', 0, 24, 5, 120, 0, 0, '0', '2000', '1200', '300', '0', '0', 'Sa', 0),
(15601, 'NFR', 15602, 'Porvottar Sampark Kranti EXPRESS', 'Silchar', 'Guwahati', 'GHY', 'HWH', '07:00', '20:15', '2', '6', '13h 15m', '2AC,3AC,SL', 0, 24, 5, 120, 0, 0, '2500', '1500', '1100', '700', '0', '0', 'Su,We', 0),
(15602, 'NFR', 15601, 'Porvottar Sampark Kranti EXPRESS', 'Guwahati', 'Silchar', 'GHY', 'SCL', '09:10', '20:45', '6', '2', '11h 35m', '2AC,3AC,SL', 0, 2, 2, 2, 0, 0, '2300', '1700', '1300', '500', '0', '0', 'Sa', 0),
(15611, 'NFR', 15612, 'Guwahati-Silchar EXPRESS', 'Guwahati', 'Silchar', 'GHY', 'SCL', '17:30', '5:55', '6', '2', '12h 25m', '2AC,3AC,SL', 0, 10, 4, 5, 0, 0, '2000', '1500', '1100', '600', '0', '0', 'Mo,Tu,Sa', 0),
(15612, 'NFR', 15611, 'Guwahati-Silchar EXPRESS', 'Silchar', 'Guwahati', 'GHY', 'HWH', '19:20', '7:45', '2', '6', '12h 25m', '2AC,3AC,SL', 0, 2, 2, 10, 0, 0, '2000', '1500', '1200', '500', '0', '0', 'Su,We,Fr', 0),
(15909, 'NFR', 15910, 'AVADH ASSAM EXPRESS', 'Dimapur', 'Guwahati', 'DMV', 'GHY', '16:10', '21:40', '2', '9', '4h 40m', 'SL,2AC,3AC', 0, 2, 2, 18, 0, 0, '3800', '2500', '1500', '700', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 0),
(15910, 'NFR', 15909, 'AVADH ASSAM EXPRESS', 'Guwahati', 'Dimapur', 'GHY', 'DMV', '03:20', '08:55', '2', '1', '5h 35m', '2AC,3AC,SL', 0, 2, 5, 120, 0, 0, '4000', '2800', '1500', '700', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 0),
(15960, 'NFR', 15959, 'KAMRUP EXPRESS', 'Dimapur', 'Guwahati', 'DMV', 'GHY', '01:50', '7:30', '2', '9', '5h 40m', '2AC,3AC,SL', 0, 15, 5, 10, 0, 1, '3000', '2000', '1400', '1000', '0', '500', 'Mo,Tu,We,Th,Fr,Sa,Su', 0),
(22502, 'ER', 22503, 'NTSK SBC EXPRESS', 'Guwahati', 'Howrah', 'GHY', 'HWH', '05:25', '00:45', '2', '9', '19h 20m', '2AC,3AC,SL', 0, 24, 5, 120, 0, 0, '3500', '2800', '1600', '900', '0', '0', 'Sa', 0),
(25910, 'NFR', 25911, 'NTSK JIVACCH LINK', 'Guwahati', 'Dimapur', 'GHY', 'DMV', '03:20', '08:55', '2', '1', '5h 35m', '3AC,SL', 0, 0, 5, 4, 0, 0, '0', '0', '1400', '500', '0', '0', 'Mo,Tu,We,Th,Fr,Sa,Su', 0);

-- --------------------------------------------------------
--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`busID`);

--
-- Indexes for table `busbookings`
--
ALTER TABLE `busbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `cabbookings`
--
ALTER TABLE `cabbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `cabdrivers`
--
ALTER TABLE `cabdrivers`
  ADD PRIMARY KEY (`carID`);

--
-- Indexes for table `cabs`
--
ALTER TABLE `cabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flightbookings`
--
ALTER TABLE `flightbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_no`);

--
-- Indexes for table `hotelbookings`
--
ALTER TABLE `hotelbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotelID`);

--
-- Indexes for table `trainbookings`
--
ALTER TABLE `trainbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`trainNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

--
-- AUTO_INCREMENT for table `busbookings`
--
ALTER TABLE `busbookings`
  MODIFY `bookingID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `cabbookings`
--
ALTER TABLE `cabbookings`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cabdrivers`
--
ALTER TABLE `cabdrivers`
  MODIFY `carID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cabs`
--
ALTER TABLE `cabs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flightbookings`
--
ALTER TABLE `flightbookings`
  MODIFY `bookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `hotelbookings`
--
ALTER TABLE `hotelbookings`
  MODIFY `bookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `trainbookings`
--
ALTER TABLE `trainbookings`
  MODIFY `bookingID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

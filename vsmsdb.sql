-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2019 at 09:54 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'Admin', 2147483647, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-03-03 09:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(11) NOT NULL,
  `VehicleCat` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `VehicleCat`) VALUES
(1, 'Two Wheeler'),
(2, 'Three Wheeler'),
(3, 'Four Wheeler'),
(4, 'Three Wheeler Autoo'),
(5, '4 Wheeler Tractor'),
(6, '3 wheeler Auto'),
(7, 'Test category');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `EnquiryNumber` varchar(120) NOT NULL,
  `EnquiryType` varchar(120) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminResponse` varchar(250) NOT NULL,
  `AdminStatus` int(11) NOT NULL,
  `AdminRemarkdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `UserId`, `EnquiryNumber`, `EnquiryType`, `Description`, `EnquiryDate`, `AdminResponse`, `AdminStatus`, `AdminRemarkdate`) VALUES
(1, 10, '320977403', 'Service Related Enquiry', 'I want service my bike can u please give me price.', '2019-03-07 05:57:46', 'Prices of servicing bike given below.', 1, '2019-03-07 07:08:19'),
(2, 9, '612700713', 'Parts Related Enquiry', 'Can you change ggjhg parts of my bike and how much its cost', '2019-03-08 06:21:44', 'Yes we can. its cost is 8500 rs', 1, '2019-03-08 06:21:44'),
(3, 11, '467395787', 'Service Related Enquiry', 'I want to know cost of spares parts of maruti suzuki car.', '2019-03-15 05:10:08', 'Dear Mayank,\r\nThere is different spare of different company and price dependent on that so please visit to our service centre so we can assist you better.', 1, '2019-03-15 05:10:08'),
(4, 7, '368658342', 'Price Related Enquiry', 'I want to know the price of servicing three-wheeler.', '2019-03-25 13:14:26', 'This is sample text for testing.', 1, '2019-03-25 13:14:26'),
(5, 13, '425316470', 'Service Related Enquiry', 'I want to know the price of four wheeler service', '2019-04-04 18:00:47', 'This is sample remark for testing', 1, '2019-04-04 18:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquirytype`
--

CREATE TABLE `tblenquirytype` (
  `ID` int(11) NOT NULL,
  `EnquiryType` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquirytype`
--

INSERT INTO `tblenquirytype` (`ID`, `EnquiryType`) VALUES
(1, 'Service Related Enquiry'),
(2, 'Price Related Enquiry'),
(3, 'Parts Related Enquiry'),
(4, 'Other Enquiry');

-- --------------------------------------------------------

--
-- Table structure for table `tblmechanics`
--

CREATE TABLE `tblmechanics` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Address` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmechanics`
--

INSERT INTO `tblmechanics` (`ID`, `FullName`, `MobileNumber`, `Email`, `Address`) VALUES
(1, 'Shonaya', 8287654547, 'lal@gmail.com', 'H.NO 6/8 New Delhi'),
(2, 'Naveen', 7967890288, 'munna@gmail.com', '6790 Plot, Delhi'),
(3, 'Rashid', 5399365859, 'rashid@gmail.com', '45-A, gali no 50, new colony new delhi'),
(4, 'Rahul Kumar', 9865486484, 'rahul@gmail.com', 'c/o, Mohan Rajnagar near metro place B3/4144'),
(5, 'Harish Singh', 7697547903, 'harish@gmail.com', 'gh-67, sohna road haryana'),
(6, 'Jone', 8976565718, 'jone@gmail.com', 'shastri Niketan gali no:75 near baikund dham neelgari Himchal Pradesh'),
(7, 'test mech', 423423423, 'restmech@gmail.com', 'New Delhi India');

-- --------------------------------------------------------

--
-- Table structure for table `tblservicerequest`
--

CREATE TABLE `tblservicerequest` (
  `ID` int(10) NOT NULL,
  `UserId` char(34) DEFAULT NULL,
  `ServiceNumber` char(20) NOT NULL,
  `Category` varchar(120) DEFAULT NULL,
  `VehicleName` varchar(120) DEFAULT NULL,
  `VehicleModel` varchar(120) DEFAULT NULL,
  `VehicleBrand` varchar(120) DEFAULT NULL,
  `VehicleRegno` varchar(120) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `ServiceTime` varchar(100) DEFAULT NULL,
  `DeliveryType` varchar(120) DEFAULT NULL,
  `PickupAddress` varchar(120) DEFAULT NULL,
  `ServicerequestDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ServiceBy` varchar(120) NOT NULL,
  `ServiceCharge` int(10) NOT NULL,
  `PartsCharge` int(10) NOT NULL,
  `OtherCharge` int(10) NOT NULL,
  `AdminRemark` varchar(120) NOT NULL,
  `AdminStatus` varchar(120) DEFAULT NULL,
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservicerequest`
--

INSERT INTO `tblservicerequest` (`ID`, `UserId`, `ServiceNumber`, `Category`, `VehicleName`, `VehicleModel`, `VehicleBrand`, `VehicleRegno`, `ServiceDate`, `ServiceTime`, `DeliveryType`, `PickupAddress`, `ServicerequestDate`, `ServiceBy`, `ServiceCharge`, `PartsCharge`, `OtherCharge`, `AdminRemark`, `AdminStatus`, `AdminRemarkdate`) VALUES
(1, '7', '530203057', 'Two Wheeler', 'Activa Scooter', '3G', 'Honda', 'DL3C AR-4851', '2019-04-24', '00:00:00', 'pickupservice', 'Mayur Vihar Phase 1 New Delhi', '2019-04-03 17:22:44', 'Harish Singh', 1234, 500, 0, 'This sample text for testing.', '3', '2019-04-03 17:29:30'),
(2, '7', '300012550', 'Two Wheeler', 'Pulsor ', '220CC', 'Bajaj', 'UP13 AB3111', '2019-04-04', '13:11', 'dropservice', '', '2019-04-03 17:25:09', '', 0, 0, 0, '', '2', '2019-04-04 18:03:29'),
(3, '13', '826535329', 'Two Wheeler', 'Activa', '3g', 'Honda', 'DL3C AR 4861', '2019-04-18', '12:30', 'pickupservice', 'Mayur Vihar Phase 1 Delhi', '2019-04-04 17:57:58', 'Naveen', 1200, 1100, 100, 'Service done', '3', '2019-04-04 17:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNo` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNo`, `Email`, `Password`, `RegDate`) VALUES
(7, 'Anuj Pandey', 6677777777, 'anuj@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-03-01 12:33:21'),
(8, 'Anuj', 3456778888, 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-03-01 12:34:01'),
(9, 'Mahesh Dadlani', 8985675321, 'mahesh@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-03-06 11:46:05'),
(10, 'Manish Agarwal', 5678905577, 'manish@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-03-07 05:36:02'),
(11, 'Mayank Chaturvedy', 9876543123, 'mayank@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-03-15 05:08:00'),
(12, 'Kulkari', 8597887984, 'abhi@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-03-25 09:16:44'),
(13, 'Test user', 1234567890, 'testuser@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-04-04 17:56:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquirytype`
--
ALTER TABLE `tblenquirytype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblmechanics`
--
ALTER TABLE `tblmechanics`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservicerequest`
--
ALTER TABLE `tblservicerequest`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblenquirytype`
--
ALTER TABLE `tblenquirytype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblmechanics`
--
ALTER TABLE `tblmechanics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblservicerequest`
--
ALTER TABLE `tblservicerequest`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

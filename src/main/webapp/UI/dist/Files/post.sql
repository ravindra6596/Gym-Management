-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2021 at 07:17 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b2b`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `categorie` varchar(250) NOT NULL,
  `fullDescription` varchar(2000) NOT NULL,
  `videoLink` varchar(250) NOT NULL,
  `coverImg` varchar(250) NOT NULL,
  `whitePaperLink` varchar(250) NOT NULL,
  `publishDate` date NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `metaTag` varchar(250) NOT NULL,
  `metaKeyword` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `categorie`, `fullDescription`, `videoLink`, `coverImg`, `whitePaperLink`, `publishDate`, `summary`, `metaTag`, `metaKeyword`) VALUES
(1, 'The Forrester Wave Identity Mangement And Governance Q2 2016', 'video', 'Axcient Fusion Product Demo - Cloud Based IT Resilience. In this 6 minutes video, you will see:\r\n\r\nHow to deploy Axcient in under ten minutes.\r\nHow to instantly failover to the fusion virtual environment.\r\nHow to recover files, directories or your entire IT environment', 'https://www.1sttechguide.com/categories/videos/Fusion-demo-take-5-new-autosave.mp4', 'https://www.1sttechguide.com/images/videos/1.jpg', '', '0000-00-00', 'Axcient Fusion Product Demo - Cloud Based IT Resilience. In this 6 minutes video, you will see:', '', ''),
(2, 'Operational Intelligence Through Actionable Analytics', 'video', 'In this product preview, you will learn how simple it is for managers to get the right data, analyze the information, and respond immediately to what they\'ve learned. With Workday built-in actionable analytics, all users can get relevant information to help improve the overall operational intelligence throughout the organization.', 'https://youtu.be/9OGnvwtqavk', 'https://www.1sttechguide.com/images/videos/2.jpg', '', '0000-00-00', 'In this product preview, you will learn how simple it is for managers to get the right data, analyze the information,', '', ''),
(3, 'The Workday Advantage', 'video', 'In this video, Laurent Botella, Director of Payroll Strategy at Workday, discusses the benefits of using Workday Payroll Software as a Service (SaaS) and what payroll professionals can expect in the future.', 'https://youtu.be/tvw42_Wr7vY', 'https://www.1sttechguide.com/images/videos/3.jpg', '', '0000-00-00', 'In this video, Laurent Botella, Director of Payroll Strategy at Workday, discusses the benefits of using Workday', '', ''),
(4, 'Workday Customer Video with MGM Resorts International', 'video', '\"We wanted managers to spend more time with their employees, coaching them, engaging them, rewarding their behavior, so that employees spend more time with the guests providing great service.\"', 'https://youtu.be/x1PJiIfRHj0', 'https://www.1sttechguide.com/images/videos/6.jpg', '', '0000-00-00', 'We wanted managers to spend more time with their employees, coaching them,', '', ''),
(5, 'Marketo for Enterprise: Overview Demo\r\n', 'video', 'Watch Now: Marketo for Enterprise: Overview Demo', 'https://www.1sttechguide.com/categories/videos/Marketo-Enterprise-Demo.mp4', 'https://www.1sttechguide.com/images/videos/5.jpg', '', '0000-00-00', 'Watch Now: Marketo for Enterprise: Overview Demo', '', ''),
(6, 'Workday Customer Video with MGM Resorts International', 'video', '\"We wanted managers to spend more time with their employees, coaching them, engaging them, rewarding their behavior, so that employees spend more time with the guests providing great service.\"', 'https://youtu.be/x1PJiIfRHj0', 'https://www.1sttechguide.com/images/videos/4.jpg', '', '0000-00-00', 'ob Witteman (CEO) and Henk Steenman (CTO) of The Amsterdam Internet Exchange', '', ''),
(7, 'A benchmark report of branded visual content production from brands and agencies', 'webinar', 'At Shutterstock Custom we are fortunate enough to have unique insight into what hundreds of our brand and agency customers are producing for their visual content every year. We collect all of this data from our customers to help us continuously improve our solutions and services.\r\n\r\nWe want to share our insights to get you grounded and inform your content strategy in the coming months.\r\n\r\nIn this report you\'ll learn:\r\n\r\nContent production trends by industry Digital channel usage for visual content Visual content format trends Creative concept preferences Branding specification trends', '', 'https://www.1sttechguide.com/categories/Webinars/Branded-Visual-Content-Benchmarks-APAC.jpg', 'https://www.1sttechguide.com/wp-content/uploads/2020/02/Visual-Content-Benchmarks-2018.jpg', '0000-00-00', 'At Shutterstock Custom we are fortunate enough to have unique insight into what hundreds of our brand and agency customers are producing for their visual content every year', '', ''),
(8, 'How to choose visuals that make your brand stories stand out', 'webinar', 'Your content needs eyeballs, which is why the right image is necessary to grab the right people’s attention and drive action at scale. This can seem impossible, but it’s not out of reach for most marketers.\r\n\r\nIn this ebook, you’ll find practical tips to help you choose the kinds of images, illustrations and videos that gain traction and spread organically.\r\n\r\nYou\'ll also read about hands-on tips to help you hone the messages you want to communicate and select eye-catching visuals that enhance the user experience.', '', 'https://www.1sttechguide.com/categories/Webinars/Creating-Content-Your-Audience-Wants-to-See-APAC.jpg', 'https://www.1sttechguide.com/wp-content/uploads/2020/02/Creating-the-Content-Your-Audience-Wants-to-See_banner.jpg', '0000-00-00', 'Your content needs eyeballs, which is why the right image is necessary to grab the right people’s attention and drive action at scale', '', ''),
(9, 'How to decide which creative license type is right for your business', 'webinar', 'Whether you\'re a small business, a growing business or you’re part of a large enterprise, it’s important to make sure your business is operating under the right content licenses and with the right protection.\r\n\r\nBut deciding which content license is right for your business needs can be tricky. Where content is used, when it\'s used, who uses it and how you\'re protected are all considerations to make.\r\n\r\nIn this guide you\'ll learn all about royalty free content, standard and enhanced licenses, footage licenses, enterprise licenses and Shutterstock subscription types to help you make the right decision', '', 'https://www.1sttechguide.com/categories/Webinars/Licensing-and-Subscription-Guide-APAC.jpg', 'https://www.1sttechguide.com/wp-content/uploads/2020/02/Quick-Guide-to-Asset-Licensing.jpg', '0000-00-00', 'Whether you\'re a small business, a growing business or you’re part of a large enterprise', '', ''),
(10, 'Learn how to create and choose visual content that engages with audiences and aids in brand recall', 'webinar', 'Digital marketers are faced with some common challenges in creating visuals that improve their brand’s recall with audiences. Greater demands for visuals, creative resource constraints, and never having enough time to make visuals, all contribute to greater pressures on marketers.\r\n\r\nSo what can marketers do when the demand for memorable content outpaces the resources available to produce it?\r\n\r\nIn this ebook, we explore why your visual choices can have a big impact on brand recall, and how to start making visuals that help people remember your brand.\r\n\r\nYou\'ll learn about:\r\nThe three challenges marketers have with creating memorable content Why visual choices matter for brand recall Guidelines for creating more memorable visuals', '', 'https://www.1sttechguide.com/categories/Webinars/Make-it-memorable-how-to-create-thumb-stopping-content-APAC.jpg', 'https://www.1sttechguide.com/wp-content/uploads/2020/02/How-to-Create-Thumb-Stopping-Content.jpg', '0000-00-00', 'The three challenges marketers have with creating memorable content Why visual choices matter for brand recall Guidelines for creating more memorable visuals', '', ''),
(11, 'How and why marketers need to work smarter, not harder in a world of too much content\r\n', 'webinar', 'Your content needs eyeballs, which is why the right image is necessary to grab the right people’s attention and drive action at scale. This can seem impossible, but it’s not out of reach for most marketers.\r\n\r\nIn this ebook, you’ll find practical tips to help you choose the kinds of images, illustrations and videos that gain traction and spread organically.\r\n\r\nYou\'ll also read about hands-on tips to help you hone the messages you want to communicate and select eye-catching visuals that enhance the user experience.', '', 'https://www.1sttechguide.com/categories/Webinars/Meeting-the-Content-Challenge-APAC.jpg', 'https://www.1sttechguide.com/wp-content/uploads/2020/02/Meeting-the-Content_Challenge.jpg', '0000-00-00', 'Your content needs eyeballs, which is why the right image is necessary to grab the right people’s attention and drive action at scale.', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

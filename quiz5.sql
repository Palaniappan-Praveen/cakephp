-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2022 at 04:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz5`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `applicant_id` int(11) NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `qualification` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `salary_expectation` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`applicant_id`, `vacancy_id`, `first_name`, `last_name`, `contact_no`, `email_id`, `date_of_birth`, `qualification`, `gender`, `salary_expectation`, `experience`, `comments`, `application_date`, `status`, `date`) VALUES
(5, 2, 'Nishanttest', 'saini', '1234567890', 'nishantsaini0442@gmail.com', '2018-03-17', 'test', 'male', '120', '11lll', NULL, '2018-03-17', 5, '2018-03-17 20:08:22'),
(6, 1, 'Nishant test2s', 'saini', '1111111111111111111', 'nishantsaini0442@gmail.com', '2018-03-15', '100', 'male', '100000', 'test', 'test2ggkljl', '2018-03-17', 2, '2018-03-17 20:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` bigint(21) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `employee_id`, `time_in`, `time_out`, `date`) VALUES
(1, 2, '2018-03-08 00:00:00', '2018-03-09 00:00:00', '2018-03-08 12:02:55'),
(7, 2, '2018-03-09 15:13:40', '2018-03-09 15:13:45', '2018-03-09 15:13:46'),
(8, 2, '2018-03-10 02:44:36', '2018-03-10 02:44:43', '2018-03-10 02:44:44'),
(9, 2, '2018-03-11 05:03:54', '2018-03-11 07:03:54', '2018-03-20 10:20:32'),
(10, 2, '2018-03-13 16:11:48', '2018-03-13 16:11:53', '2018-03-13 16:11:53'),
(11, 2, '2018-03-14 05:30:38', '2018-03-14 05:30:42', '2018-03-14 05:30:42'),
(12, 2, '2018-03-18 07:35:21', '2018-03-18 09:35:21', '2018-03-20 10:20:43'),
(13, 2, '2018-03-20 03:53:01', '2018-03-20 10:07:05', '2018-03-20 10:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`designation_id`, `designation_name`, `description`, `date`) VALUES
(10, 'Hr', 'Hr', '2018-03-12 05:34:32'),
(8, 'Developer', 'developing', '2018-03-09 15:20:43'),
(9, 'website developer', 'developing site', '2018-03-10 13:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `joining_date` varchar(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `basic_pay` varchar(255) DEFAULT NULL,
  `create_date` varchar(19) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `role` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `designation_id`, `first_name`, `last_name`, `address`, `contact_no`, `joining_date`, `username`, `password`, `basic_pay`, `create_date`, `status`, `role`) VALUES
(2, 10, 'test1', 'test', 'testa', '123456789', '03/12/2018', 'test', '$2y$10$FuDjL0DxztlJUsTRUnsqye6q6JaTB.pSgaB9e6kgvaUvMP5wMiz1u', '12000', '2018-03-12 07:41:06', 1, 'employee'),
(15, 8, 'Nishant', 'Saini', 'test address', '122222222222222', '03/12/2018', 'nishant', '$2y$10$3pgBLEaZxH1.iMKn1QYZTuOA2gNuB30eKOTbK/6UgLGvfSkgUvqVO', '10000', '2018-03-14 04:07:32', 1, 'admin'),
(16, 8, 'susi', 'prakash', '0410', '9987289222', '03/18/2018', 'praveen', '$2y$10$MoBtKUmsiKyqLXEnk6Dbv.rxzwuqc4hmARYBC/a4VmcBqvit8EciS', '40000', '2018-03-17 17:06:15', 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedules`
--

CREATE TABLE `interview_schedules` (
  `interview_id` int(11) NOT NULL,
  `selection_round` varchar(255) NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `interview_date_time` date NOT NULL,
  `venue` varchar(255) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `leave_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_from` datetime NOT NULL,
  `leave_to` datetime NOT NULL,
  `reason` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_requests`
--

INSERT INTO `leave_requests` (`leave_id`, `employee_id`, `leave_from`, `leave_to`, `reason`, `status`, `date`) VALUES
(3, 2, '2018-03-14 00:00:00', '2018-03-15 00:00:00', 'test form202', 0, '2018-03-11 04:12:28'),
(2, 2, '2018-03-08 00:00:00', '2018-03-31 00:00:00', 'test form2020', 0, '2018-03-11 04:15:14'),
(4, 2, '2018-03-15 00:00:00', '2018-03-15 00:00:00', 'ty', 1, '2018-03-11 08:55:55'),
(5, 9, '2018-03-07 00:00:00', '2018-03-09 00:00:00', 'festival', 1, '2018-03-11 08:34:12'),
(6, 9, '2018-03-07 00:00:00', '2018-03-21 00:00:00', 'test3kk', 1, '2018-03-11 09:27:15'),
(7, 5, '2018-03-13 00:00:00', '2018-03-14 00:00:00', 'Not felling well, fever', 1, '2018-03-11 19:03:59'),
(8, 2, '2018-03-14 00:00:00', '2018-03-15 00:00:00', 'test', 1, '2018-03-13 16:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `description` varchar(530) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_title`, `description`, `start_date`, `end_date`, `status`, `date`) VALUES
(6, 'developing site', 'developing back end and front end', '2018-03-09', '2018-03-13', 1, '2018-03-09 15:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `project_allocations`
--

CREATE TABLE `project_allocations` (
  `proj_allocation_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `comment` varchar(500) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_allocations`
--

INSERT INTO `project_allocations` (`proj_allocation_id`, `project_id`, `employee_id`, `start_date`, `end_date`, `comment`, `date`) VALUES
(4, 6, 15, '2018-03-16', '2018-03-17', 'aaaaa', '2018-03-15 13:34:31'),
(5, 6, 16, '2018-03-18', '2018-03-22', 'ddaaa', '2018-03-17 17:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

CREATE TABLE `vacancies` (
  `vacancy_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `designation_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `experience` float NOT NULL,
  `age` varchar(255) NOT NULL,
  `last_application_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vacancies`
--

INSERT INTO `vacancies` (`vacancy_id`, `title`, `designation_id`, `description`, `qualification`, `experience`, `age`, `last_application_date`, `status`, `date`) VALUES
(1, 'test job', 8, 'test desc', 'test test', 10, '28', '2018-03-17', 1, '2018-03-13 03:57:45'),
(2, 'test', 10, 'test2', 'test3', 4, 'test 4', '2018-03-06', 1, '2018-03-12 12:26:12'),
(3, 'pravenn test', 8, 'tetst', 'master', 1, '30', '2018-03-14', 1, '2018-03-13 16:23:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`applicant_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  ADD PRIMARY KEY (`interview_id`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_allocations`
--
ALTER TABLE `project_allocations`
  ADD PRIMARY KEY (`proj_allocation_id`);

--
-- Indexes for table `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`vacancy_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `applicant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  MODIFY `interview_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `project_allocations`
--
ALTER TABLE `project_allocations`
  MODIFY `proj_allocation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `vacancy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

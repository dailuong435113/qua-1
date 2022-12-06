-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2022 lúc 12:19 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quarantine_camp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `assign`
--

CREATE TABLE `assign` (
  `patient_id` int(100) NOT NULL,
  `staff_id` int(100) DEFAULT NULL,
  `room` varchar(100) NOT NULL,
  `date_assign` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `assign`
--

INSERT INTO `assign` (`patient_id`, `staff_id`, `room`, `date_assign`) VALUES
(1, 4, 'A.1RR2', '2022-12-01 15:13:12'),
(2, 6, 'A.1ER1', '2022-12-01 15:08:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `building`
--

CREATE TABLE `building` (
  `building_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `building`
--

INSERT INTO `building` (`building_id`) VALUES
('A'),
('B'),
('C');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `floor`
--

CREATE TABLE `floor` (
  `floor_id` int(200) NOT NULL,
  `building_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `floor`
--

INSERT INTO `floor` (`floor_id`, `building_id`) VALUES
(1, 'A'),
(1, 'B'),
(1, 'C'),
(2, 'A'),
(2, 'B'),
(2, 'C'),
(3, 'A'),
(3, 'B'),
(3, 'C'),
(4, 'A'),
(4, 'B'),
(4, 'C'),
(5, 'A'),
(5, 'B'),
(5, 'C'),
(6, 'A'),
(6, 'B'),
(6, 'C'),
(7, 'A'),
(7, 'B'),
(7, 'C'),
(8, 'A'),
(8, 'B'),
(8, 'C'),
(9, 'A'),
(9, 'B'),
(9, 'C'),
(10, 'A'),
(10, 'B'),
(10, 'C'),
(11, 'A'),
(11, 'B'),
(11, 'C'),
(12, 'A'),
(12, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `health_declaration`
--

CREATE TABLE `health_declaration` (
  `passport` varchar(200) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `province` varchar(200) DEFAULT NULL,
  `district` varchar(200) DEFAULT NULL,
  `ward` varchar(200) DEFAULT NULL,
  `Number_of_houses` varchar(100) DEFAULT NULL,
  `phone` int(200) DEFAULT NULL,
  `declaration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `health_declaration`
--

INSERT INTO `health_declaration` (`passport`, `fullname`, `date_of_birth`, `gender`, `nationality`, `province`, `district`, `ward`, `Number_of_houses`, `phone`, `declaration_date`) VALUES
('123', 'lộc', '0000-00-00', 'Male', 'algerian', '4', '42', '01297', '0000-00-00 00:00:00', 55520265, '2022-12-05 10:36:58'),
('123', 'lộc', '0000-00-00', 'Male', 'algerian', '0', '0', '', '0000-00-00 00:00:00', 55520265, '2022-12-05 11:45:22'),
('123', 'lộc', '0000-00-00', 'Male', 'algerian', '2', '27', '00781', '0000-00-00 00:00:00', 55520265, '2022-12-05 11:50:59'),
('123', 'lộc', '0000-00-00', 'Male', 'algerian', '10', '85', '02854', '0000-00-00 00:00:00', 55520265, '2022-12-05 11:52:49'),
('123', 'lộc', '0000-00-00', 'Male', 'algerian', '2', '28', '00835', '0000-00-00 00:00:00', 55520265, '2022-12-05 11:54:00'),
('123', 'lộc', '0000-00-00', 'Male', 'algerian', '6', '61', '01912', '0000-00-00 00:00:00', 55520265, '2022-12-05 12:00:31'),
('123', 'lộc', '0000-00-00', 'Male', 'algerian', '6', '0', '', '0000-00-00 00:00:00', 55520265, '2022-12-05 12:09:27'),
('123', 'lộc', '0000-00-00', 'Male', 'algerian', '6', '62', '01948', '0000-00-00 00:00:00', 55520265, '2022-12-05 12:09:44'),
('123', 'lộc', '0000-00-00', 'Male', 'algerian', '15', '138', '04519', '0000-00-00 00:00:00', 55520265, '2022-12-05 12:13:05'),
('123', 'lộc', '0000-00-00', 'Male', 'vietnamese', 'Ho Chi Minh City', 'District 5', 'Ward 6', '0000-00-00 00:00:00', 896407632, '2022-12-05 12:51:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `health_declaration_comorbidity`
--

CREATE TABLE `health_declaration_comorbidity` (
  `passport` varchar(200) NOT NULL,
  `declaration_date` datetime NOT NULL,
  `comorbidity` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `health_declaration_comorbidity`
--

INSERT INTO `health_declaration_comorbidity` (`passport`, `declaration_date`, `comorbidity`) VALUES
('123', '2022-12-05 12:00:31', '.Older Age.'),
('123', '2022-12-05 12:09:27', '.Brain and nervous system conditions.'),
('123', '2022-12-05 12:09:27', '.Cancer and certain blood disorders.'),
('123', '2022-12-05 12:09:27', '.Chronic kidney or liver disease.'),
('123', '2022-12-05 12:09:27', '.Diabetes and obesity.'),
('123', '2022-12-05 12:09:27', '.Down syndrome.'),
('123', '2022-12-05 12:09:27', '.Heart disease.'),
('123', '2022-12-05 12:09:27', '.Lung problems, including asthma.'),
('123', '2022-12-05 12:09:27', '.Mental health conditions.'),
('123', '2022-12-05 12:09:27', '.Older Age.'),
('123', '2022-12-05 12:09:27', '.Weakened immune system.'),
('123', '2022-12-05 12:09:44', '.Brain and nervous system conditions.'),
('123', '2022-12-05 12:09:44', '.Cancer and certain blood disorders.'),
('123', '2022-12-05 12:09:44', '.Chronic kidney or liver disease.'),
('123', '2022-12-05 12:09:44', '.Diabetes and obesity.'),
('123', '2022-12-05 12:09:44', '.Down syndrome.'),
('123', '2022-12-05 12:09:44', '.Heart disease.'),
('123', '2022-12-05 12:09:44', '.Lung problems, including asthma.'),
('123', '2022-12-05 12:09:44', '.Mental health conditions.'),
('123', '2022-12-05 12:09:44', '.Older Age.'),
('123', '2022-12-05 12:09:44', '.Weakened immune system.'),
('123', '2022-12-05 12:13:05', '.Brain and nervous system conditions.'),
('123', '2022-12-05 12:13:05', '.Cancer and certain blood disorders.'),
('123', '2022-12-05 12:13:05', '.Chronic kidney or liver disease.'),
('123', '2022-12-05 12:13:05', '.Diabetes and obesity.'),
('123', '2022-12-05 12:13:05', '.Down syndrome.'),
('123', '2022-12-05 12:13:05', '.Heart disease.'),
('123', '2022-12-05 12:13:05', '.Lung problems, including asthma.'),
('123', '2022-12-05 12:13:05', '.Mental health conditions.'),
('123', '2022-12-05 12:13:05', '.Older Age.'),
('123', '2022-12-05 12:13:05', '.Weakened immune system.'),
('123', '2022-12-05 12:51:46', '.Brain and nervous system conditions.'),
('123', '2022-12-05 12:51:46', '.Cancer and certain blood disorders.'),
('123', '2022-12-05 12:51:46', '.Chronic kidney or liver disease.'),
('123', '2022-12-05 12:51:46', '.Down syndrome.'),
('123', '2022-12-05 12:51:46', '.Lung problems, including asthma.'),
('123', '2022-12-05 12:51:46', '.Older Age.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `health_declaration_symtom`
--

CREATE TABLE `health_declaration_symtom` (
  `passport` varchar(200) NOT NULL,
  `declaration_date` datetime NOT NULL,
  `symtom` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `health_declaration_symtom`
--

INSERT INTO `health_declaration_symtom` (`passport`, `declaration_date`, `symtom`) VALUES
('123', '2022-12-05 12:13:05', '.Congestion or runny nose.'),
('123', '2022-12-05 12:13:05', '.Cough.'),
('123', '2022-12-05 12:13:05', '.Diarrhea.'),
('123', '2022-12-05 12:13:05', '.Fatigue.'),
('123', '2022-12-05 12:13:05', '.Fever or chills.'),
('123', '2022-12-05 12:13:05', '.Headache.'),
('123', '2022-12-05 12:13:05', '.Muscle or body aches1.'),
('123', '2022-12-05 12:13:05', '.Nausea or vomiting.'),
('123', '2022-12-05 12:13:05', '.New loss of taste or smell.'),
('123', '2022-12-05 12:13:05', '.Shortness of breath or difficulty breathing.'),
('123', '2022-12-05 12:13:05', '.Sore throat.'),
('123', '2022-12-05 12:51:46', '.Cough.'),
('123', '2022-12-05 12:51:46', '.Fever or chills.'),
('123', '2022-12-05 12:51:46', '.New loss of taste or smell.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `medicine`
--

CREATE TABLE `medicine` (
  `medicine_id` varchar(100) NOT NULL,
  `medicine_name` varchar(200) DEFAULT NULL,
  `price` int(50) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `medicine`
--

INSERT INTO `medicine` (`medicine_id`, `medicine_name`, `price`, `expiration_date`) VALUES
('1', 'Molnupiravir', 867500, '2024-11-01'),
('2', 'Paracetamol 500mg', 34000, '2024-11-22'),
('m23456', 'Nhan Khung', 14200, '2023-08-08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `medicine_effect`
--

CREATE TABLE `medicine_effect` (
  `medicine_id` varchar(100) NOT NULL,
  `effect` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `medicine_effect`
--

INSERT INTO `medicine_effect` (`medicine_id`, `effect`) VALUES
('1', 'Molnupiravir là loại thuốc kháng vi rút được sử dụng trong điều trị bệnh nhân nhiễm Covid thể nhẹ tại Việt Nam'),
('2', 'Điều trị các triệu chứng đau trong các trường hợp: đau đầu, đau nửa đầu, đau răng, đau nhức do cảm cúm, đau họng, đau nhức cơ xương, đau do viêm khớp, đau sau khi tiêm ngừa hay nhổ răng. Thuốc còn giúp hạ sốt ở người bị cảm hay những bệnh có liên quan đến sốt.'),
('m23456', 'yêu thương');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(100) NOT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `nurse_id` int(200) DEFAULT NULL,
  `staff_id` int(200) DEFAULT NULL,
  `from_where` varchar(200) DEFAULT NULL,
  `Date_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `patient`
--

INSERT INTO `patient` (`patient_id`, `fname`, `lname`, `gender`, `address`, `phone`, `nurse_id`, `staff_id`, `from_where`, `Date_to`) VALUES
(1, 'Trần', 'Lộc', 'Male', '330 luan luu', '03020105557', 3, 4, 'Cho Ray Hospital', '2022-11-01 14:21:09'),
(2, 'Lê', 'Lực', 'Female', '23 Nguyen trai', '0102030405', 3, 4, 'Bach mai Hospital', '0000-00-00 00:00:00'),
(3, 'Eramus', 'Hafid', 'Female', '', '', 0, 0, '', '0000-00-00 00:00:00'),
(22, 'kim', 'moc', 'Female', '333 street', '0708090405', 0, 0, '', '2022-11-19 16:57:07'),
(23, 'Nhan', 'Khung', 'Female', '355 Lương định Của', '0909346128', 0, 0, '', '2022-11-19 17:05:48'),
(24, 'milk', 'mo', 'Male', '355 Lương định ', '746513', 0, 0, '', '2022-11-19 17:09:38'),
(25, 'nguyen', 'phat', 'Female', 'số 1 lương văn can', '0207049083', 0, 0, '', '2022-11-23 16:24:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `patient_comorbidity`
--

CREATE TABLE `patient_comorbidity` (
  `patient_id` int(100) NOT NULL,
  `comorbidity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `patient_comorbidity`
--

INSERT INTO `patient_comorbidity` (`patient_id`, `comorbidity`) VALUES
(1, 'Heart disease'),
(1, 'Older age'),
(22, 'đau'),
(23, 'Buồn ị'),
(24, ' Brain and nervous system conditions'),
(24, 'Cancer and certain blood disorders'),
(24, 'Chronic kidney or liver disease'),
(24, 'Diabetes and obesity'),
(24, 'Down syndrome'),
(24, 'Heart disease'),
(24, 'Lung problems, including asthma'),
(24, 'Mental health conditionst'),
(24, 'Older Age'),
(24, 'Trĩ cấp độ 1'),
(24, 'Weakened immune system'),
(25, ' Brain and nervous system conditions'),
(25, 'Cancer and certain blood disorders'),
(25, 'Chronic kidney or liver disease'),
(25, 'Diabetes and obesity'),
(25, 'Down syndrome'),
(25, 'Heart disease'),
(25, 'Lung problems, including asthma'),
(25, 'Mental health conditionst'),
(25, 'Older Age'),
(25, 'Weakened immune system'),
(25, 'đau lưng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `patient_room`
--

CREATE TABLE `patient_room` (
  `patient_id` int(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `date_room` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `patient_room`
--

INSERT INTO `patient_room` (`patient_id`, `room`, `date_room`) VALUES
(1, 'A.1RR2', '2022-12-01 15:13:12'),
(2, 'A.1ER1', '2022-12-01 15:08:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `patient_symtom`
--

CREATE TABLE `patient_symtom` (
  `patient_id` int(100) NOT NULL,
  `symtom` varchar(100) NOT NULL,
  `date_symptom` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `patient_symtom`
--

INSERT INTO `patient_symtom` (`patient_id`, `symtom`, `date_symptom`) VALUES
(0, '', '0000-00-00 00:00:00'),
(22, 'dau', '2022-11-19 00:00:00'),
(23, 'Trĩ cấp độ 3', '2022-11-19 00:00:00'),
(24, 'Congestion or runny nose', '2022-11-19 00:00:00'),
(24, 'Cough', '2022-11-19 00:00:00'),
(24, 'Diarrhea', '2022-11-19 00:00:00'),
(24, 'Fatigue', '2022-11-19 00:00:00'),
(24, 'Headache', '2022-11-19 00:00:00'),
(24, 'lạnh nha', '2022-11-19 00:00:00'),
(24, 'Muscle or body aches', '2022-11-19 00:00:00'),
(24, 'Nausea or vomiting', '2022-11-19 00:00:00'),
(24, 'Shortness of breath or difficulty breathing', '2022-11-19 00:00:00'),
(24, 'Sore throat', '2022-11-19 00:00:00'),
(25, 'Congestion or runny nose', '2022-11-23 16:24:02'),
(25, 'Cough', '2022-11-23 16:24:02'),
(25, 'Diarrhea', '2022-11-23 16:24:02'),
(25, 'Fatigue', '2022-11-23 16:24:02'),
(25, 'Headache', '2022-11-23 16:24:02'),
(25, 'mệt mỏi', '2022-11-23 16:24:02'),
(25, 'Muscle or body aches', '2022-11-23 16:24:02'),
(25, 'Nausea or vomiting', '2022-11-23 16:24:02'),
(25, 'Shortness of breath or difficulty breathing', '2022-11-23 16:24:02'),
(25, 'Sore throat', '2022-11-23 16:24:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `people_in_camp`
--

CREATE TABLE `people_in_camp` (
  `people_in_camp_id` int(100) NOT NULL,
  `people_in_camp_fname` varchar(200) DEFAULT NULL,
  `people_in_camp_lname` mediumtext NOT NULL,
  `gender` varchar(1000) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `people_in_camp_job_type` varchar(200) DEFAULT NULL,
  `doctor_boss` int(1) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `people_in_camp`
--

INSERT INTO `people_in_camp` (`people_in_camp_id`, `people_in_camp_fname`, `people_in_camp_lname`, `gender`, `address`, `phone`, `people_in_camp_job_type`, `doctor_boss`, `password`) VALUES
(1, 'Bob', 'job', 'Male', '', '', 'Doctor', 1, '25f9e794323b453885f5181f1b624d0b'),
(2, 'Tokuda', '', 'Male', '', '', 'Doctor', 0, '25f9e794323b453885f5181f1b624d0b'),
(3, 'Suzuki', '', 'Male', '', '', 'Nurse', 0, '25f9e794323b453885f5181f1b624d0b'),
(4, 'Hoonda', '', 'Male', '', '', 'Staff', 0, '25f9e794323b453885f5181f1b624d0b'),
(5, 'Susu', '', 'Male', '', '', 'Volunteer', 0, '25f9e794323b453885f5181f1b624d0b'),
(6, 'Ishii', 'Touya', 'Male', '4 Nguyen Trai', '0901020304', 'Manager', 0, '25f9e794323b453885f5181f1b624d0b'),
(7, 'Nhan', 'Khung', 'Male', '355 Lương định Của', '', 'Volunteer', 0, '25f9e794323b453885f5181f1b624d0b'),
(8, 'nguyen', 'phat', 'Female', 'số 1 lương văn can', '0207049083', 'Doctor', 0, '25f9e794323b453885f5181f1b624d0b'),
(9, 'em', 'yêu', 'Male', '', '', 'Nurse', 0, '25f9e794323b453885f5181f1b624d0b'),
(10, 'con', 'đò', 'Male', '', '', 'Nurse', 0, '25f9e794323b453885f5181f1b624d0b'),
(11, 'dang ', 'sonh', 'Male', '', '', 'Nurse', 0, '25f9e794323b453885f5181f1b624d0b'),
(12, 'qewasrdgh', '2qwert', 'Male', '', '', 'Nurse', 0, '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prescription`
--

CREATE TABLE `prescription` (
  `patient_id` int(100) NOT NULL,
  `doctor_id` int(100) NOT NULL,
  `medicine_id` varchar(100) NOT NULL,
  `price` int(50) NOT NULL,
  `quality` varchar(200) DEFAULT NULL,
  `date_prescription` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `prescription`
--

INSERT INTO `prescription` (`patient_id`, `doctor_id`, `medicine_id`, `price`, `quality`, `date_prescription`) VALUES
(1, 1, '1', 867500, '', '2022-11-22 02:06:12'),
(1, 1, '2', 34000, '', '2022-11-22 02:06:12'),
(1, 2, '1', 867500, '', '2022-11-21 02:06:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `room` varchar(100) NOT NULL,
  `room_id` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `building_id` varchar(200) NOT NULL,
  `floor_id` int(20) NOT NULL,
  `limited_capacity` int(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`room`, `room_id`, `type`, `building_id`, `floor_id`, `limited_capacity`) VALUES
('A.1ER1', '1', 'Emergency', 'A', 1, 10),
('A.1RR2', '2', 'Recuperation', 'A', 1, 10),
('A.2NR3', '3', 'Normal', 'A', 2, 10),
('B.2NR4', '4', 'Normal', 'B', 2, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `test_id` int(100) NOT NULL,
  `patient_id` int(100) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date_test` datetime NOT NULL,
  `result` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `test`
--

INSERT INTO `test` (`test_id`, `patient_id`, `employee_id`, `date_test`, `result`) VALUES
(1, 1, 4, '2022-11-15 01:32:19', 'Positive'),
(2, 2, 4, '2022-11-20 01:32:32', 'Negative'),
(3, 1, 1, '2022-11-29 13:45:00', 'Negative');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test_covid`
--

CREATE TABLE `test_covid` (
  `test_id` int(100) NOT NULL,
  `quick_test` varchar(200) DEFAULT NULL,
  `pcr` varchar(200) DEFAULT NULL,
  `rr` varchar(200) DEFAULT NULL,
  `respiratory_rate` double DEFAULT NULL,
  `spo2` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `test_covid`
--

INSERT INTO `test_covid` (`test_id`, `quick_test`, `pcr`, `rr`, `respiratory_rate`, `spo2`) VALUES
(1, 'yes', ' ', ' ', 50, '35'),
(2, '', 'yes', '', 50, '35'),
(3, 'yes', '', '', 45, '12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `treatment`
--

CREATE TABLE `treatment` (
  `patient_id` int(100) NOT NULL,
  `doctor_id` int(100) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `treatment`
--

INSERT INTO `treatment` (`patient_id`, `doctor_id`, `date_start`, `date_end`) VALUES
(1, 1, '2022-07-03 10:11:28', '2022-10-26 19:21:04'),
(1, 2, '2022-11-01 19:55:21', '2022-11-05 19:55:21'),
(1, 3, '2022-12-01 20:18:01', '0000-00-00 00:00:00'),
(1, 10, '2022-11-01 19:56:04', '2022-11-07 19:56:04'),
(2, 1, '2022-10-31 19:56:04', '2022-11-03 19:56:04'),
(2, 2, '2022-06-01 19:56:04', '2022-11-01 19:56:04'),
(2, 4, '2022-11-09 19:56:04', '0000-00-00 00:00:00'),
(2, 9, '2022-11-01 19:56:04', '0000-00-00 00:00:00'),
(3, 9, '2022-11-01 19:56:04', '2022-11-08 19:56:04');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `assign`
--
ALTER TABLE `assign`
  ADD PRIMARY KEY (`patient_id`,`room`,`date_assign`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Chỉ mục cho bảng `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`building_id`);

--
-- Chỉ mục cho bảng `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`floor_id`,`building_id`),
  ADD KEY `building_id` (`building_id`);

--
-- Chỉ mục cho bảng `health_declaration`
--
ALTER TABLE `health_declaration`
  ADD PRIMARY KEY (`passport`,`declaration_date`);

--
-- Chỉ mục cho bảng `health_declaration_comorbidity`
--
ALTER TABLE `health_declaration_comorbidity`
  ADD PRIMARY KEY (`passport`,`declaration_date`,`comorbidity`);

--
-- Chỉ mục cho bảng `health_declaration_symtom`
--
ALTER TABLE `health_declaration_symtom`
  ADD PRIMARY KEY (`passport`,`declaration_date`,`symtom`);

--
-- Chỉ mục cho bảng `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Chỉ mục cho bảng `medicine_effect`
--
ALTER TABLE `medicine_effect`
  ADD PRIMARY KEY (`medicine_id`,`effect`);

--
-- Chỉ mục cho bảng `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Chỉ mục cho bảng `patient_comorbidity`
--
ALTER TABLE `patient_comorbidity`
  ADD PRIMARY KEY (`patient_id`,`comorbidity`);

--
-- Chỉ mục cho bảng `patient_room`
--
ALTER TABLE `patient_room`
  ADD PRIMARY KEY (`patient_id`,`room`,`date_room`),
  ADD KEY `room` (`room`);

--
-- Chỉ mục cho bảng `patient_symtom`
--
ALTER TABLE `patient_symtom`
  ADD PRIMARY KEY (`patient_id`,`symtom`,`date_symptom`);

--
-- Chỉ mục cho bảng `people_in_camp`
--
ALTER TABLE `people_in_camp`
  ADD PRIMARY KEY (`people_in_camp_id`);

--
-- Chỉ mục cho bảng `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`patient_id`,`doctor_id`,`medicine_id`,`date_prescription`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room`,`room_id`,`building_id`,`floor_id`),
  ADD KEY `building_id` (`building_id`),
  ADD KEY `floor_id` (`floor_id`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`);

--
-- Chỉ mục cho bảng `test_covid`
--
ALTER TABLE `test_covid`
  ADD PRIMARY KEY (`test_id`);

--
-- Chỉ mục cho bảng `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`patient_id`,`doctor_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `floor`
--
ALTER TABLE `floor`
  MODIFY `floor_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `people_in_camp`
--
ALTER TABLE `people_in_camp`
  MODIFY `people_in_camp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `test_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `assign`
--
ALTER TABLE `assign`
  ADD CONSTRAINT `assign_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `people_in_camp` (`people_in_camp_id`),
  ADD CONSTRAINT `assign_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Các ràng buộc cho bảng `floor`
--
ALTER TABLE `floor`
  ADD CONSTRAINT `floor_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`);

--
-- Các ràng buộc cho bảng `health_declaration_comorbidity`
--
ALTER TABLE `health_declaration_comorbidity`
  ADD CONSTRAINT `health_declaration_comorbidity_ibfk_1` FOREIGN KEY (`passport`) REFERENCES `health_declaration` (`passport`);

--
-- Các ràng buộc cho bảng `health_declaration_symtom`
--
ALTER TABLE `health_declaration_symtom`
  ADD CONSTRAINT `health_declaration_symtom_ibfk_1` FOREIGN KEY (`passport`) REFERENCES `health_declaration` (`passport`);

--
-- Các ràng buộc cho bảng `medicine_effect`
--
ALTER TABLE `medicine_effect`
  ADD CONSTRAINT `medicine_effect_ibfk_1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`medicine_id`);

--
-- Các ràng buộc cho bảng `patient_comorbidity`
--
ALTER TABLE `patient_comorbidity`
  ADD CONSTRAINT `patient_comorbidity_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Các ràng buộc cho bảng `patient_room`
--
ALTER TABLE `patient_room`
  ADD CONSTRAINT `patient_room_ibfk_1` FOREIGN KEY (`room`) REFERENCES `room` (`room`),
  ADD CONSTRAINT `patient_room_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Các ràng buộc cho bảng `patient_symtom`
--
ALTER TABLE `patient_symtom`
  ADD CONSTRAINT `patient_symtom_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Các ràng buộc cho bảng `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `people_in_camp` (`people_in_camp_id`),
  ADD CONSTRAINT `prescription_ibfk_3` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`medicine_id`);

--
-- Các ràng buộc cho bảng `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `floor` (`building_id`),
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`floor_id`) REFERENCES `floor` (`floor_id`);

--
-- Các ràng buộc cho bảng `test_covid`
--
ALTER TABLE `test_covid`
  ADD CONSTRAINT `test_covid_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`);

--
-- Các ràng buộc cho bảng `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `treatment_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `people_in_camp` (`people_in_camp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

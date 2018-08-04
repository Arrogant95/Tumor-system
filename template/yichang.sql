-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-05-07 17:26:22
-- 服务器版本： 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: `zhongliusuifang`
--

-- --------------------------------------------------------

--
-- 表的结构 `addremark`
--

CREATE TABLE `addremark` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `remark` varchar(1024) NOT NULL,
  `zhongliuTime` varchar(20) NOT NULL,
  `zhongliuRemark` varchar(1024) NOT NULL,
  `bloodTime` varchar(20) NOT NULL,
  `bloodRemark` varchar(1024) NOT NULL,
  `EEGTime` varchar(20) NOT NULL,
  `EEGResult` varchar(1024) NOT NULL,
  `checkName` varchar(1024) NOT NULL,
  `checkTime` varchar(20) NOT NULL,
  `checkRemark` varchar(1024) NOT NULL,
  `picCheckName` varchar(1024) NOT NULL,
  `picCheckTime` varchar(20) NOT NULL,
  `picCheckRemark` varchar(1024) NOT NULL,
  `bingliName` varchar(1024) NOT NULL,
  `bingliNum` varchar(1024) NOT NULL,
  `bingliResult` varchar(1024) NOT NULL,
  `ptctTime` varchar(1024) NOT NULL,
  `ptctResult` varchar(1024) NOT NULL,
  `zkctTime` varchar(1024) NOT NULL,
  `zkctResult` varchar(1024) NOT NULL,
  `waiyin` varchar(1024) NOT NULL,
  `yindao` varchar(1024) NOT NULL,
  `gongjing` varchar(1024) NOT NULL,
  `zigong` varchar(1024) NOT NULL,
  `fujian` varchar(1024) NOT NULL,
  `elset` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `addremark`
--

INSERT INTO `addremark` (`id`, `code`, `time`, `remark`, `zhongliuTime`, `zhongliuRemark`, `bloodTime`, `bloodRemark`, `EEGTime`, `EEGResult`, `checkName`, `checkTime`, `checkRemark`, `picCheckName`, `picCheckTime`, `picCheckRemark`, `bingliName`, `bingliNum`, `bingliResult`, `ptctTime`, `ptctResult`, `zkctTime`, `zkctResult`, `waiyin`, `yindao`, `gongjing`, `zigong`, `fujian`, `elset`) VALUES
(1, '', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '321', '2321', '231', '231', '231', '231', '231'),
(2, '', '$time', '$remark', '$zhongliuTime', '$zhongliuRemark', '$bloodTime', '$bloodRemark', '&EEGTime', '$EEGResult', '$checkName', '$checkTime', '$checkRemark', '$picCheckName', '$picCheckTime', '$picCheckRemark', '$bingliName', '$bingliNum', '$bingliResult', '$ptctTime', '$ptctResult', '$zkctTime', '$zkctResult', '$waiyin', '$yindao', '$gongjing', '$zigong', '$fujian', '$elset'),
(3, '', 'da', 'we', 'we1', '231', '', '', '&EEGTime', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `basic_cure`
--

CREATE TABLE `basic_cure` (
  `id` int(11) NOT NULL,
  `code` varchar(1024) NOT NULL,
  `entity` varchar(1024) NOT NULL,
  `time` varchar(1024) NOT NULL,
  `chemotherapy` varchar(1024) NOT NULL,
  `chemotherapyjiliang` varchar(1024) NOT NULL,
  `chemotherapypingci` varchar(1024) NOT NULL,
  `chemotherapyway` varchar(1024) NOT NULL,
  `chemotherapytime` varchar(1024) NOT NULL,
  `chemotherapyremark` varchar(1024) NOT NULL,
  `lastchemotherapynot` varchar(1024) NOT NULL,
  `chemotherapyelse` varchar(1024) NOT NULL,
  `EEGTime` varchar(1024) NOT NULL,
  `EEGResult` varchar(1024) NOT NULL,
  `checkResult` varchar(1024) NOT NULL,
  `CTcheckResult` varchar(1024) NOT NULL,
  `pathologyname` varchar(1024) NOT NULL,
  `pathologyNum` varchar(1024) NOT NULL,
  `pathologyResult` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `basic_cure`
--

INSERT INTO `basic_cure` (`id`, `code`, `entity`, `time`, `chemotherapy`, `chemotherapyjiliang`, `chemotherapypingci`, `chemotherapyway`, `chemotherapytime`, `chemotherapyremark`, `lastchemotherapynot`, `chemotherapyelse`, `EEGTime`, `EEGResult`, `checkResult`, `CTcheckResult`, `pathologyname`, `pathologyNum`, `pathologyResult`) VALUES
(1, '', '发烧', '1992-04-24', '多巴胺', '3', '3', '口服', '1994-02-24', '注意吃药时间', '无', '无', '1994-02-24', '正常', '正常', '正常', 'CT', '12345', '正常'),
(2, 'ds', '发烧', '1994-04-25', '安捷信', '2', '3', '打针', '1995-01-12', '注意回来复查', '暂无', '无', '1995-01-25', '正常', '胸部有异常', '正常', 'MRI', '124587', '正常'),
(3, '', '感冒', '1992-01-13', '牛黄解毒丸', '3', '2', '口服', '1993-08-05', '注意调理身体', '无', '暂无', '1994-05-14', '心率不稳', '正常', '正常', 'CT', '15456', '正常');

-- --------------------------------------------------------

--
-- 表的结构 `basic_info`
--

CREATE TABLE `basic_info` (
  `id` bigint(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `filing` varchar(1024) NOT NULL,
  `department` varchar(1024) NOT NULL,
  `registerNum` varchar(1024) NOT NULL,
  `cardNum` varchar(1024) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `sex` varchar(1024) NOT NULL,
  `birthday` varchar(1024) NOT NULL,
  `age` varchar(1024) NOT NULL,
  `stature` varchar(1024) NOT NULL,
  `self` varchar(1024) NOT NULL,
  `relation` varchar(1024) NOT NULL,
  `provice` varchar(1024) NOT NULL,
  `city` varchar(1024) NOT NULL,
  `country` varchar(1024) NOT NULL,
  `street` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `basic_info`
--

INSERT INTO `basic_info` (`id`, `code`, `filing`, `department`, `registerNum`, `cardNum`, `name`, `sex`, `birthday`, `age`, `stature`, `self`, `relation`, `provice`, `city`, `country`, `street`) VALUES
(1, '', '1997-02-14', '华西医院', '1321245', '12154511', 'jack', '1', '1957-04-01', '47', '167', '14532154133', '1456334645', '四川省', '成都市', '锦江区', '13号'),
(3, '', '1995-06-13', '', '231', '231', 'june', '', '1993-06-03', '21', '168', '1244513214', '', '', '', '', '231'),
(4, '', '1996-05-11', '', '12354', '124564', 'anny', '', '1992-01-05', '', '172', '1358831154', '', '', '', '', '15路');

-- --------------------------------------------------------

--
-- 表的结构 `cancer_history`
--

CREATE TABLE `cancer_history` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `phoneNum` varchar(1024) NOT NULL,
  `diseaseAttribute` varchar(1024) NOT NULL,
  `pathologialDiagnosis` varchar(1024) NOT NULL,
  `operationName` varchar(1024) NOT NULL,
  `headDOC` varchar(1024) NOT NULL,
  `visitingStaff` varchar(1024) NOT NULL,
  `residentDOC` varchar(1024) NOT NULL,
  `surgeon` varchar(1024) NOT NULL,
  `ageStart` varchar(1024) NOT NULL,
  `ageEnd` varchar(1024) NOT NULL,
  `startLeave` varchar(1024) NOT NULL,
  `endLeave` varchar(1024) NOT NULL,
  `bingli` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cancer_history`
--

INSERT INTO `cancer_history` (`id`, `code`, `name`, `phoneNum`, `diseaseAttribute`, `pathologialDiagnosis`, `operationName`, `headDOC`, `visitingStaff`, `residentDOC`, `surgeon`, `ageStart`, `ageEnd`, `startLeave`, `endLeave`, `bingli`) VALUES
(1, '', 'jack', '14521356456', '良性', '病状转好', 'EEGOperation', '王奕盛', '小斌', '小奴', '肖牛', '14', '18', '1994-02-14', '1997-02-24', '正常'),
(2, '', 'june', '15245413412', '良性', '病况转好', 'EEGOperation', '小斌', '汪义贤', '黄旭华', '现江达', '15', '17', '1992-03-13', '1995-05-13', '正常'),
(3, '', 'anny', '13552423412', '恶性', '病情延缓', 'iceOperation', '尚大嗒', '小奴', '汪义贤', '杜小花', '22', '27', '1885-02-15', '1993-02-13', '正常');

-- --------------------------------------------------------

--
-- 表的结构 `inspect_experience`
--

CREATE TABLE `inspect_experience` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `firstVisitTime` varchar(1024) NOT NULL,
  `firstVisitDoc` varchar(1024) NOT NULL,
  `firstVisitHip` varchar(1024) NOT NULL,
  `mainComplain` varchar(1024) NOT NULL,
  `ptct` varchar(1024) NOT NULL,
  `zkct` varchar(1024) NOT NULL,
  `ECGTime` varchar(1024) NOT NULL,
  `ECGResult` varchar(1024) NOT NULL,
  `bingliCheck` varchar(1024) NOT NULL,
  `bingliNum` varchar(1024) NOT NULL,
  `bingliResult` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `inspect_experience`
--

INSERT INTO `inspect_experience` (`id`, `code`, `firstVisitTime`, `firstVisitDoc`, `firstVisitHip`, `mainComplain`, `ptct`, `zkct`, `ECGTime`, `ECGResult`, `bingliCheck`, `bingliNum`, `bingliResult`) VALUES
(1, '', '1997-04-14', '黄医师', '华西医院', '生病', '正常', '正常', '1952-12-14', '正常', '正常', '142324', '正常'),
(2, '', '1987-08-15', '王医师', '四川省医院', '发烧', '异常', '正常', '1966-06-25', '正常', '正常', '154124', '正常'),
(3, '', '1996-06-14', '黄奕是', '华西医院', '发烧', '正常', '正常', '1997-10-30', '异常', '正常', '157893', '正常');

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `name`, `pw`) VALUES
(1, 'yichang', '1234ab');

-- --------------------------------------------------------

--
-- 表的结构 `operation_history`
--

CREATE TABLE `operation_history` (
  `id` int(11) NOT NULL,
  `code` varchar(1024) NOT NULL,
  `Pregnancy` varchar(1024) NOT NULL,
  `birth` varchar(1024) NOT NULL,
  `abortion` varchar(1024) NOT NULL,
  `lastMenstruation` varchar(1024) NOT NULL,
  `allergy` varchar(1024) NOT NULL,
  `zhongliuHome` varchar(1024) NOT NULL,
  `diseasetime` varchar(1024) NOT NULL,
  `diseasename` varchar(1024) NOT NULL,
  `diseaseremark` varchar(1024) NOT NULL,
  `time` varchar(1024) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `baseInfo` varchar(1024) NOT NULL,
  `ascites` varchar(1024) NOT NULL,
  `lump` varchar(1024) NOT NULL,
  `frozenExamine` varchar(1024) NOT NULL,
  `pathologyExamine` varchar(1024) NOT NULL,
  `residualDisease` varchar(1024) NOT NULL,
  `doctor` varchar(1024) NOT NULL,
  `hospital` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `operation_history`
--

INSERT INTO `operation_history` (`id`, `code`, `Pregnancy`, `birth`, `abortion`, `lastMenstruation`, `allergy`, `zhongliuHome`, `diseasetime`, `diseasename`, `diseaseremark`, `time`, `name`, `baseInfo`, `ascites`, `lump`, `frozenExamine`, `pathologyExamine`, `residualDisease`, `doctor`, `hospital`) VALUES
(1, '12', '1', '1', '1', '43', '无', '无', '1994-12-14', '发烧', '病毒性发烧', '1992-05-12', '搭桥手术', '正常', '正常', '正常', '正常', '无大碍', '无', '王医生', '华西医院'),
(2, '', '2', '1', '1', '40', '无', '血友病', '2001-10-21', '发烧', '敏感性发烧', '2002-01-13', '搭桥手术', '正常', '异常', '正常', '正常', '无什么症状', '无', '黄医生', '四川省医院'),
(3, '', '1', '1', '2', '50', '无', '无', '1996-11-11', '感冒', '病毒性感冒', '1994-05-14', '搭桥手术', '正常', '正常', '正常', '正常', '无大碍', '无', '杜医生', '华西医院');

-- --------------------------------------------------------

--
-- 表的结构 `pathology`
--

CREATE TABLE `pathology` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `treatment` varchar(1024) NOT NULL,
  `volume` varchar(1024) NOT NULL,
  `drugName` varchar(1024) NOT NULL,
  `drugjiliang` varchar(20) NOT NULL,
  `drugpingci` varchar(20) NOT NULL,
  `drugway` varchar(1024) NOT NULL,
  `drugtime` varchar(20) NOT NULL,
  `drugremark` varchar(1024) NOT NULL,
  `lastTreatmentnot` varchar(1024) NOT NULL,
  `treatmentElse` varchar(1024) NOT NULL,
  `fudrugName` varchar(1024) NOT NULL,
  `fudrugjiliang` varchar(20) NOT NULL,
  `fudrugpingci` varchar(20) NOT NULL,
  `fudrugway` varchar(1024) NOT NULL,
  `fudrugtime` varchar(1024) NOT NULL,
  `fudrugremark` varchar(1024) NOT NULL,
  `fulastTreatmentnot` varchar(1024) NOT NULL,
  `fulastTreatmentelse` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pathology`
--

INSERT INTO `pathology` (`id`, `code`, `time`, `treatment`, `volume`, `drugName`, `drugjiliang`, `drugpingci`, `drugway`, `drugtime`, `drugremark`, `lastTreatmentnot`, `treatmentElse`, `fudrugName`, `fudrugjiliang`, `fudrugpingci`, `fudrugway`, `fudrugtime`, `fudrugremark`, `fulastTreatmentnot`, `fulastTreatmentelse`) VALUES
(1, '', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231', '231'),
(2, '', '$time', '$treatment', '$volume', '$drugName', '$drugjiliang', '$drugpingci', '&drugway', '$drugtime', '$drugremark', '$lastTreatmentnot', '$treatmentElse', '$fudrugName', '$fudrugjiliang', '$fudrugpingci', '$fudrugway', '$fudrugtime', '$fudrugremark', '$fulastTreatmentnot', '$fulastTreatmentelse'),
(3, '', 'weqw', 'weqw', 'weqw', 'weq', 'wwew', 'qew', 'eqw', 'w', 'ewq', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addremark`
--
ALTER TABLE `addremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_cure`
--
ALTER TABLE `basic_cure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_info`
--
ALTER TABLE `basic_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancer_history`
--
ALTER TABLE `cancer_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspect_experience`
--
ALTER TABLE `inspect_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_history`
--
ALTER TABLE `operation_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathology`
--
ALTER TABLE `pathology`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addremark`
--
ALTER TABLE `addremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `basic_cure`
--
ALTER TABLE `basic_cure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `basic_info`
--
ALTER TABLE `basic_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cancer_history`
--
ALTER TABLE `cancer_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inspect_experience`
--
ALTER TABLE `inspect_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `operation_history`
--
ALTER TABLE `operation_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pathology`
--
ALTER TABLE `pathology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
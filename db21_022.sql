-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2021 at 01:02 PM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db21_022`
--

-- --------------------------------------------------------

--
-- Table structure for table `Chart`
--

CREATE TABLE `Chart` (
  `CHA_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `CHA_AM` varchar(50) CHARACTER SET tis620 NOT NULL,
  `CHA_DATE` date NOT NULL,
  `STOCK_ID` varchar(255) CHARACTER SET tis620 NOT NULL,
  `Chart_STATUS` varchar(50) CHARACTER SET tis620 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Chart`
--

INSERT INTO `Chart` (`CHA_ID`, `CHA_AM`, `CHA_DATE`, `STOCK_ID`, `Chart_STATUS`) VALUES
('CH001', '500', '2021-07-08', 'PR001C1', 'รับของแล้ว'),
('CH002', '1000', '2021-07-08', 'PR001C2', 'รับของแล้ว'),
('CH003', '700', '2021-07-08', 'PR003C4', 'รับของแล้ว'),
('CH004', '300', '2021-07-08', 'PR004C6', 'รับของแล้ว'),
('CH005', '1000', '2021-07-08', 'PR005C8', 'รับของแล้ว'),
('CH006', '600', '2021-07-09', 'PR001C2', 'รับของแล้ว'),
('CH007', '300', '2021-07-09', 'PR003C4', 'รับของแล้ว'),
('CH008', '1000', '2021-07-09', 'PR004C5', 'รับของแล้ว'),
('CH009', '400', '2021-07-10', 'PR001C2', 'รับของแล้ว'),
('CH010', '500', '2021-07-10', 'PR002C3', 'รับของแล้ว'),
('CH011', '500', '2021-07-10', 'PR005C8', 'รับของแล้ว'),
('CH012', '1000', '2021-07-10', 'PR005C5', 'รับของแล้ว'),
('CH013', '1000', '2021-08-05', 'PR004C5', 'รับของแล้ว'),
('CH014', '1200', '2021-08-05', 'PR004C6', 'รับของแล้ว'),
('CH015', '800', '2021-08-05', 'PR006C8', 'รอจัดส่ง');

-- --------------------------------------------------------

--
-- Table structure for table `colour`
--

CREATE TABLE `colour` (
  `COLOUR_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `COLOUR_NAME` varchar(255) CHARACTER SET tis620 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colour`
--

INSERT INTO `colour` (`COLOUR_ID`, `COLOUR_NAME`) VALUES
('C1', 'เทา-น้ำตาล'),
('C2', 'น้ำตาล-น้ำตาล'),
('C3', 'น้ำตาล'),
('C4', 'เทา'),
('C5', 'แดง'),
('C6', 'ส้ม'),
('C7', 'เขียว'),
('C8', 'ฟ้า');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUS_ID` varchar(20) CHARACTER SET tis620 NOT NULL,
  `CUS_Name` varchar(20) CHARACTER SET tis620 NOT NULL,
  `CUS_Add` varchar(20) CHARACTER SET tis620 NOT NULL,
  `CUS_Tel` varchar(20) CHARACTER SET tis620 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUS_ID`, `CUS_Name`, `CUS_Add`, `CUS_Tel`) VALUES
('C01', 'คุณแก้ว ', 'กำแพงแสน ', '081321654 '),
('C02', 'คุณอุดร  ', 'บางเลน  ', '0825689865  '),
('C03 ', 'คุณพิพัฒน์ ', 'ดอนตูม ', '087996554 '),
('C04 ', 'คุณน้ำใส  ', 'สามพราน  ', '0855888855  ');

-- --------------------------------------------------------

--
-- Table structure for table `DetailManufacture`
--

CREATE TABLE `DetailManufacture` (
  `DM_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `DQ_ID` varchar(50) CHARACTER SET tis620 DEFAULT NULL,
  `DM_Quantity` int(11) NOT NULL,
  `MF_ID` varchar(20) CHARACTER SET tis620 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DetailManufacture`
--

INSERT INTO `DetailManufacture` (`DM_ID`, `DQ_ID`, `DM_Quantity`, `MF_ID`) VALUES
('DM1', 'DQ5', 505, 'MF1'),
('DM10', NULL, 204, 'MF4'),
('DM11', NULL, 684, 'MF4'),
('DM12', NULL, 918, 'MF4'),
('DM2', 'DQ6', 808, 'MF1'),
('DM3', 'DQ7', 202, 'MF1'),
('DM4', 'DQ8', 1515, 'MF1'),
('DM5', 'DQ9', 182, 'MF2'),
('DM6', 'DQ10', 404, 'MF2'),
('DM7', 'DQ11', 606, 'MF2'),
('DM8', 'DQ14', 449, 'MF3'),
('DM9', 'DQ15', 867, 'MF3');

-- --------------------------------------------------------

--
-- Table structure for table `DetailQuotation`
--

CREATE TABLE `DetailQuotation` (
  `DQ_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `Q_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `DQ_NUMBER` varchar(50) CHARACTER SET tis620 NOT NULL,
  `STOCK_ID` varchar(255) CHARACTER SET tis620 NOT NULL,
  `DQ_QTY` int(11) NOT NULL,
  `DQ_CUINT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DetailQuotation`
--

INSERT INTO `DetailQuotation` (`DQ_ID`, `Q_ID`, `DQ_NUMBER`, `STOCK_ID`, `DQ_QTY`, `DQ_CUINT`) VALUES
('DQ1', '11001', '1', 'PR004C5', 450, 2),
('DQ10', '11006', '2', 'PR004C6', 400, 2),
('DQ11', '11006', '3', 'PR005C8', 600, 2),
('DQ12', '11007', '1', 'PR002C3', 200, 3),
('DQ13', '11008', '1', 'PR003C4', 600, 1),
('DQ14', '11009', '1', 'PR004C7', 440, 1),
('DQ15', '11009', '2', 'PR005C8', 850, 1),
('DQ16', '11010', '1', 'PR004C6', 200, 2),
('DQ17', '11010', '2', 'PR004C5', 670, 1),
('DQ18', '11010', '3', 'PR006C8', 900, 2),
('DQ2', '11002', '1', 'PR004C6', 580, 1),
('DQ3', '11003', '1', 'PR005C8', 1200, 2),
('DQ4', '11004', '1', 'PR006C8', 1500, 1),
('DQ5', '11005', '1', 'PR004C5', 500, 2),
('DQ6', '11005', '2', 'PR004C6', 800, 2),
('DQ7', '11005', '3', 'PR005C8', 200, 2),
('DQ8', '11005', '4', 'PR006C7', 1500, 1),
('DQ9', '11006', '1', 'PR004C5', 180, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMP_ID` varchar(20) CHARACTER SET tis620 NOT NULL,
  `EMP_Name` char(20) CHARACTER SET tis620 NOT NULL,
  `EMP_Role` varchar(20) CHARACTER SET tis620 NOT NULL,
  `EMP_Pass` char(20) CHARACTER SET tis620 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMP_ID`, `EMP_Name`, `EMP_Role`, `EMP_Pass`) VALUES
('S11', 'นายสมชาย', 'ฝ่ายขาย', 'S111111'),
('S12', 'นายสมศักดิ์', 'ฝ่ายขาย', 'S121111'),
('S13', 'นางสมสมร', 'ฝ่ายขาย', 'S131111'),
('S21', 'นางสาวพรศรี', 'ฝ่ายจัดซื้อ', 'S211111'),
('S22', 'นางพรพรรณ', 'ฝ่ายจัดซื้อ', 'S221111'),
('S31', 'นายยิ่งยง', 'ฝ่ายผลิต', 'S311111'),
('S32', 'นายบัวขาว', 'ฝ่ายผลิต', 'S321111'),
('S41', 'นายนิมิต', 'ผู้จัดการ', 'S411111'),
('S42', 'นางประนอม', 'ผู้จัดการ', 'S421111');

-- --------------------------------------------------------

--
-- Table structure for table `manufacture`
--

CREATE TABLE `manufacture` (
  `MF_ID` varchar(20) CHARACTER SET tis620 NOT NULL,
  `Q_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `MF_STATUS` varchar(50) CHARACTER SET tis620 NOT NULL,
  `MF_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacture`
--

INSERT INTO `manufacture` (`MF_ID`, `Q_ID`, `MF_STATUS`, `MF_DATE`) VALUES
('MF1', '11005', 'ผลิตเสร็จ', '2021-08-20'),
('MF2', '11006', 'ผลิตเสร็จ', '2021-08-22'),
('MF3', '11009', 'ผลิตเสร็จ', '2021-08-23'),
('MF4', '11010', 'ผลิตไม่เสร็จ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `PM_ID` varchar(50) NOT NULL,
  `Q_ID` varchar(70) CHARACTER SET tis620 DEFAULT NULL,
  `PM_DATE` date DEFAULT NULL,
  `PM_PAY` int(11) DEFAULT NULL,
  `PM_note` varchar(50) CHARACTER SET tis620 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`PM_ID`, `Q_ID`, `PM_DATE`, `PM_PAY`, `PM_note`) VALUES
('PM1', '11006', '2021-08-02', 40, 'ชำระมัดจำ'),
('PM2', '11010', '2021-08-02', 50, 'ชำระมัดจำ'),
('PM3', '11007', '2021-08-05', 30, 'ชำระมัดจำ'),
('PM4', '11005', '2021-08-22', 40, ''),
('PM5', '11006', '2021-07-25', 40, ''),
('PM6', '11005', '2021-07-30', 60, '');

-- --------------------------------------------------------

--
-- Table structure for table `priceproduct`
--

CREATE TABLE `priceproduct` (
  `PRI_ID` int(20) NOT NULL,
  `PRO_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `PRI_Qty` int(255) NOT NULL,
  `PRI_Price` int(255) NOT NULL,
  `PRI_SCEEN` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `priceproduct`
--

INSERT INTO `priceproduct` (`PRI_ID`, `PRO_ID`, `PRI_Qty`, `PRI_Price`, `PRI_SCEEN`) VALUES
(1, 'PR001', 50, 150, 18),
(2, 'PR001', 100, 120, 15),
(3, 'PR001', 200, 98, 12),
(4, 'PR001', 400, 90, 10),
(5, 'PR001', 600, 86, 9),
(6, 'PR001', 800, 83, 8),
(7, 'PR001', 801, 81, 7),
(8, 'PR002', 100, 69, 9),
(9, 'PR002', 200, 63, 7),
(10, 'PR002', 300, 56, 6),
(11, 'PR002', 500, 50, 5.5),
(12, 'PR002', 800, 49, 5),
(13, 'PR002', 801, 48, 4.5),
(14, 'PR003', 100, 57, 9),
(15, 'PR003', 200, 50, 8),
(16, 'PR003', 300, 45, 7.5),
(17, 'PR003', 500, 39, 6),
(18, 'PR003', 800, 37, 5),
(19, 'PR003', 801, 34, 4.5),
(20, 'PR004', 50, 30, 9),
(21, 'PR004', 100, 20, 8),
(22, 'PR004', 200, 18, 7),
(23, 'PR004', 300, 15, 7.5),
(24, 'PR004', 500, 12, 6),
(25, 'PR004', 800, 10, 5),
(26, 'PR004', 801, 8, 4),
(27, 'PR005', 50, 80, 20),
(28, 'PR005', 100, 75, 18),
(29, 'PR005', 200, 68, 14),
(30, 'PR005', 500, 64, 12),
(31, 'PR005', 800, 60, 10),
(32, 'PR005', 801, 58, 9),
(35, 'PR006', 100, 75, 25),
(36, 'PR006', 300, 70, 22),
(37, 'PR006', 500, 64, 20),
(38, 'PR006', 700, 62, 16),
(39, 'PR006', 800, 55, 15),
(40, 'PR006', 801, 52, 12);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRO_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `PRO_Name` varchar(200) CHARACTER SET tis620 NOT NULL,
  `PRO_Detail` varchar(200) CHARACTER SET tis620 NOT NULL,
  `PRO_Category` varchar(50) CHARACTER SET tis620 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRO_ID`, `PRO_Name`, `PRO_Detail`, `PRO_Category`) VALUES
('PR001', 'ชุดเครื่องเขียน "Back to Nature"', 'ดินสอ ปากกา กระดาษ ยางลบ ไม้บรรทัดไม้ไผ่ ไฮไลท์ กบเหลาไม้ Eco Bag', 'เครื่องเขียน'),
('PR002', '"Leaf Message" memo box กล่องกระดาษโน้ต ดินสอ', 'กระดาษโน้ต 150 แผ่น ดินสอ 3.5 นิ้ว', 'เครื่องเขียน'),
('PR003', 'Natural Post it', 'Post it 3x3" และ 1x3" อย่างละ 50 แผ่น', 'เครื่องเขียน'),
('PR004', '"recycle pen" ปากการีไซเคิล', 'ปากกาแบบกด ด้ามทำจากกระดาษรีไซเคิลม้วนเป็นโรล หมึกสีน้ำเงิน', 'เครื่องเขียน'),
('PR005', 'พัดลมมือถือเด็กอ้วน', 'พัดลมมือถือรูปเด็กอ้วน ขนาดกะทัดรัด', 'พัดลมมือถือ'),
('PR006', 'พัดลมมือถือcool', 'พัดลมมือถือสีใส ปุ่มเปิดด้านข้าง ', 'พัดลมมือถือ');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q1`
--
CREATE TABLE `Q1` (
`EMP_ID` varchar(20)
,`EMP_Name` char(20)
,`EMP_Role` varchar(20)
,`EMP_Pass` char(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q2`
--
CREATE TABLE `Q2` (
`ตำแหน่ง` varchar(20)
,`จำนวนพนักงาน` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q3`
--
CREATE TABLE `Q3` (
`รหัสลูกค้า` varchar(20)
,`ชื่อลูกค้า` varchar(20)
,`ที่อยู่` varchar(20)
,`เบอร์โทรศัพท์` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q4`
--
CREATE TABLE `Q4` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`ราคาต่อชิ้น` double
,`ราคารวม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q6`
--
CREATE TABLE `Q6` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`หมวด` varchar(50)
,`สี` varchar(255)
,`จำนวนขั้นต่ำ` int(11)
,`จำนวนครั้งที่มีการซื้อ` bigint(21)
,`จำนวนรวม` double
,`จำนวนที่ต้องสั่งเพิ่ม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q7`
--
CREATE TABLE `Q7` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`หมวดสินค้า` varchar(50)
,`จำนวนสีที่มีให้เลือก` bigint(21)
,`จำนวนที่มีรวม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q8`
--
CREATE TABLE `Q8` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`สี` varchar(255)
,`จำนวนขั้นต่ำ` int(11)
,`จำนวนที่มีรวม` double
,`จำนวนที่ต้องสั่งเพิ่ม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q9`
--
CREATE TABLE `Q9` (
`Q_ID` varchar(50)
,`PRO_ID` varchar(50)
,`COLOUR` varchar(255)
,`Q_QTY` int(11)
,`PRICE_UNIT` double
,`PRICE_SUM` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q10`
--
CREATE TABLE `Q10` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`สี` varchar(255)
,`จำนวนสินค้าในใบเสนอราคา` decimal(32,0)
,`จำนวนที่มี` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q11`
--
CREATE TABLE `Q11` (
`Q_ID` varchar(50)
,`Q_DATE` date
,`CUS_Name` varchar(20)
,`SUM_PRICEQUO` double
,`ADDVAT` double(19,2)
,`Desposit` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q12`
--
CREATE TABLE `Q12` (
`ชื่อพนักงาน` char(20)
,`จำนวนใบเสนอราคา` bigint(21)
,`ยอดรวม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q13`
--
CREATE TABLE `Q13` (
`สถานะติดตาม` varchar(255)
,`จำนวน` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q14`
--
CREATE TABLE `Q14` (
`รหัสใบเสนอราคา` varchar(50)
,`วันที่` date
,`สถานะการติดตาม` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q15`
--
CREATE TABLE `Q15` (
`รหัสใบเสนอราคา` varchar(50)
,`วันที่` date
,`สถานะการติดตาม` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q16`
--
CREATE TABLE `Q16` (
`รหัสใบเสนอราคา` varchar(50)
,`ยอดชำระ` double(19,2)
,`ยอดค้างชำระ` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q17`
--
CREATE TABLE `Q17` (
`รหัสใบเสนอราคา` varchar(50)
,`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`สี` varchar(255)
,`จำนวนที่สั่ง` int(11)
,`จำนวนที่ผลิต` decimal(16,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q18`
--
CREATE TABLE `Q18` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`สี` varchar(255)
,`จำนวนคงเหลือ` double
,`อยู่ระหว่างสั่งซื้อ` varchar(50)
,`จำนวนที่ผลิต` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q19`
--
CREATE TABLE `Q19` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`สี` varchar(255)
,`จำนวนที่ต้องสั่งเพิ่ม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q20`
--
CREATE TABLE `Q20` (
`รหัสใบเสนอราคา` varchar(70)
,`วันที่` date
,`ยอดชำระเงิน` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q21`
--
CREATE TABLE `Q21` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`จำนวนที่ผลิตเสร็จ` decimal(32,0)
,`จำนวนที่จัดส่ง` decimal(16,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q22`
--
CREATE TABLE `Q22` (
`Q_ID` varchar(50)
,`ADDVAT` double(19,2)
,`PAID` double(19,2)
,`UNPAID` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q23`
--
CREATE TABLE `Q23` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`จำนวนขาย` decimal(32,0)
,`จำนวนเผื่อ` decimal(43,0)
,`ราคาขายรวม` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q501`
--
CREATE TABLE `Q501` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`ราคาต่อชิ้น` int(255)
,`ราคารวม` bigint(66)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q502`
--
CREATE TABLE `Q502` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`ราคาต่อชิ้น` double
,`ราคารวม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q503`
--
CREATE TABLE `Q503` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`ราคาต่อชิ้น` double
,`ราคารวม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q504`
--
CREATE TABLE `Q504` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`ราคาต่อชิ้น` int(255)
,`ราคารวม` bigint(66)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q505`
--
CREATE TABLE `Q505` (
`รหัสสินค้า` varchar(50)
,`ชื่อสินค้า` varchar(200)
,`ราคาต่อชิ้น` double
,`ราคารวม` double
);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `Q_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `Q_DATE` date NOT NULL,
  `EMP_ID` varchar(20) CHARACTER SET tis620 DEFAULT NULL,
  `CUS_ID` varchar(20) CHARACTER SET tis620 NOT NULL,
  `Q_CDT` varchar(255) CHARACTER SET tis620 NOT NULL,
  `Q_deposit` float NOT NULL,
  `Manager_ID` varchar(20) CHARACTER SET tis620 DEFAULT NULL,
  `Manager_STATUS` varchar(70) CHARACTER SET tis620 DEFAULT NULL,
  `Manager_DATE` date DEFAULT NULL,
  `PDO_PAY` varchar(50) CHARACTER SET tis620 DEFAULT NULL,
  `PDO_PAYDATE` date DEFAULT NULL,
  `PDO_M` int(10) NOT NULL,
  `DATE_manufacturer` date DEFAULT NULL,
  `PDO_DELIVERY` varchar(50) CHARACTER SET tis620 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`Q_ID`, `Q_DATE`, `EMP_ID`, `CUS_ID`, `Q_CDT`, `Q_deposit`, `Manager_ID`, `Manager_STATUS`, `Manager_DATE`, `PDO_PAY`, `PDO_PAYDATE`, `PDO_M`, `DATE_manufacturer`, `PDO_DELIVERY`) VALUES
('11001', '2021-07-11', 'S11', 'C01', 'มัดจำ', 40, NULL, NULL, NULL, NULL, NULL, -1, NULL, NULL),
('11002', '2021-07-12', 'S12', 'C02', 'เครดิต', 0, NULL, NULL, NULL, NULL, NULL, -1, NULL, NULL),
('11003', '2021-07-13', 'S13', 'C03 ', 'มัดจำ', 30, NULL, NULL, NULL, NULL, NULL, -1, NULL, NULL),
('11004', '2021-07-14', 'S11', 'C04 ', 'เครดิต', 0, NULL, 'รออนุมัติ', NULL, 'เครดิต', NULL, -1, NULL, NULL),
('11005', '2021-07-15', 'S12', 'C01', 'เครดิต', 0, 'S41', 'อนุมัติ', '2021-08-03', 'เครดิต', NULL, 1, '2021-08-20', 'จัดส่งแล้ว'),
('11006', '2021-07-16', 'S13', 'C02', 'มัดจำ', 40, 'S42', 'อนุมัติ', '2021-08-03', 'ชำระแล้ว', '2021-08-02', 1, '2021-08-22', 'จัดส่งแล้ว'),
('11007', '2021-07-17', 'S11', 'C03 ', 'มัดจำ', 30, NULL, 'รออนุมัติ', NULL, 'ชำระแล้ว', '2021-08-05', -1, NULL, NULL),
('11008', '2021-07-18', 'S12', 'C04 ', 'มัดจำ', 40, NULL, 'รออนุมัติ', NULL, 'รอชำระ', NULL, -1, NULL, NULL),
('11009', '2021-07-19', 'S13', 'C01', 'เครดิต', 0, 'S41', 'อนุมัติ', '2021-08-03', 'เครดิต', NULL, 2, '2021-08-23', 'ยังไม่จัดส่ง'),
('11010', '2021-07-20', 'S11', 'C02', 'มัดจำ', 50, 'S41', 'อนุมัติ', '2021-08-03', 'ชำระแล้ว', '2021-08-02', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requisition`
--

CREATE TABLE `requisition` (
  `R_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `DQ_ID` varchar(50) CHARACTER SET tis620 DEFAULT NULL,
  `R_DATE` date DEFAULT NULL,
  `R_Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requisition`
--

INSERT INTO `requisition` (`R_ID`, `DQ_ID`, `R_DATE`, `R_Quantity`) VALUES
('R1', 'DQ5', '2021-08-15', 505),
('R10', 'DQ16', '2021-08-15', 204),
('R2', 'DQ6', '2021-08-15', 808),
('R3', 'DQ7', '2021-08-15', 202),
('R4', 'DQ8', '2021-08-15', 1515),
('R5', 'DQ9', '2021-08-15', 182),
('R6', 'DQ10', '2021-08-15', 404),
('R7', 'DQ11', '2021-08-15', 606),
('R8', 'DQ14', '2021-08-15', 449),
('R9', 'DQ15', '2021-08-15', 867);

-- --------------------------------------------------------

--
-- Table structure for table `stockofproduct`
--

CREATE TABLE `stockofproduct` (
  `STOCK_ID` varchar(255) CHARACTER SET tis620 NOT NULL,
  `STOCK_MIN` int(11) NOT NULL,
  `COLOUR_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `PRO_ID` varchar(50) CHARACTER SET tis620 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockofproduct`
--

INSERT INTO `stockofproduct` (`STOCK_ID`, `STOCK_MIN`, `COLOUR_ID`, `PRO_ID`) VALUES
('PR001C1', 800, 'C1', 'PR001'),
('PR001C2', 800, 'C2', 'PR001'),
('PR002C3', 600, 'C3', 'PR002'),
('PR003C4', 400, 'C4', 'PR003'),
('PR004C5', 300, 'C5', 'PR004'),
('PR004C6', 300, 'C6', 'PR004'),
('PR004C7', 300, 'C7', 'PR004'),
('PR005C5', 200, 'C5', 'PR005'),
('PR005C8', 200, 'C8', 'PR005'),
('PR006C7', 0, 'C7', 'PR006'),
('PR006C8', 0, 'C8', 'PR006');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `T_ID` varchar(20) CHARACTER SET tis620 NOT NULL,
  `T_DATE` date NOT NULL,
  `Q_ID` varchar(50) CHARACTER SET tis620 NOT NULL,
  `T_STATUS` varchar(255) CHARACTER SET tis620 NOT NULL,
  `T_CANCEL` varchar(255) CHARACTER SET tis620 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`T_ID`, `T_DATE`, `Q_ID`, `T_STATUS`, `T_CANCEL`) VALUES
('T1', '2021-07-27', '11001', 'ยังไม่ตัดสินใจ', ''),
('T10', '2021-07-27', '11010', 'ยังไม่ตัดสินใจ', ''),
('T11', '2021-07-30', '11001', 'ยกเลิก', 'ราคาสูง'),
('T12', '2021-07-30', '11003', 'ยังไม่ตัดสินใจ', ''),
('T13', '2021-07-30', '11004', 'ตกลง', ''),
('T14', '2021-07-30', '11010', 'ยังไม่ตัดสินใจ', ''),
('T15', '2021-07-31', '11010', 'ตกลง', ''),
('T2', '2021-07-27', '11002', 'ยกเลิก', 'ใช้เวลาผลิตนาน'),
('T3', '2021-07-27', '11003', 'ยังไม่ตัดสินใจ', ''),
('T4', '2021-07-27', '11004', 'ยังไม่ตัดสินใจ', ''),
('T5', '2021-07-27', '11005', 'ตกลง', ''),
('T6', '2021-07-27', '11006', 'ตกลง', ''),
('T7', '2021-07-27', '11007', 'ตกลง', ''),
('T8', '2021-07-27', '11008', 'ตกลง', ''),
('T9', '2021-07-27', '11009', 'ตกลง', '');

-- --------------------------------------------------------

--
-- Structure for view `Q1`
--
DROP TABLE IF EXISTS `Q1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q1`  AS  select `employee`.`EMP_ID` AS `EMP_ID`,`employee`.`EMP_Name` AS `EMP_Name`,`employee`.`EMP_Role` AS `EMP_Role`,`employee`.`EMP_Pass` AS `EMP_Pass` from `employee` ;

-- --------------------------------------------------------

--
-- Structure for view `Q2`
--
DROP TABLE IF EXISTS `Q2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q2`  AS  select `employee`.`EMP_Role` AS `ตำแหน่ง`,count(`employee`.`EMP_Role`) AS `จำนวนพนักงาน` from `employee` group by `employee`.`EMP_Role` ;

-- --------------------------------------------------------

--
-- Structure for view `Q3`
--
DROP TABLE IF EXISTS `Q3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q3`  AS  select `customer`.`CUS_ID` AS `รหัสลูกค้า`,`customer`.`CUS_Name` AS `ชื่อลูกค้า`,`customer`.`CUS_Add` AS `ที่อยู่`,`customer`.`CUS_Tel` AS `เบอร์โทรศัพท์` from `customer` ;

-- --------------------------------------------------------

--
-- Structure for view `Q4`
--
DROP TABLE IF EXISTS `Q4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q4`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,max((`priceproduct`.`PRI_Price` + `priceproduct`.`PRI_SCEEN`)) AS `ราคาต่อชิ้น`,(150 * max((`priceproduct`.`PRI_Price` + `priceproduct`.`PRI_SCEEN`))) AS `ราคารวม` from (`product` join `priceproduct` on((`priceproduct`.`PRO_ID` = `product`.`PRO_ID`))) where ((`product`.`PRO_ID` = 'PR001') and (`priceproduct`.`PRI_Qty` >= 150)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q6`
--
DROP TABLE IF EXISTS `Q6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q6`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,`product`.`PRO_Category` AS `หมวด`,`colour`.`COLOUR_NAME` AS `สี`,`stockofproduct`.`STOCK_MIN` AS `จำนวนขั้นต่ำ`,count(`Chart`.`CHA_DATE`) AS `จำนวนครั้งที่มีการซื้อ`,ifnull(sum(`Chart`.`CHA_AM`),0) AS `จำนวนรวม`,if(((`stockofproduct`.`STOCK_MIN` - ifnull(sum(`Chart`.`CHA_AM`),0)) < 0),0,(`stockofproduct`.`STOCK_MIN` - ifnull(sum(`Chart`.`CHA_AM`),0))) AS `จำนวนที่ต้องสั่งเพิ่ม` from (((`product` join `stockofproduct` on((`product`.`PRO_ID` = `stockofproduct`.`PRO_ID`))) join `colour` on((`stockofproduct`.`COLOUR_ID` = `colour`.`COLOUR_ID`))) left join `Chart` on((`stockofproduct`.`STOCK_ID` = `Chart`.`STOCK_ID`))) group by `stockofproduct`.`STOCK_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q7`
--
DROP TABLE IF EXISTS `Q7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q7`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,`product`.`PRO_Category` AS `หมวดสินค้า`,count(`stockofproduct`.`COLOUR_ID`) AS `จำนวนสีที่มีให้เลือก`,sum(ifnull(`A`.`amount`,0)) AS `จำนวนที่มีรวม` from ((`stockofproduct` left join (select `Chart`.`STOCK_ID` AS `STOCK_ID`,sum(`Chart`.`CHA_AM`) AS `amount` from (`Chart` join `stockofproduct` on((`stockofproduct`.`STOCK_ID` = `Chart`.`STOCK_ID`))) group by `stockofproduct`.`STOCK_ID`) `A` on((`A`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) join `product` on((`stockofproduct`.`PRO_ID` = `product`.`PRO_ID`))) group by `stockofproduct`.`PRO_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q8`
--
DROP TABLE IF EXISTS `Q8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q8`  AS  select `stockofproduct`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,`colour`.`COLOUR_NAME` AS `สี`,`stockofproduct`.`STOCK_MIN` AS `จำนวนขั้นต่ำ`,ifnull(sum(`Chart`.`CHA_AM`),0) AS `จำนวนที่มีรวม`,if(((`stockofproduct`.`STOCK_MIN` - ifnull(sum(`Chart`.`CHA_AM`),0)) < 0),0,(`stockofproduct`.`STOCK_MIN` - ifnull(sum(`Chart`.`CHA_AM`),0))) AS `จำนวนที่ต้องสั่งเพิ่ม` from (((`stockofproduct` left join `Chart` on((`stockofproduct`.`STOCK_ID` = `Chart`.`STOCK_ID`))) join `product` on((`stockofproduct`.`PRO_ID` = `product`.`PRO_ID`))) join `colour` on((`stockofproduct`.`COLOUR_ID` = `colour`.`COLOUR_ID`))) group by `stockofproduct`.`STOCK_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q9`
--
DROP TABLE IF EXISTS `Q9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q9`  AS  select `DetailQuotation`.`Q_ID` AS `Q_ID`,`product`.`PRO_ID` AS `PRO_ID`,`colour`.`COLOUR_NAME` AS `COLOUR`,`DetailQuotation`.`DQ_QTY` AS `Q_QTY`,max((`priceproduct`.`PRI_Price` + (`priceproduct`.`PRI_SCEEN` * (`DetailQuotation`.`DQ_CUINT` - 1)))) AS `PRICE_UNIT`,(max((`priceproduct`.`PRI_Price` + (`priceproduct`.`PRI_SCEEN` * (`DetailQuotation`.`DQ_CUINT` - 1)))) * `DetailQuotation`.`DQ_QTY`) AS `PRICE_SUM` from ((((`DetailQuotation` join `stockofproduct` on((`stockofproduct`.`STOCK_ID` = `DetailQuotation`.`STOCK_ID`))) join `colour` on((`stockofproduct`.`COLOUR_ID` = `colour`.`COLOUR_ID`))) join `product` on((`stockofproduct`.`PRO_ID` = `product`.`PRO_ID`))) join `priceproduct` on((`stockofproduct`.`PRO_ID` = `priceproduct`.`PRO_ID`))) where ((`priceproduct`.`PRI_Qty` >= `DetailQuotation`.`DQ_QTY`) or (`priceproduct`.`PRI_Qty` > 800)) group by `DetailQuotation`.`DQ_ID`,`colour`.`COLOUR_ID` order by `DetailQuotation`.`Q_ID`,`DetailQuotation`.`DQ_NUMBER` ;

-- --------------------------------------------------------

--
-- Structure for view `Q10`
--
DROP TABLE IF EXISTS `Q10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q10`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,`colour`.`COLOUR_NAME` AS `สี`,if(isnull(`B`.`C`),0,`B`.`C`) AS `จำนวนสินค้าในใบเสนอราคา`,sum(ifnull(`A`.`amount`,0)) AS `จำนวนที่มี` from ((((`stockofproduct` left join (select `Chart`.`STOCK_ID` AS `STOCK_ID`,sum(`Chart`.`CHA_AM`) AS `amount` from (`Chart` join `stockofproduct` on((`stockofproduct`.`STOCK_ID` = `Chart`.`STOCK_ID`))) group by `stockofproduct`.`STOCK_ID`) `A` on((`A`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) left join (select `DetailQuotation`.`STOCK_ID` AS `STOCK_ID`,sum(`DetailQuotation`.`DQ_QTY`) AS `C` from `DetailQuotation` group by `DetailQuotation`.`STOCK_ID`) `B` on((`stockofproduct`.`STOCK_ID` = `B`.`STOCK_ID`))) join `product` on((`stockofproduct`.`PRO_ID` = `product`.`PRO_ID`))) join `colour` on((`stockofproduct`.`COLOUR_ID` = `colour`.`COLOUR_ID`))) group by `stockofproduct`.`STOCK_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q11`
--
DROP TABLE IF EXISTS `Q11`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q11`  AS  select `quotation`.`Q_ID` AS `Q_ID`,`quotation`.`Q_DATE` AS `Q_DATE`,`customer`.`CUS_Name` AS `CUS_Name`,sum(`Q9`.`PRICE_SUM`) AS `SUM_PRICEQUO`,round(((sum(`Q9`.`PRICE_SUM`) * 0.07) + sum(`Q9`.`PRICE_SUM`)),2) AS `ADDVAT`,round(((((sum(`Q9`.`PRICE_SUM`) * 0.07) + sum(`Q9`.`PRICE_SUM`)) * `quotation`.`Q_deposit`) / 100),2) AS `Desposit` from ((`quotation` join `customer` on((`quotation`.`CUS_ID` = `customer`.`CUS_ID`))) join `Q9` on((`quotation`.`Q_ID` = `Q9`.`Q_ID`))) group by `quotation`.`Q_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q12`
--
DROP TABLE IF EXISTS `Q12`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q12`  AS  select `employee`.`EMP_Name` AS `ชื่อพนักงาน`,count(`quotation`.`EMP_ID`) AS `จำนวนใบเสนอราคา`,sum(`Q11`.`SUM_PRICEQUO`) AS `ยอดรวม` from ((`quotation` join `employee` on((`quotation`.`EMP_ID` = `employee`.`EMP_ID`))) join `Q11` on(((`quotation`.`Q_ID` = `Q11`.`Q_ID`) and (`quotation`.`Q_DATE` = `Q11`.`Q_DATE`)))) group by `quotation`.`EMP_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q13`
--
DROP TABLE IF EXISTS `Q13`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q13`  AS  select `track`.`T_STATUS` AS `สถานะติดตาม`,count(`track`.`Q_ID`) AS `จำนวน` from (`track` join (select `track`.`Q_ID` AS `Q_ID`,max(`track`.`T_DATE`) AS `Date` from `track` group by `track`.`Q_ID`) `t` on(((`track`.`Q_ID` = `t`.`Q_ID`) and (`track`.`T_DATE` = `t`.`Date`)))) group by `track`.`T_STATUS` ;

-- --------------------------------------------------------

--
-- Structure for view `Q14`
--
DROP TABLE IF EXISTS `Q14`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q14`  AS  select `track`.`Q_ID` AS `รหัสใบเสนอราคา`,`track`.`T_DATE` AS `วันที่`,`track`.`T_STATUS` AS `สถานะการติดตาม` from `track` order by `track`.`Q_ID`,`track`.`T_DATE` ;

-- --------------------------------------------------------

--
-- Structure for view `Q15`
--
DROP TABLE IF EXISTS `Q15`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q15`  AS  select `track`.`Q_ID` AS `รหัสใบเสนอราคา`,`t`.`Date` AS `วันที่`,`track`.`T_STATUS` AS `สถานะการติดตาม` from (`track` join (select `track`.`Q_ID` AS `Q_ID`,max(`track`.`T_DATE`) AS `Date` from `track` group by `track`.`Q_ID`) `t` on(((`track`.`Q_ID` = `t`.`Q_ID`) and (`track`.`T_DATE` = `t`.`Date`)))) order by `track`.`Q_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q16`
--
DROP TABLE IF EXISTS `Q16`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q16`  AS  select `quotation`.`Q_ID` AS `รหัสใบเสนอราคา`,`Q11`.`Desposit` AS `ยอดชำระ`,((`Q11`.`Desposit` - `Q11`.`ADDVAT`) * -(1)) AS `ยอดค้างชำระ` from (`quotation` join `Q11` on((`Q11`.`Q_ID` = `quotation`.`Q_ID`))) where ((`quotation`.`PDO_PAY` = 'ชำระแล้ว') or (`quotation`.`PDO_PAY` = 'เครดิต')) ;

-- --------------------------------------------------------

--
-- Structure for view `Q17`
--
DROP TABLE IF EXISTS `Q17`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q17`  AS  select `quotation`.`Q_ID` AS `รหัสใบเสนอราคา`,`stockofproduct`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,`colour`.`COLOUR_NAME` AS `สี`,`DetailQuotation`.`DQ_QTY` AS `จำนวนที่สั่ง`,ceiling((`DetailQuotation`.`DQ_QTY` + (`DetailQuotation`.`DQ_QTY` * (`quotation`.`PDO_M` / 100)))) AS `จำนวนที่ผลิต` from ((((`quotation` join `DetailQuotation` on((`quotation`.`Q_ID` = `DetailQuotation`.`Q_ID`))) join `stockofproduct` on((`DetailQuotation`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) join `colour` on((`stockofproduct`.`COLOUR_ID` = `colour`.`COLOUR_ID`))) join `product` on((`stockofproduct`.`PRO_ID` = `product`.`PRO_ID`))) where (`quotation`.`PDO_M` >= 0) order by `DetailQuotation`.`Q_ID`,`DetailQuotation`.`DQ_NUMBER` ;

-- --------------------------------------------------------

--
-- Structure for view `Q18`
--
DROP TABLE IF EXISTS `Q18`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q18`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,`colour`.`COLOUR_NAME` AS `สี`,(ifnull(sum(`QTY`.`QTYstock`),0) - ifnull(`BBB`.`R`,0)) AS `จำนวนคงเหลือ`,ifnull(`QQQ`.`AM`,0) AS `อยู่ระหว่างสั่งซื้อ`,ifnull(`BBB`.`R`,0) AS `จำนวนที่ผลิต` from (((((`stockofproduct` join `product` on((`stockofproduct`.`PRO_ID` = `product`.`PRO_ID`))) join `colour` on((`stockofproduct`.`COLOUR_ID` = `colour`.`COLOUR_ID`))) left join (select `Chart`.`STOCK_ID` AS `STOCK_ID`,`Chart`.`CHA_AM` AS `QTYstock` from `Chart` where (`Chart`.`Chart_STATUS` = 'รับของแล้ว')) `QTY` on((`QTY`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) left join (select `Chart`.`STOCK_ID` AS `STOCK_ID`,`Chart`.`CHA_AM` AS `AM` from `Chart` where (`Chart`.`Chart_STATUS` = 'รอจัดส่ง')) `QQQ` on((`QQQ`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) left join (select `stockofproduct`.`STOCK_ID` AS `STOCK_ID`,sum(`requisition`.`R_Quantity`) AS `R` from ((`stockofproduct` left join `DetailQuotation` on((`DetailQuotation`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) left join `requisition` on((`requisition`.`DQ_ID` = `DetailQuotation`.`DQ_ID`))) group by `stockofproduct`.`STOCK_ID`) `BBB` on((`BBB`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) group by `stockofproduct`.`PRO_ID`,`product`.`PRO_Name`,`colour`.`COLOUR_NAME`,`QQQ`.`AM`,`BBB`.`R` ;

-- --------------------------------------------------------

--
-- Structure for view `Q19`
--
DROP TABLE IF EXISTS `Q19`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q19`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,`colour`.`COLOUR_NAME` AS `สี`,if((`stockofproduct`.`STOCK_MIN` < (ifnull(`QTY`.`QTYstock`,0) - ifnull(`W`.`GG`,0))),0,(`stockofproduct`.`STOCK_MIN` - (ifnull(`QTY`.`QTYstock`,0) - ifnull(`W`.`GG`,0)))) AS `จำนวนที่ต้องสั่งเพิ่ม` from (((((`stockofproduct` join `product` on((`stockofproduct`.`PRO_ID` = `product`.`PRO_ID`))) join `colour` on((`stockofproduct`.`COLOUR_ID` = `colour`.`COLOUR_ID`))) left join (select `Chart`.`STOCK_ID` AS `STOCK_ID`,sum(`Chart`.`CHA_AM`) AS `QTYstock` from `Chart` group by `Chart`.`STOCK_ID`) `QTY` on((`QTY`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) left join (select `stockofproduct`.`STOCK_ID` AS `STOCK_ID`,sum(`requisition`.`R_Quantity`) AS `R` from ((`stockofproduct` left join `DetailQuotation` on((`DetailQuotation`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) left join `requisition` on((`requisition`.`DQ_ID` = `DetailQuotation`.`DQ_ID`))) group by `stockofproduct`.`STOCK_ID`) `BBB` on((`BBB`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) left join (select `stockofproduct`.`STOCK_ID` AS `STOCK_ID`,(sum(`DetailQuotation`.`DQ_QTY`) + sum(ceiling(((`DetailQuotation`.`DQ_QTY` * `quotation`.`PDO_M`) / 100)))) AS `GG` from ((`DetailQuotation` join `stockofproduct` on((`stockofproduct`.`STOCK_ID` = `DetailQuotation`.`STOCK_ID`))) join `quotation` on((`DetailQuotation`.`Q_ID` = `quotation`.`Q_ID`))) where (`quotation`.`PDO_M` > 0) group by `stockofproduct`.`STOCK_ID`) `W` on((`W`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) group by `product`.`PRO_ID`,`colour`.`COLOUR_NAME`,`product`.`PRO_Name`,`stockofproduct`.`STOCK_MIN`,`QTY`.`QTYstock`,`BBB`.`R`,`W`.`GG` ;

-- --------------------------------------------------------

--
-- Structure for view `Q20`
--
DROP TABLE IF EXISTS `Q20`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q20`  AS  select `payments`.`Q_ID` AS `รหัสใบเสนอราคา`,`payments`.`PM_DATE` AS `วันที่`,round(((`Q11`.`ADDVAT` * `payments`.`PM_PAY`) / 100),2) AS `ยอดชำระเงิน` from (`payments` join `Q11` on((`payments`.`Q_ID` = `Q11`.`Q_ID`))) order by `payments`.`Q_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q21`
--
DROP TABLE IF EXISTS `Q21`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q21`  AS  select `stockofproduct`.`PRO_ID` AS `รหัสสินค้า`,`QQ`.`NAME` AS `ชื่อสินค้า`,sum(`DetailManufacture`.`DM_Quantity`) AS `จำนวนที่ผลิตเสร็จ`,ceiling(`QQ`.`A`) AS `จำนวนที่จัดส่ง` from ((((`manufacture` join `DetailManufacture` on((`manufacture`.`MF_ID` = `DetailManufacture`.`MF_ID`))) join `DetailQuotation` on((`DetailManufacture`.`DQ_ID` = `DetailQuotation`.`DQ_ID`))) join `stockofproduct` on((`stockofproduct`.`STOCK_ID` = `DetailQuotation`.`STOCK_ID`))) join (select `stockofproduct`.`PRO_ID` AS `PRO_ID`,`product`.`PRO_Name` AS `NAME`,sum((`DetailQuotation`.`DQ_QTY` + (`DetailQuotation`.`DQ_QTY` * (`quotation`.`PDO_M` / 100)))) AS `A` from (((`quotation` join `DetailQuotation` on((`quotation`.`Q_ID` = `DetailQuotation`.`Q_ID`))) join `stockofproduct` on((`stockofproduct`.`STOCK_ID` = `DetailQuotation`.`STOCK_ID`))) join `product` on((`stockofproduct`.`PRO_ID` = `product`.`PRO_ID`))) where (`quotation`.`PDO_DELIVERY` = 'จัดส่งแล้ว') group by `stockofproduct`.`PRO_ID`) `QQ` on((`stockofproduct`.`PRO_ID` = `QQ`.`PRO_ID`))) group by `stockofproduct`.`PRO_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q22`
--
DROP TABLE IF EXISTS `Q22`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q22`  AS  select `Q11`.`Q_ID` AS `Q_ID`,`Q11`.`ADDVAT` AS `ADDVAT`,round(ifnull(sum(((`Q11`.`ADDVAT` * `payments`.`PM_PAY`) / 100)),0),2) AS `PAID`,(`Q11`.`ADDVAT` - round(ifnull(sum(((`Q11`.`ADDVAT` * `payments`.`PM_PAY`) / 100)),0),2)) AS `UNPAID` from ((`Q11` join `quotation` on(((`Q11`.`Q_ID` = `quotation`.`Q_ID`) and (`Q11`.`Q_DATE` = `quotation`.`Q_DATE`)))) left join `payments` on((`payments`.`Q_ID` = `quotation`.`Q_ID`))) where (`quotation`.`Manager_STATUS` = 'อนุมัติ') group by `Q11`.`Q_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q23`
--
DROP TABLE IF EXISTS `Q23`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q23`  AS  select `Q9`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,`A`.`QTY` AS `จำนวนขาย`,round(((`A`.`QTY` * `quotation`.`PDO_M`) / 100),0) AS `จำนวนเผื่อ`,round((sum(`Q9`.`PRICE_SUM`) + ((sum(`Q9`.`PRICE_SUM`) * 7) / 100)),2) AS `ราคาขายรวม` from ((((`Q9` join `Q22` on((`Q9`.`Q_ID` = `Q22`.`Q_ID`))) join `product` on((`Q9`.`PRO_ID` = `product`.`PRO_ID`))) join `quotation` on((`quotation`.`Q_ID` = `Q9`.`Q_ID`))) join (select `stockofproduct`.`PRO_ID` AS `PRO_ID`,sum(`DetailQuotation`.`DQ_QTY`) AS `QTY` from ((`stockofproduct` left join `DetailQuotation` on((`DetailQuotation`.`STOCK_ID` = `stockofproduct`.`STOCK_ID`))) left join `Q22` on((`Q22`.`Q_ID` = `DetailQuotation`.`Q_ID`))) where (`Q22`.`UNPAID` = 0) group by `stockofproduct`.`PRO_ID`) `A` on((`A`.`PRO_ID` = `Q9`.`PRO_ID`))) where (`Q22`.`UNPAID` = 0) group by `Q9`.`PRO_ID`,`quotation`.`PDO_M` ;

-- --------------------------------------------------------

--
-- Structure for view `Q501`
--
DROP TABLE IF EXISTS `Q501`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q501`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,max(`priceproduct`.`PRI_Price`) AS `ราคาต่อชิ้น`,(max(`priceproduct`.`PRI_Price`) * 50) AS `ราคารวม` from (`product` join `priceproduct` on((`priceproduct`.`PRO_ID` = `product`.`PRO_ID`))) where (`priceproduct`.`PRI_Qty` >= 50) group by `product`.`PRO_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q502`
--
DROP TABLE IF EXISTS `Q502`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q502`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,max((`priceproduct`.`PRI_Price` + (`priceproduct`.`PRI_SCEEN` * 2))) AS `ราคาต่อชิ้น`,(max((`priceproduct`.`PRI_Price` + (`priceproduct`.`PRI_SCEEN` * 2))) * 50) AS `ราคารวม` from (`product` join `priceproduct` on((`priceproduct`.`PRO_ID` = `product`.`PRO_ID`))) where (`priceproduct`.`PRI_Qty` >= 50) group by `product`.`PRO_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q503`
--
DROP TABLE IF EXISTS `Q503`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q503`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,max((`priceproduct`.`PRI_Price` + (`priceproduct`.`PRI_SCEEN` * 3))) AS `ราคาต่อชิ้น`,(max((`priceproduct`.`PRI_Price` + (`priceproduct`.`PRI_SCEEN` * 3))) * 400) AS `ราคารวม` from (`product` join `priceproduct` on((`priceproduct`.`PRO_ID` = `product`.`PRO_ID`))) where (`priceproduct`.`PRI_Qty` >= 400) group by `product`.`PRO_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q504`
--
DROP TABLE IF EXISTS `Q504`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q504`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,max(`priceproduct`.`PRI_Price`) AS `ราคาต่อชิ้น`,(max(`priceproduct`.`PRI_Price`) * 1000) AS `ราคารวม` from (`product` join `priceproduct` on((`priceproduct`.`PRO_ID` = `product`.`PRO_ID`))) where (`priceproduct`.`PRI_Qty` > 800) group by `product`.`PRO_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q505`
--
DROP TABLE IF EXISTS `Q505`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_022`@`%` SQL SECURITY DEFINER VIEW `Q505`  AS  select `product`.`PRO_ID` AS `รหัสสินค้า`,`product`.`PRO_Name` AS `ชื่อสินค้า`,max((`priceproduct`.`PRI_Price` + (`priceproduct`.`PRI_SCEEN` * 2))) AS `ราคาต่อชิ้น`,(max((`priceproduct`.`PRI_Price` + (`priceproduct`.`PRI_SCEEN` * 2))) * 1000) AS `ราคารวม` from (`product` join `priceproduct` on((`priceproduct`.`PRO_ID` = `product`.`PRO_ID`))) where (`priceproduct`.`PRI_Qty` > 800) group by `product`.`PRO_ID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Chart`
--
ALTER TABLE `Chart`
  ADD PRIMARY KEY (`CHA_ID`),
  ADD KEY `STOCK_ID` (`STOCK_ID`);

--
-- Indexes for table `colour`
--
ALTER TABLE `colour`
  ADD PRIMARY KEY (`COLOUR_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUS_ID`);

--
-- Indexes for table `DetailManufacture`
--
ALTER TABLE `DetailManufacture`
  ADD PRIMARY KEY (`DM_ID`),
  ADD KEY `DQ_ID` (`DQ_ID`),
  ADD KEY `MF_ID` (`MF_ID`);

--
-- Indexes for table `DetailQuotation`
--
ALTER TABLE `DetailQuotation`
  ADD PRIMARY KEY (`DQ_ID`),
  ADD KEY `STOCK_ID` (`STOCK_ID`),
  ADD KEY `Q_ID` (`Q_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `manufacture`
--
ALTER TABLE `manufacture`
  ADD PRIMARY KEY (`MF_ID`),
  ADD KEY `Q_ID` (`Q_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`PM_ID`),
  ADD KEY `Q_ID` (`Q_ID`);

--
-- Indexes for table `priceproduct`
--
ALTER TABLE `priceproduct`
  ADD PRIMARY KEY (`PRI_ID`),
  ADD KEY `PRO_ID` (`PRO_ID`),
  ADD KEY `PRO_ID_2` (`PRO_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRO_ID`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`Q_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`,`CUS_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`),
  ADD KEY `Manager_ID` (`Manager_ID`);

--
-- Indexes for table `requisition`
--
ALTER TABLE `requisition`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `STOCK_ID` (`DQ_ID`);

--
-- Indexes for table `stockofproduct`
--
ALTER TABLE `stockofproduct`
  ADD PRIMARY KEY (`STOCK_ID`),
  ADD KEY `COLOUR_ID` (`COLOUR_ID`),
  ADD KEY `PRO_ID` (`PRO_ID`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`T_ID`),
  ADD KEY `Q_ID` (`Q_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `priceproduct`
--
ALTER TABLE `priceproduct`
  MODIFY `PRI_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Chart`
--
ALTER TABLE `Chart`
  ADD CONSTRAINT `Chart_ibfk_1` FOREIGN KEY (`STOCK_ID`) REFERENCES `stockofproduct` (`STOCK_ID`);

--
-- Constraints for table `DetailManufacture`
--
ALTER TABLE `DetailManufacture`
  ADD CONSTRAINT `DetailManufacture_ibfk_1` FOREIGN KEY (`DQ_ID`) REFERENCES `DetailQuotation` (`DQ_ID`),
  ADD CONSTRAINT `DetailManufacture_ibfk_2` FOREIGN KEY (`MF_ID`) REFERENCES `manufacture` (`MF_ID`);

--
-- Constraints for table `DetailQuotation`
--
ALTER TABLE `DetailQuotation`
  ADD CONSTRAINT `DetailQuotation_ibfk_1` FOREIGN KEY (`Q_ID`) REFERENCES `quotation` (`Q_ID`),
  ADD CONSTRAINT `DetailQuotation_ibfk_2` FOREIGN KEY (`STOCK_ID`) REFERENCES `stockofproduct` (`STOCK_ID`);

--
-- Constraints for table `manufacture`
--
ALTER TABLE `manufacture`
  ADD CONSTRAINT `manufacture_ibfk_1` FOREIGN KEY (`Q_ID`) REFERENCES `quotation` (`Q_ID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`Q_ID`) REFERENCES `quotation` (`Q_ID`);

--
-- Constraints for table `priceproduct`
--
ALTER TABLE `priceproduct`
  ADD CONSTRAINT `priceproduct_ibfk_1` FOREIGN KEY (`PRO_ID`) REFERENCES `product` (`PRO_ID`);

--
-- Constraints for table `quotation`
--
ALTER TABLE `quotation`
  ADD CONSTRAINT `quotation_ibfk_1` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`),
  ADD CONSTRAINT `quotation_ibfk_2` FOREIGN KEY (`EMP_ID`) REFERENCES `employee` (`EMP_ID`),
  ADD CONSTRAINT `quotation_ibfk_3` FOREIGN KEY (`Manager_ID`) REFERENCES `employee` (`EMP_ID`);

--
-- Constraints for table `requisition`
--
ALTER TABLE `requisition`
  ADD CONSTRAINT `requisition_ibfk_1` FOREIGN KEY (`DQ_ID`) REFERENCES `DetailQuotation` (`DQ_ID`);

--
-- Constraints for table `stockofproduct`
--
ALTER TABLE `stockofproduct`
  ADD CONSTRAINT `stockofproduct_ibfk_1` FOREIGN KEY (`COLOUR_ID`) REFERENCES `colour` (`COLOUR_ID`),
  ADD CONSTRAINT `stockofproduct_ibfk_2` FOREIGN KEY (`PRO_ID`) REFERENCES `product` (`PRO_ID`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`Q_ID`) REFERENCES `quotation` (`Q_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

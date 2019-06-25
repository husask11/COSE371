-- MySQL dump 10.15  Distrib 10.0.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db2017320140
-- ------------------------------------------------------
-- Server version	10.0.38-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Ability`
--

DROP TABLE IF EXISTS `Ability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ability` (
  `ability_no` int(11) NOT NULL AUTO_INCREMENT,
  `ability_name` varchar(40) NOT NULL,
  `ability_info` varchar(256) NOT NULL,
  PRIMARY KEY (`ability_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ability`
--

LOCK TABLES `Ability` WRITE;
/*!40000 ALTER TABLE `Ability` DISABLE KEYS */;
INSERT INTO `Ability` VALUES (1,'Breaching Hammer','파괴할 수 있는 면을 돌파하는데 사용하는 파쇄용 망치입니다.'),(2,'EMP Grenade','범위 내의 모든 전자 기기를 무력화 시키는 EMP 수류탄을 사용합니다.'),(3,'Remote Gas Grenade','원격으로 폭발시킬 수 있는 독가스 폭탄을 설치합니다.'),(4,'Signal Disruptor','일정 범위 내의 원격 폭발형 도구 또는 드론의 신호를 방해합니다.'),(5,'Breaching Round','표면에 박혀 자동으로 폭발하는 파괴탄을 발사합니다.'),(6,'Exothermic Charge','강화된 벽을 파괴할 수 있는 발열성 폭약을 설치합니다.'),(7,'Armor Panel','일반 바리케이드보다 단단한 방탄 바리케이드를 설치합니다.'),(8,'Cardiac Sensor','장애물에 관계없이 근거리 내의 심장 박동을 감지합니다.'),(9,'Shock Drone','함정을 무력화하거나 적에게 부상을 입히는 감전 드론 두 대를 사용합니다. 첫 감전 드론은 준비 단계에 전개합니다.'),(10,'Extendable Shield','서 있는 상태에서도 온몸이 보호되도록 방패를 확장할 수 있습니다.'),(11,'Stim Pistol','원거리에서 자신이나 팀원을 소생시킬 수 있는 피하 주사기를 발사합니다. 일시적으로 보너스를 부여할 수 있습니다.'),(12,'Armor Pack','아군이 무장할 수 있는 방탄판으로 가득 찬 보급 가방을 바닥에 내려놓습니다.'),(13,'Flip Sight','연기 속에서도 장거리 표적의 윤곽을 표시하는 정교한 이미지 센서가 탑재된 확대경을 조절하는 장치입니다.'),(14,'Cluster Charge','부착 시 벽을 관통하여 반대편에 소형 수류탄들을 방출하는 집속탄을 사용합니다.'),(15,'Entry Denial Device','창문틀과 문틀에 부비트랩을 설치합니다.'),(16,'Mounted LMG','전방으로부터 머리를 방어하는 방탄 방패가 장착된 탑승형 LMG를 설치합니다.'),(17,'Flash Shield','사격 방패에 부착된 섬광 장치를 격발하여 일시적으로 적의 시야를 빼앗을 수 있습니다.'),(18,'Electronics Detector','벽 등의 장애물을 투과하여 범위 내 모든 전자기기를 감지할 수 있는 전자기기 탐지기를 사용합니다.'),(19,'Active Defense','선제 방어 시스템을 사용하여 폭발하기 전에 수류탄을 요격합니다.'),(20,'Shock Wire','다른 도구에 전기를 통하게 하고 접촉한 모든 대상에 피해를 주는 전압 증폭기를 설치합니다.');
/*!40000 ALTER TABLE `Ability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Army`
--

DROP TABLE IF EXISTS `Army`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Army` (
  `army_no` int(11) NOT NULL AUTO_INCREMENT,
  `army_name` varchar(40) NOT NULL,
  `country` varchar(20) NOT NULL,
  `army_info` varchar(256) NOT NULL,
  PRIMARY KEY (`army_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Army`
--

LOCK TABLES `Army` WRITE;
/*!40000 ALTER TABLE `Army` DISABLE KEYS */;
INSERT INTO `Army` VALUES (1,'SAS','England','영국 육군 소속의 특수부대 SAS'),(2,'SWAT','USA','미국 연방수사국 소속 특수부대 FBI SWAT'),(3,'GIGN','France','프랑스 국가 헌병대 소속 개입부대 GIGN'),(4,'SPETSNAZ','Russia','러시아의 특수부대 스페츠나츠'),(5,'GSG-9','German','독일 연방경찰청 소속 특수부대 GSG-9');
/*!40000 ALTER TABLE `Army` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Evaluation`
--

DROP TABLE IF EXISTS `Evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Evaluation` (
  `eval_no` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `op_no` int(11) DEFAULT NULL,
  `gun_no` int(11) DEFAULT NULL,
  `eval_text` varchar(1000) NOT NULL,
  `added_time` datetime NOT NULL,
  PRIMARY KEY (`eval_no`),
  KEY `op_no` (`op_no`),
  KEY `gun_no` (`gun_no`),
  CONSTRAINT `Evaluation_ibfk_1` FOREIGN KEY (`op_no`) REFERENCES `Operator` (`op_no`),
  CONSTRAINT `Evaluation_ibfk_2` FOREIGN KEY (`gun_no`) REFERENCES `Gun` (`gun_no`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evaluation`
--

LOCK TABLES `Evaluation` WRITE;
/*!40000 ALTER TABLE `Evaluation` DISABLE KEYS */;
INSERT INTO `Evaluation` VALUES (22,'아이큐는 AUG가 그나마 좋음',18,21,'DPS는 돌격소총 중에서는 조금 떨어지는 편으로 연사력과 피해량 모두 평균보다 낮다. 아이큐는 피해량이 6이나 더 높은 552 COMMANDO를 장비할 수 있고 각진 손잡이가 달리지도 않아서 러쉬에도 적합하지 않기에 잘 선택되지 않는다. 또한 인게임에서도 개머리판을 뺨에 대고 있는듯한 기묘한 모델링 탓에 레일이 상당히 높은 위치에 달려 있어서 ACOG 조준경을 달면 오른쪽 화면의 3분의 2 가량이 총기로 인해 가려지는 불편함 때문에 기피되기도 한다.\r\n\r\n이 무기가 552 COMMANDO와 차별될 수 있는 장점은 안정적인 반동으로, 552와 평균적인 반동은 크게 차이가 없지만 좌우로 탄이 조금씩 새고 튀는 듯한 반동을 가진 552와 달리 AUG는 매우 안정적이고 균일한 반동을 지니고 있다. 여기에 연사력도 미비하지만 552에 비해 30이 높으므로 헤드온 교전 시 헤드샷 기회를 늘리기 위해 AUG를 사용하기도 한다. 따라서 러쉬보다는 원거리 교전 및 일반적인 압박형 전투에 특화된 무기.\r\n','2019-05-21 13:50:05'),(23,'연사력이 너무 느리다..',8,10,'높은 피해량과 매우 약한 반동이 강점인 기관단총. 하지만 연사력이 심각하게 낮고 장탄수가 적어 로밍을 통해 적을 기습하는 식으로 운용해야 진가를 발휘하는 무기다.\r\n\r\nACOG 조준경을 제외한 모든 부착물을 장착할 수 있어서 선택폭이 매우 넓으며, 수직 반동이 거의 없는 수준이고 연장 총열을 부착하면 15m 까지의 피해량이 40으로 증가하기 때문에 펄스의 강점인 아웃플레이의 화력을 위해 주로 연장 총열을 부착해 운용한다.\r\n\r\n연사력이 매우 낮아 근접전에선 불리하기에 매우 적은 반동을 이용해 헤드샷을 노리거나 기습하는 플레이에 익숙해져야 한다. 근접전에서 정 머리를 못 맞히겠다면 산탄총을 채용하거나 M45 권총으로 빠르게 다운시키자.\r\n\r\n참고로 사격 시 장전손잡이가 움직이고 탄을 모두 소모할 시 장전손잡이가 자동으로 뒤쪽 홈에 걸리는데, 실제로 UMP는 장전손잡이가 노리쇠와 분리되어 있어 사격 시 움직이지 않으며 전탄 소모 후 재장전할 때에도 MP5처럼 직접 뒤로 손잡이를 당겨 걸어야 한다.걍 쏠때마다 눈물나는 총에 대한 작은 버프라고 생각하자','2019-05-21 13:52:39'),(24,'ACOG 돌려줘..',20,26,'적당한 반동, 괜찮은 피해량, 높은 연사력까지 갖춘 매우 우수한 성능의 기관단총. 특징으로 기계식 조준기의 가늠자가 얇아 시야를 많이 가리지 않기에 광학 조준경 없이도 조준 사격이 용이하다. 강화벽을 방어하는 특능과 사기적인 총의 조합으로 밴딧을 필수 오퍼로 만든 이유 중 하나이다. 초탄 이후 반동 회복에 걸리는 시간이 가장 짧은 총 중 하나여서 원거리에서 점사로 헤드샷을 노리기도 한다.\r\n\r\n블러드 오키드 시즌 이전까지는 ACOG 조준경을 부착할 수 있었으나, 이후 밸런스 문제로 삭제되었다. \r\n사진상에서 장전손잡이가 반쯤 당겨져 있다\r\n\r\n모델이 된 총기는 H&K사의 MP7A1. 모델 상으로는 40발 전용 탄창을 사용하는 모습이나 게임 상에서는 30발이다.','2019-05-21 13:55:11'),(25,'반동이 없다',19,24,'방어팀이 장비할 수 있는 돌격소총 중 하나로 공격팀의 돌격소총보다는 성능이 떨어지지만 총기 자체가 돌격소총으로 분류되기 때문에 피해량, 사거리와 관통력부터 다른 기관단총을 압도해 방어팀의 자동화기 주무장 중 DPS 1위를 차지하고 있다.\r\n\r\n단점이라면 조준 속도가 공격팀의 돌격소총과 동일하고 각진 손잡이를 부착할 수 없기 때문에 반응이 느릴 수 있어 미리 조준하고 진입하는 운용법을 익혀야 한다. 반동은 총기 성능에 비해 매우 안정적인 편이니 포구 제퇴기나 소염기 모두 좋은 선택이지만 특이하게 연장 총열이 15m까지의 피해량을 3 감소시킨다.\r\n\r\n블러드 오키드 시즌 이전까지는 ACOG 조준경을 부착할 수 있었으나, 이후 밸런스 문제로 삭제되었다.','2019-05-21 13:57:16'),(26,'테스트용',10,27,'테스트~~~~ 시~작~~~~~ 합니다~~~~~~~!!!!','2019-05-21 14:50:19'),(28,'쿠헬헬..',9,11,'쿠헬헬..','2019-05-23 14:46:47');
/*!40000 ALTER TABLE `Evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gun`
--

DROP TABLE IF EXISTS `Gun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gun` (
  `gun_no` int(11) NOT NULL AUTO_INCREMENT,
  `gun_name` varchar(40) NOT NULL,
  `gun_type` varchar(10) NOT NULL,
  `bullets` int(11) NOT NULL,
  PRIMARY KEY (`gun_no`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gun`
--

LOCK TABLES `Gun` WRITE;
/*!40000 ALTER TABLE `Gun` DISABLE KEYS */;
INSERT INTO `Gun` VALUES (1,'M590A1','ShotGun',7),(2,'L85A2','AR',30),(3,'AR33','AR',25),(4,'FMG-9','SMG',30),(5,'MP5K','SMG',30),(6,'G36C','AR',30),(7,'R4-C','AR',30),(8,'M1014','ShotGun',8),(9,'556XI','AR',30),(10,'UMP45','SMG',25),(11,'F2','AR',30),(12,'417','DMR',11),(13,'SG-CQB','ShotGun',7),(14,'MP5','SMG',30),(15,'P90','SMG',50),(16,'OTs-03','Sniper',10),(17,'6P41','LMG',100),(18,'AK-12','AR',30),(19,'SASG-12','ShotGun',10),(20,'9X19_VSN','SMG',30),(21,'AUG_A2','AR',30),(22,'552_COMMANDO','AR',30),(23,'G8A1','LMG',50),(24,'416-C_CARBIN','AR',31),(25,'M870','ShotGun',7),(26,'MP7','SMG',30),(27,'Riot_Shield','Shield',0),(28,'Flash_Shield','Shield',0);
/*!40000 ALTER TABLE `Gun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Op_Gun`
--

DROP TABLE IF EXISTS `Op_Gun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Op_Gun` (
  `op_no` int(11) NOT NULL,
  `gun_no` int(11) NOT NULL,
  KEY `op_no` (`op_no`),
  KEY `gun_no` (`gun_no`),
  CONSTRAINT `Op_Gun_ibfk_1` FOREIGN KEY (`op_no`) REFERENCES `Operator` (`op_no`),
  CONSTRAINT `Op_Gun_ibfk_2` FOREIGN KEY (`gun_no`) REFERENCES `Gun` (`gun_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Op_Gun`
--

LOCK TABLES `Op_Gun` WRITE;
/*!40000 ALTER TABLE `Op_Gun` DISABLE KEYS */;
INSERT INTO `Op_Gun` VALUES (1,1),(1,2),(2,1),(2,2),(2,3),(3,1),(3,4),(4,1),(4,5),(5,6),(5,7),(6,8),(6,9),(7,8),(7,10),(8,8),(8,10),(9,11),(9,12),(9,13),(11,13),(11,14),(11,15),(12,13),(12,14),(12,15),(13,16),(14,17),(14,18),(15,19),(15,20),(16,19),(16,20),(18,21),(18,22),(18,23),(19,24),(19,25),(20,25),(20,26),(10,27),(17,28);
/*!40000 ALTER TABLE `Op_Gun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Operator`
--

DROP TABLE IF EXISTS `Operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Operator` (
  `op_no` int(11) NOT NULL AUTO_INCREMENT,
  `op_name` varchar(40) NOT NULL,
  `real_name` varchar(40) NOT NULL,
  `ability_no` int(11) NOT NULL,
  `position` varchar(10) NOT NULL,
  `army_no` int(11) DEFAULT NULL,
  `op_info` varchar(256) NOT NULL,
  PRIMARY KEY (`op_no`),
  KEY `ability_no` (`ability_no`),
  KEY `army_no` (`army_no`),
  CONSTRAINT `Operator_ibfk_1` FOREIGN KEY (`ability_no`) REFERENCES `Ability` (`ability_no`),
  CONSTRAINT `Operator_ibfk_2` FOREIGN KEY (`army_no`) REFERENCES `Army` (`army_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Operator`
--

LOCK TABLES `Operator` WRITE;
/*!40000 ALTER TABLE `Operator` DISABLE KEYS */;
INSERT INTO `Operator` VALUES (1,'SLEDGE','Seamus Cowden',1,'ATTACK',1,'셰이머스 코든은 스코틀랜드 고지에서도 가장 높은 지역 출신으로 그의 뛰어난 체격과 운동 능력 덕분에 1998년 스코틀랜드의 20세 이하 럭비 연합 팀의 주장으로 활동했습니다. 공익을 위한 일에 종사하기를 강력히 원했던 코든은 18세의 나이에 군대에 입대합니다. 5년간의 현역 기간 후, S.A.S.가 그를 영입했습니다'),(2,'THATCHER','Mike Baker',2,'ATTACK',1,'항만 노동자 가정에서 태어난 베이커는 18번째 생일에 군에 입대했습니다. 3번의 전쟁에 참전한 베테랑으로 Rainbow 팀에 영입되기 전까지는 S.A.S.의 최고령 현역 대원이였습니다.'),(3,'SMOKE','James Porter',3,'DEFEND',1,'포터는 딱히 학업에 뛰어나지 않았으나, 고등학교에서 과학에 특별한 재능을 보였습니다. 그는 특히 생물학과 해부학에 많은 관심을 가졌습니다. 학업을 잠시 중단했던 해에 부모님의 동의를 받아야 하는 문제를 피하고자 가짜 신분증을 사용하여 영국 군대에 입대했습니다.'),(4,'MUTE','Mark R. Chandar',4,'DEFEND',1,'챈더는 12살에 고등학교를 조기 졸업했습니다. 과학계의 신동인 그는 학업을 쉬는 동안 영국의 기술 회사에서 새로운 보안 시스템의 프로토타입을 제작하는 인턴십 과정을 마치고 14살에 케임브리지 대학교의 공과학부에 입학했습니다.'),(5,'ASH','Eliza Cohen',5,'ATTACK',2,'코언은 예루살렘에서 태어나고 자랐습니다. 고등학교를 졸업하고 텔아비브 대학교 공학부에 입학한 그녀는 한 학기를 보스턴 대학교에서 보내기도 했습니다. 그녀는 대학교를 졸업하고 시민의 의무인 이스라엘 방위군에 입대했습니다. 공학을 전공했기 때문에 그녀는 기계 관리와 폭파에 관한 업무를 할당받았습니다.'),(6,'THERMITE','Jordan Trace',6,'ATTACK',2,'트레이스는 고등학교를 졸업하고 바로 해병대에 입대하여 이라크에서 두 번의 복무 기간을 마쳤습니다. 제대 후에 그는 GI에서 지급한 돈으로 텍사스 A&M 대학교에 입학하여 화학 전공 이학사 학위를 취득하고 졸업했습니다. 졸업 후 그는 FBI에 몸담게 됩니다. FBI에서 현장 요원으로 4년간 활동한 그는 FBI SWAT팀으로 이전하게 됩니다.'),(7,'CASTLE','Miles Campbell',7,'DEFEND',2,'캠벨은 로스앤젤레스의 캘리포니아 주립 대학에서 형사 행정학을 전공했으며 졸업 후 바로 LAPD에 들어갔습니다. 5년간의 근무 후 그는 LAPD의 SWAT팀에 배치되었으며, 3년간 뛰어난 활약을 보이고 FBI로 이전되었습니다. 캠벨은 FBI 요원으로 2년을 근무하고 자연스레 다시 FBI SWAT 팀에 재배치 되었습니다.'),(8,'PULSE','Jack Estrada',8,'DEFEND',2,'신시아 에스트라다(Cynthia Estrada)와 마크 피터슨(Mark Peterson)의 아들인 잭은 시모어 존슨 공군 기지에서 태어났습니다. 군인 가정에서 성장한 잭은 어머니의 뒤를 따라 정보 장교가 되었습니다.'),(9,'TWITCH','Emmanuelle Pichon',9,'ATTACK',3,'역사적 도시인 낭시에서 태어난 피숑은 학업, 특히 수학과 과학을 중요시하는 가정에서 자랐습니다. 어려서부터 군이 지원하는 각종 컴퓨터 프로그래밍 시합에 출전했던 그녀는 16살이 되자 자연스럽게 육군 사관생도로 입학했습니다.'),(10,'MONTAGNE','Gilles Toure',10,'ATTACK',3,'육군 장교와 학교 선생님 사이에서 태어났으며, 보르도 인근에서 성장했습니다. 투레는 고등학교를 졸업한 지 몇 년 후에 프랑스 헌병으로 입대했습니다. 경찰로 복무하면서 그는 방어 임무에 헌신해 왔습니다. 프랑스 헌병대에서 보인 헌신과 충성으로 인해 GIGN 대원으로 발탁될 수 있었습니다'),(11,'DOC','Gustave Kateb',11,'DEFEND',3,'카데브는 파리 16구의 부유한 가정에서 성장했습니다. 그러나 그는 20살이 되던 해에 사설 의료 분야에서의 보장된 삶을 버리고 프랑스군 의무대에 지원했습니다.'),(12,'ROOK','Julien Nizan',12,'DEFEND',3,'학생 시절 육상 경기에 뛰어난 모습을 보였던 니장은 특히 달리기와 스포츠에 특출난 소질을 보였습니다. 노동자 계층 가족의 막내아들로 성장한 그는 18살이 되자 프랑스 헌병에 입대하여 고속도로 순찰병으로 배치되었습니다. 기본 훈련 과정에서 화기 사용에 뛰어난 소질을 보였던 니장은 복무 기간 동안 이 기술을 갈고 닦았습니다. 니장의 소총 실력은 GIGN의 관심을 얻기에 충분했습니다.'),(13,'GLAZ','Timur Glazkov',13,'ATTACK',4,'블라디보스토크에서 태어나고 성장했으며, 아버지는 해운업에 종사했습니다. 글라즈코프는 고등학교에서 미술을 공부했으나, 베슬란 학교 대학살에 자극을 받아 사관생도로 전향하게 되었으며 군인으로서 경력을 쌓아가고자 합니다.'),(14,'FUZE','Shuhrat Kessikbayev',14,'ATTACK',4,'키식바예프는 우즈베키스탄의 사마르칸트에 위치한 군인 집안에서 자라났습니다. 그의 가족은 소비에트 연방이 무너지기 바로 전에 러시아로 이민 갔으며 그는 아버지의 뒤를 따라 군에 입대했습니다. 군대에서 기술을 빠르게 습득한 덕분에 그는 모스크바 근처에 있는 알라비노 사격 훈련장의 무기 시험 여단의 일원으로 참여하게 되었습니다.'),(15,'KAPKAN','Maxim Basuda',15,'DEFEND',4,'코브로프에서 태어나고 자란 바스다는 삼형제의 맏아들로, 부모님은 모두 공장에서 일하는 노동자였습니다. 공장에서의 고된 삶을 피하기 위하여 총무성에 입대한 그는 바렌츠 해의 작은 항구 도시인 나리얀마르에 파견되었습니다. 바스다는 북극권에서 지내는 동안 열렬한 사냥꾼이자 함정 전문가가 되었으며 2002년에 베슬란으로 진임되었습니다.'),(16,'TACHANKA','Alexsandr Senaviev',16,'DEFEND',4,'공산군 가정에서 태어난 세나비예프는 18살이 되자 군에 입대했습니다. 세나비예프는 소비에트 연방이 아프가니스탄에서 후퇴하고 연방이 무너지기 바로 직전에 Spetsnaz로 이전되었습니다.'),(17,'BLITZ','Elias Kotx',17,'ATTACK',5,'헤르만-보세 학교의 학생이였던 쾨츠는 학업과 스포츠 양면에서 모두 뛰어났으며 두 개의 언어를 구사할 수 있었습니다. 늠름한 체격으로 특출한 운동선수로 활약했으며, 이러한 운동 경력은 군 훈련에도 많은 도움이 되었습니다. 쾌할한 성격과 탁월한 학력으로 인해 코소보의 기동 타격대원에서 GSG 9의 대원으로 발탁되었습니다. 쾨츠는 2008년 뭄바이에서 발생했던 테러리스트 공격 후 인디아에 대테러 부대를 설립하는 데 지대한 역할을 감당했습니다.'),(18,'IQ','Monika Weiss',18,'ATTACK',5,'바이스는 어려서부터 전기 공학에 타고난 소질을 보였습니다. 16살의 나이에 한 기업에서 인턴십을 완료한 그녀는 미국의 MIT와 CalTech에서 학업을 이어나갔습니다. 대학교를 졸업한 후 1년간의 여행을 마친 그녀는 새로운 도전을 위해 자신의 삶을 독일 연방경찰(BPOL)에 헌신하기로 합니다. 바이스는 이 새로운 환경에서 두각을 보이며 2년 만에 GSG 9로 영입되었습니다.'),(19,'JAGER','Marius Streicher',19,'DEFEND',5,'슈트라이허는 통일 후 독일 연방 경찰(BPOL)의 항공단에서 정비공으로 일하는 삼촌의 손에서 자랐습니다. 슈트라이허는 헬리콥터 기술자로 BPOL에 입대하였으며 이곳에서 방어 무기 시스템을 개발하기 시작했습니다. 그는 지상용 선제 방어 시스템(ADS)의 프로토타입을 개발하면서 GSG 9의 관심을 받게 되었습니다.'),(20,'BANDIT','Dominic Brunsmeier',20,'DEFEND',5,'브룬스마이어와 그의 쌍둥이 형제인 세드릭(Cedrick)은 18번째 생일 바로 다음 날에 독일 국경수비대에(BGS) 입단했습니다. 그는 국경 수비대의 일원으로 첫 1년간 명령을 따르는 훈련과 서류 작업을 처리하는 법을 배웠습니다.');
/*!40000 ALTER TABLE `Operator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-25 22:58:52

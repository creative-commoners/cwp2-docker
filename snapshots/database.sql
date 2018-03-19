-- MySQL dump 10.13  Distrib 5.7.18, for osx10.12 (x86_64)
--
-- Host: localhost    Database: SS_cwp20
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AssignUsersToWorkflowAction`
--

DROP TABLE IF EXISTS `AssignUsersToWorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssignUsersToWorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AssignInitiator` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssignUsersToWorkflowAction`
--

LOCK TABLES `AssignUsersToWorkflowAction` WRITE;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssignUsersToWorkflowAction_Groups`
--

DROP TABLE IF EXISTS `AssignUsersToWorkflowAction_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssignUsersToWorkflowAction_Groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AssignUsersToWorkflowActionID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AssignUsersToWorkflowActionID` (`AssignUsersToWorkflowActionID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssignUsersToWorkflowAction_Groups`
--

LOCK TABLES `AssignUsersToWorkflowAction_Groups` WRITE;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction_Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssignUsersToWorkflowAction_Users`
--

DROP TABLE IF EXISTS `AssignUsersToWorkflowAction_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssignUsersToWorkflowAction_Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AssignUsersToWorkflowActionID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AssignUsersToWorkflowActionID` (`AssignUsersToWorkflowActionID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssignUsersToWorkflowAction_Users`
--

LOCK TABLES `AssignUsersToWorkflowAction_Users` WRITE;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssignUsersToWorkflowAction_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BaseHomePage`
--

DROP TABLE IF EXISTS `BaseHomePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BaseHomePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FeatureOneTitle` varchar(255) DEFAULT NULL,
  `FeatureOneCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') DEFAULT 'comments',
  `FeatureOneContent` mediumtext,
  `FeatureOneButtonText` varchar(255) DEFAULT NULL,
  `FeatureTwoTitle` varchar(255) DEFAULT NULL,
  `FeatureTwoCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') DEFAULT 'comments',
  `FeatureTwoContent` mediumtext,
  `FeatureTwoButtonText` varchar(255) DEFAULT NULL,
  `LearnMorePageID` int(11) NOT NULL DEFAULT '0',
  `FeatureOneLinkID` int(11) NOT NULL DEFAULT '0',
  `FeatureTwoLinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LearnMorePageID` (`LearnMorePageID`),
  KEY `FeatureOneLinkID` (`FeatureOneLinkID`),
  KEY `FeatureTwoLinkID` (`FeatureTwoLinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BaseHomePage`
--

LOCK TABLES `BaseHomePage` WRITE;
/*!40000 ALTER TABLE `BaseHomePage` DISABLE KEYS */;
/*!40000 ALTER TABLE `BaseHomePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BaseHomePage_Live`
--

DROP TABLE IF EXISTS `BaseHomePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BaseHomePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FeatureOneTitle` varchar(255) DEFAULT NULL,
  `FeatureOneCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') DEFAULT 'comments',
  `FeatureOneContent` mediumtext,
  `FeatureOneButtonText` varchar(255) DEFAULT NULL,
  `FeatureTwoTitle` varchar(255) DEFAULT NULL,
  `FeatureTwoCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') DEFAULT 'comments',
  `FeatureTwoContent` mediumtext,
  `FeatureTwoButtonText` varchar(255) DEFAULT NULL,
  `LearnMorePageID` int(11) NOT NULL DEFAULT '0',
  `FeatureOneLinkID` int(11) NOT NULL DEFAULT '0',
  `FeatureTwoLinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LearnMorePageID` (`LearnMorePageID`),
  KEY `FeatureOneLinkID` (`FeatureOneLinkID`),
  KEY `FeatureTwoLinkID` (`FeatureTwoLinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BaseHomePage_Live`
--

LOCK TABLES `BaseHomePage_Live` WRITE;
/*!40000 ALTER TABLE `BaseHomePage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `BaseHomePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BaseHomePage_Versions`
--

DROP TABLE IF EXISTS `BaseHomePage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BaseHomePage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `FeatureOneTitle` varchar(255) DEFAULT NULL,
  `FeatureOneCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') DEFAULT 'comments',
  `FeatureOneContent` mediumtext,
  `FeatureOneButtonText` varchar(255) DEFAULT NULL,
  `FeatureTwoTitle` varchar(255) DEFAULT NULL,
  `FeatureTwoCategory` enum('bell','comments','film','flag','globe','group','list','phone','rss','time','user') DEFAULT 'comments',
  `FeatureTwoContent` mediumtext,
  `FeatureTwoButtonText` varchar(255) DEFAULT NULL,
  `LearnMorePageID` int(11) NOT NULL DEFAULT '0',
  `FeatureOneLinkID` int(11) NOT NULL DEFAULT '0',
  `FeatureTwoLinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LearnMorePageID` (`LearnMorePageID`),
  KEY `FeatureOneLinkID` (`FeatureOneLinkID`),
  KEY `FeatureTwoLinkID` (`FeatureTwoLinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BaseHomePage_Versions`
--

LOCK TABLES `BaseHomePage_Versions` WRITE;
/*!40000 ALTER TABLE `BaseHomePage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `BaseHomePage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasePage_RelatedPages`
--

DROP TABLE IF EXISTS `BasePage_RelatedPages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasePage_RelatedPages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BasePageID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BasePageID` (`BasePageID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasePage_RelatedPages`
--

LOCK TABLES `BasePage_RelatedPages` WRITE;
/*!40000 ALTER TABLE `BasePage_RelatedPages` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasePage_RelatedPages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasePage_Terms`
--

DROP TABLE IF EXISTS `BasePage_Terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasePage_Terms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BasePageID` int(11) NOT NULL DEFAULT '0',
  `TaxonomyTermID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BasePageID` (`BasePageID`),
  KEY `TaxonomyTermID` (`TaxonomyTermID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasePage_Terms`
--

LOCK TABLES `BasePage_Terms` WRITE;
/*!40000 ALTER TABLE `BasePage_Terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasePage_Terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeSet`
--

DROP TABLE IF EXISTS `ChangeSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChangeSet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSet') DEFAULT 'SilverStripe\\Versioned\\ChangeSet',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `State` enum('open','published','reverted') DEFAULT 'open',
  `IsInferred` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Description` mediumtext,
  `PublishDate` datetime DEFAULT NULL,
  `LastSynced` datetime DEFAULT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `State` (`State`),
  KEY `ID` (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `OwnerID` (`OwnerID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeSet`
--

LOCK TABLES `ChangeSet` WRITE;
/*!40000 ALTER TABLE `ChangeSet` DISABLE KEYS */;
INSERT INTO `ChangeSet` VALUES (1,'SilverStripe\\Versioned\\ChangeSet','2018-02-13 17:17:23','2018-02-13 17:17:23','Generated by publish of \'test, robbie\' at 13 Feb 2018, 17:17:23','published',1,NULL,'2018-02-13 17:17:23','2018-02-13 17:17:23',0,1);
/*!40000 ALTER TABLE `ChangeSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeSetItem`
--

DROP TABLE IF EXISTS `ChangeSetItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChangeSetItem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSetItem') DEFAULT 'SilverStripe\\Versioned\\ChangeSetItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `VersionBefore` int(11) NOT NULL DEFAULT '0',
  `VersionAfter` int(11) NOT NULL DEFAULT '0',
  `Added` enum('explicitly','implicitly') DEFAULT 'implicitly',
  `ChangeSetID` int(11) NOT NULL DEFAULT '0',
  `ObjectID` int(11) NOT NULL DEFAULT '0',
  `ObjectClass` enum('SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\ContentReview\\Models\\ContentReviewLog','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\ShareDraftContent\\Models\\ShareToken','Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance','Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction') DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ObjectUniquePerChangeSet` (`ObjectID`,`ObjectClass`,`ChangeSetID`),
  KEY `ClassName` (`ClassName`),
  KEY `ChangeSetID` (`ChangeSetID`),
  KEY `Object` (`ObjectID`,`ObjectClass`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeSetItem`
--

LOCK TABLES `ChangeSetItem` WRITE;
/*!40000 ALTER TABLE `ChangeSetItem` DISABLE KEYS */;
INSERT INTO `ChangeSetItem` VALUES (1,'SilverStripe\\Versioned\\ChangeSetItem','2018-02-13 17:17:23','2018-02-13 17:17:23',0,0,'explicitly',1,2,'SilverStripe\\Security\\Member');
/*!40000 ALTER TABLE `ChangeSetItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeSetItem_ReferencedBy`
--

DROP TABLE IF EXISTS `ChangeSetItem_ReferencedBy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChangeSetItem_ReferencedBy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ChangeSetItemID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ChangeSetItemID` (`ChangeSetItemID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeSetItem_ReferencedBy`
--

LOCK TABLES `ChangeSetItem_ReferencedBy` WRITE;
/*!40000 ALTER TABLE `ChangeSetItem_ReferencedBy` DISABLE KEYS */;
/*!40000 ALTER TABLE `ChangeSetItem_ReferencedBy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContentReviewLog`
--

DROP TABLE IF EXISTS `ContentReviewLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContentReviewLog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\ContentReview\\Models\\ContentReviewLog') DEFAULT 'SilverStripe\\ContentReview\\Models\\ContentReviewLog',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Note` mediumtext,
  `ReviewerID` int(11) NOT NULL DEFAULT '0',
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Created` (`Created`),
  KEY `ClassName` (`ClassName`),
  KEY `ReviewerID` (`ReviewerID`),
  KEY `SiteTreeID` (`SiteTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContentReviewLog`
--

LOCK TABLES `ContentReviewLog` WRITE;
/*!40000 ALTER TABLE `ContentReviewLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ContentReviewLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatedUpdatePage`
--

DROP TABLE IF EXISTS `DatedUpdatePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatedUpdatePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Abstract` mediumtext,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatedUpdatePage`
--

LOCK TABLES `DatedUpdatePage` WRITE;
/*!40000 ALTER TABLE `DatedUpdatePage` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatedUpdatePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatedUpdatePage_Live`
--

DROP TABLE IF EXISTS `DatedUpdatePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatedUpdatePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Abstract` mediumtext,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatedUpdatePage_Live`
--

LOCK TABLES `DatedUpdatePage_Live` WRITE;
/*!40000 ALTER TABLE `DatedUpdatePage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatedUpdatePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatedUpdatePage_Versions`
--

DROP TABLE IF EXISTS `DatedUpdatePage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatedUpdatePage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Abstract` mediumtext,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatedUpdatePage_Versions`
--

LOCK TABLES `DatedUpdatePage_Versions` WRITE;
/*!40000 ALTER TABLE `DatedUpdatePage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatedUpdatePage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage`
--

DROP TABLE IF EXISTS `ErrorPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage`
--

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` VALUES (4,404),(5,500);
/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage_Live`
--

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` VALUES (4,404),(5,500);
/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Versions`
--

DROP TABLE IF EXISTS `ErrorPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage_Versions`
--

LOCK TABLES `ErrorPage_Versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_Versions` VALUES (1,4,1,404),(2,5,1,500);
/*!40000 ALTER TABLE `ErrorPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EventPage`
--

DROP TABLE IF EXISTS `EventPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EventPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Location` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventPage`
--

LOCK TABLES `EventPage` WRITE;
/*!40000 ALTER TABLE `EventPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `EventPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EventPage_Live`
--

DROP TABLE IF EXISTS `EventPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EventPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Location` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventPage_Live`
--

LOCK TABLES `EventPage_Live` WRITE;
/*!40000 ALTER TABLE `EventPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `EventPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EventPage_Versions`
--

DROP TABLE IF EXISTS `EventPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EventPage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Location` mediumtext,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventPage_Versions`
--

LOCK TABLES `EventPage_Versions` WRITE;
/*!40000 ALTER TABLE `EventPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `EventPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `FileHash` varchar(255) DEFAULT NULL,
  `FileFilename` varchar(255) DEFAULT NULL,
  `FileVariant` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Name` (`Name`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_EditorGroups`
--

DROP TABLE IF EXISTS `File_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FileID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_EditorGroups`
--

LOCK TABLES `File_EditorGroups` WRITE;
/*!40000 ALTER TABLE `File_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_Live`
--

DROP TABLE IF EXISTS `File_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `FileHash` varchar(255) DEFAULT NULL,
  `FileFilename` varchar(255) DEFAULT NULL,
  `FileVariant` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Name` (`Name`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_Live`
--

LOCK TABLES `File_Live` WRITE;
/*!40000 ALTER TABLE `File_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_Versions`
--

DROP TABLE IF EXISTS `File_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `FileHash` varchar(255) DEFAULT NULL,
  `FileFilename` varchar(255) DEFAULT NULL,
  `FileVariant` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `Name` (`Name`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_Versions`
--

LOCK TABLES `File_Versions` WRITE;
/*!40000 ALTER TABLE `File_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_ViewerGroups`
--

DROP TABLE IF EXISTS `File_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FileID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_ViewerGroups`
--

LOCK TABLES `File_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `File_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Group') DEFAULT 'SilverStripe\\Security\\Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group`
--

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` VALUES (1,'SilverStripe\\Security\\Group','2018-01-30 16:51:59','2018-01-30 16:51:59','Content Authors',NULL,'content-authors',0,1,NULL,0),(2,'SilverStripe\\Security\\Group','2018-01-30 16:51:59','2018-01-30 16:51:59','Administrators',NULL,'administrators',0,0,NULL,0);
/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Members`
--

DROP TABLE IF EXISTS `Group_Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Members`
--

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` VALUES (1,2,1),(2,2,2);
/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Roles`
--

DROP TABLE IF EXISTS `Group_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Roles`
--

LOCK TABLES `Group_Roles` WRITE;
/*!40000 ALTER TABLE `Group_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Group_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_SiteTreeContentReview`
--

DROP TABLE IF EXISTS `Group_SiteTreeContentReview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_SiteTreeContentReview` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `SiteTreeID` (`SiteTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_SiteTreeContentReview`
--

LOCK TABLES `Group_SiteTreeContentReview` WRITE;
/*!40000 ALTER TABLE `Group_SiteTreeContentReview` DISABLE KEYS */;
/*!40000 ALTER TABLE `Group_SiteTreeContentReview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HybridSessionDataObject`
--

DROP TABLE IF EXISTS `HybridSessionDataObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HybridSessionDataObject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\HybridSessions\\HybridSessionDataObject') DEFAULT 'SilverStripe\\HybridSessions\\HybridSessionDataObject',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SessionID` varchar(64) DEFAULT NULL,
  `Expiry` int(11) NOT NULL DEFAULT '0',
  `Data` mediumtext,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SessionID` (`SessionID`),
  KEY `ClassName` (`ClassName`),
  KEY `Expiry` (`Expiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HybridSessionDataObject`
--

LOCK TABLES `HybridSessionDataObject` WRITE;
/*!40000 ALTER TABLE `HybridSessionDataObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `HybridSessionDataObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImportedWorkflowTemplate`
--

DROP TABLE IF EXISTS `ImportedWorkflowTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImportedWorkflowTemplate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate') DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\ImportedWorkflowTemplate',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Filename` varchar(255) DEFAULT NULL,
  `Content` mediumtext,
  `DefinitionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `DefinitionID` (`DefinitionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImportedWorkflowTemplate`
--

LOCK TABLES `ImportedWorkflowTemplate` WRITE;
/*!40000 ALTER TABLE `ImportedWorkflowTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImportedWorkflowTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginAttempt`
--

DROP TABLE IF EXISTS `LoginAttempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\LoginAttempt') DEFAULT 'SilverStripe\\Security\\LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `EmailHashed` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginAttempt`
--

LOCK TABLES `LoginAttempt` WRITE;
/*!40000 ALTER TABLE `LoginAttempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginAttempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Member') DEFAULT 'SilverStripe\\Security\\Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Surname` (`Surname`),
  KEY `FirstName` (`FirstName`),
  KEY `ClassName` (`ClassName`),
  KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1,'SilverStripe\\Security\\Member','2018-02-13 17:17:08','2018-01-30 16:51:59','Default Admin',NULL,'admin','e52cc5d9e182b1f7ff322a3b57d837e0f34da04f','2018-02-16 17:17:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en_GB',0),(2,'SilverStripe\\Security\\Member','2018-02-13 17:43:32','2018-02-13 17:17:23','robbie','test','robbie@silverstripe.com','7f6fc37a93187e40dceafb5c52525cc82464b046','2018-02-16 17:43:32','$2y$10$bcd960c47304943b8788fuuKfVN0o3d6.wzBp7t5UtIocG.fwOdfO',NULL,'2018-02-15 17:17:33','blowfish','10$bcd960c47304943b8788f8',NULL,NULL,'en_GB',0);
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberPassword`
--

DROP TABLE IF EXISTS `MemberPassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\MemberPassword') DEFAULT 'SilverStripe\\Security\\MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberPassword`
--

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
INSERT INTO `MemberPassword` VALUES (1,'SilverStripe\\Security\\MemberPassword','2018-02-13 17:17:23','2018-02-13 17:17:23','$2y$10$73731b740a7fa7f2b53e7OWmtPnGfYPzCm.YRqw0rkptDzH/X27yu','10$73731b740a7fa7f2b53e7b','blowfish',2),(2,'SilverStripe\\Security\\MemberPassword','2018-02-13 17:43:32','2018-02-13 17:43:32','$2y$10$bcd960c47304943b8788fuuKfVN0o3d6.wzBp7t5UtIocG.fwOdfO','10$bcd960c47304943b8788f8','blowfish',2);
/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member_SiteTreeContentReview`
--

DROP TABLE IF EXISTS `Member_SiteTreeContentReview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Member_SiteTreeContentReview` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `SiteTreeID` (`SiteTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member_SiteTreeContentReview`
--

LOCK TABLES `Member_SiteTreeContentReview` WRITE;
/*!40000 ALTER TABLE `Member_SiteTreeContentReview` DISABLE KEYS */;
/*!40000 ALTER TABLE `Member_SiteTreeContentReview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage`
--

DROP TABLE IF EXISTS `NewsPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Author` varchar(255) DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage`
--

LOCK TABLES `NewsPage` WRITE;
/*!40000 ALTER TABLE `NewsPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage_Live`
--

DROP TABLE IF EXISTS `NewsPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Author` varchar(255) DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage_Live`
--

LOCK TABLES `NewsPage_Live` WRITE;
/*!40000 ALTER TABLE `NewsPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage_Versions`
--

DROP TABLE IF EXISTS `NewsPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Author` varchar(255) DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage_Versions`
--

LOCK TABLES `NewsPage_Versions` WRITE;
/*!40000 ALTER TABLE `NewsPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NotifyUsersWorkflowAction`
--

DROP TABLE IF EXISTS `NotifyUsersWorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotifyUsersWorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EmailSubject` varchar(100) DEFAULT NULL,
  `EmailFrom` varchar(50) DEFAULT NULL,
  `EmailTemplate` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotifyUsersWorkflowAction`
--

LOCK TABLES `NotifyUsersWorkflowAction` WRITE;
/*!40000 ALTER TABLE `NotifyUsersWorkflowAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `NotifyUsersWorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Permission') DEFAULT 'SilverStripe\\Security\\Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permission`
--

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` VALUES (1,'SilverStripe\\Security\\Permission','2018-01-30 16:51:59','2018-01-30 16:51:59','CMS_ACCESS_CMSMain',0,1,1),(2,'SilverStripe\\Security\\Permission','2018-01-30 16:51:59','2018-01-30 16:51:59','CMS_ACCESS_AssetAdmin',0,1,1),(3,'SilverStripe\\Security\\Permission','2018-01-30 16:51:59','2018-01-30 16:51:59','CMS_ACCESS_ReportAdmin',0,1,1),(4,'SilverStripe\\Security\\Permission','2018-01-30 16:51:59','2018-01-30 16:51:59','SITETREE_REORGANISE',0,1,1),(5,'SilverStripe\\Security\\Permission','2018-01-30 16:51:59','2018-01-30 16:51:59','ADMIN',0,1,2);
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRole`
--

DROP TABLE IF EXISTS `PermissionRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\PermissionRole') DEFAULT 'SilverStripe\\Security\\PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Title` (`Title`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRole`
--

LOCK TABLES `PermissionRole` WRITE;
/*!40000 ALTER TABLE `PermissionRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRoleCode`
--

DROP TABLE IF EXISTS `PermissionRoleCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\PermissionRoleCode') DEFAULT 'SilverStripe\\Security\\PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `RoleID` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRoleCode`
--

LOCK TABLES `PermissionRoleCode` WRITE;
/*!40000 ALTER TABLE `PermissionRoleCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRoleCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublishItemWorkflowAction`
--

DROP TABLE IF EXISTS `PublishItemWorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublishItemWorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublishDelay` int(11) NOT NULL DEFAULT '0',
  `AllowEmbargoedEditing` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublishItemWorkflowAction`
--

LOCK TABLES `PublishItemWorkflowAction` WRITE;
/*!40000 ALTER TABLE `PublishItemWorkflowAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `PublishItemWorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quicklink`
--

DROP TABLE IF EXISTS `Quicklink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Quicklink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('CWP\\CWP\\Model\\Quicklink') DEFAULT 'CWP\\CWP\\Model\\Quicklink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `ExternalLink` varchar(255) DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `InternalLinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `InternalLinkID` (`InternalLinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quicklink`
--

LOCK TABLES `Quicklink` WRITE;
/*!40000 ALTER TABLE `Quicklink` DISABLE KEYS */;
/*!40000 ALTER TABLE `Quicklink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage`
--

DROP TABLE IF EXISTS `RedirectorPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage`
--

LOCK TABLES `RedirectorPage` WRITE;
/*!40000 ALTER TABLE `RedirectorPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Live`
--

DROP TABLE IF EXISTS `RedirectorPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage_Live`
--

LOCK TABLES `RedirectorPage_Live` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Versions`
--

DROP TABLE IF EXISTS `RedirectorPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage_Versions`
--

LOCK TABLES `RedirectorPage_Versions` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RememberLoginHash`
--

DROP TABLE IF EXISTS `RememberLoginHash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RememberLoginHash` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\RememberLoginHash') DEFAULT 'SilverStripe\\Security\\RememberLoginHash',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `DeviceID` varchar(40) DEFAULT NULL,
  `Hash` varchar(160) DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`),
  KEY `DeviceID` (`DeviceID`),
  KEY `Hash` (`Hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RememberLoginHash`
--

LOCK TABLES `RememberLoginHash` WRITE;
/*!40000 ALTER TABLE `RememberLoginHash` DISABLE KEYS */;
/*!40000 ALTER TABLE `RememberLoginHash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SetPropertyWorkflowAction`
--

DROP TABLE IF EXISTS `SetPropertyWorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SetPropertyWorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Property` varchar(255) DEFAULT NULL,
  `Value` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SetPropertyWorkflowAction`
--

LOCK TABLES `SetPropertyWorkflowAction` WRITE;
/*!40000 ALTER TABLE `SetPropertyWorkflowAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `SetPropertyWorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShareToken`
--

DROP TABLE IF EXISTS `ShareToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShareToken` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\ShareDraftContent\\Models\\ShareToken') DEFAULT 'SilverStripe\\ShareDraftContent\\Models\\ShareToken',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Token` varchar(16) DEFAULT NULL,
  `ValidForDays` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `PageID` (`PageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShareToken`
--

LOCK TABLES `ShareToken` WRITE;
/*!40000 ALTER TABLE `ShareToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShareToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig`
--

DROP TABLE IF EXISTS `SiteConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\SiteConfig\\SiteConfig') DEFAULT 'SilverStripe\\SiteConfig\\SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `GACode` varchar(16) DEFAULT NULL,
  `FacebookURL` varchar(256) DEFAULT NULL,
  `TwitterUsername` varchar(16) DEFAULT NULL,
  `ReviewPeriodDays` int(11) NOT NULL DEFAULT '0',
  `ReviewFrom` varchar(255) DEFAULT NULL,
  `ReviewSubject` varchar(255) DEFAULT NULL,
  `ReviewBody` mediumtext,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig`
--

LOCK TABLES `SiteConfig` WRITE;
/*!40000 ALTER TABLE `SiteConfig` DISABLE KEYS */;
INSERT INTO `SiteConfig` VALUES (1,'SilverStripe\\SiteConfig\\SiteConfig','2018-01-30 16:51:59','2018-01-30 16:51:59','Your Site Name','your tagline here','Anyone','LoggedInUsers','LoggedInUsers',NULL,NULL,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `SiteConfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ContentReviewGroups`
--

DROP TABLE IF EXISTS `SiteConfig_ContentReviewGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_ContentReviewGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_ContentReviewGroups`
--

LOCK TABLES `SiteConfig_ContentReviewGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ContentReviewGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ContentReviewGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ContentReviewUsers`
--

DROP TABLE IF EXISTS `SiteConfig_ContentReviewUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_ContentReviewUsers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_ContentReviewUsers`
--

LOCK TABLES `SiteConfig_ContentReviewUsers` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ContentReviewUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ContentReviewUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_CreateTopLevelGroups`
--

LOCK TABLES `SiteConfig_CreateTopLevelGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_EditorGroups`
--

DROP TABLE IF EXISTS `SiteConfig_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_EditorGroups`
--

LOCK TABLES `SiteConfig_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteConfig_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_ViewerGroups`
--

LOCK TABLES `SiteConfig_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(255) DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ShowPageUtilities` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ContentReviewType` enum('Inherit','Disabled','Custom') DEFAULT 'Inherit',
  `ReviewPeriodDays` int(11) NOT NULL DEFAULT '0',
  `NextReviewDate` date DEFAULT NULL,
  `LastEditedByName` varchar(255) DEFAULT NULL,
  `OwnerNames` varchar(255) DEFAULT NULL,
  `ShareTokenSalt` varchar(16) DEFAULT NULL,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (1,'Page','2018-01-30 16:51:59','2018-01-30 16:51:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>',NULL,NULL,1,1,1,0,0,NULL,1,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(2,'Page','2018-01-30 16:51:59','2018-01-30 16:51:59','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,2,0,0,NULL,1,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(3,'Page','2018-01-30 16:51:59','2018-01-30 16:51:59','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,3,0,0,NULL,1,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(4,'SilverStripe\\ErrorPage\\ErrorPage','2018-02-13 17:16:49','2018-02-13 17:16:49','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,4,0,0,NULL,1,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(5,'SilverStripe\\ErrorPage\\ErrorPage','2018-02-13 17:16:49','2018-02-13 17:16:49','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,0,0,5,0,0,NULL,1,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_AdditionalWorkflowDefinitions`
--

DROP TABLE IF EXISTS `SiteTree_AdditionalWorkflowDefinitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_AdditionalWorkflowDefinitions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_AdditionalWorkflowDefinitions`
--

LOCK TABLES `SiteTree_AdditionalWorkflowDefinitions` WRITE;
/*!40000 ALTER TABLE `SiteTree_AdditionalWorkflowDefinitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_AdditionalWorkflowDefinitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_EditorGroups`
--

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_EditorGroups`
--

LOCK TABLES `SiteTree_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ImageTracking`
--

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_ImageTracking`
--

LOCK TABLES `SiteTree_ImageTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_LinkTracking`
--

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(255) DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ShowPageUtilities` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ContentReviewType` enum('Inherit','Disabled','Custom') DEFAULT 'Inherit',
  `ReviewPeriodDays` int(11) NOT NULL DEFAULT '0',
  `NextReviewDate` date DEFAULT NULL,
  `LastEditedByName` varchar(255) DEFAULT NULL,
  `OwnerNames` varchar(255) DEFAULT NULL,
  `ShareTokenSalt` varchar(16) DEFAULT NULL,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (1,'Page','2018-01-30 16:51:59','2018-01-30 16:51:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>',NULL,NULL,1,1,1,0,0,NULL,1,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(2,'Page','2018-01-30 16:51:59','2018-01-30 16:51:59','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,2,0,0,NULL,1,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(3,'Page','2018-01-30 16:51:59','2018-01-30 16:51:59','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,3,0,0,NULL,1,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(4,'SilverStripe\\ErrorPage\\ErrorPage','2018-02-13 17:16:49','2018-02-13 17:16:49','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,4,0,0,NULL,1,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(5,'SilverStripe\\ErrorPage\\ErrorPage','2018-02-13 17:16:49','2018-02-13 17:16:49','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,0,0,5,0,0,NULL,1,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Versions`
--

DROP TABLE IF EXISTS `SiteTree_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ShowPageUtilities` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ContentReviewType` enum('Inherit','Disabled','Custom') DEFAULT 'Inherit',
  `ReviewPeriodDays` int(11) NOT NULL DEFAULT '0',
  `NextReviewDate` date DEFAULT NULL,
  `LastEditedByName` varchar(255) DEFAULT NULL,
  `OwnerNames` varchar(255) DEFAULT NULL,
  `ShareTokenSalt` varchar(16) DEFAULT NULL,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_Versions`
--

LOCK TABLES `SiteTree_Versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_Versions` DISABLE KEYS */;
INSERT INTO `SiteTree_Versions` VALUES (1,1,1,1,0,0,'Page','2018-01-30 16:51:59','2018-01-30 16:51:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(2,2,1,1,0,0,'Page','2018-01-30 16:51:59','2018-01-30 16:51:59','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(3,3,1,1,0,0,'Page','2018-01-30 16:51:59','2018-01-30 16:51:59','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(4,4,1,1,0,0,'SilverStripe\\ErrorPage\\ErrorPage','2018-02-13 17:16:49','2018-02-13 17:16:49','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,4,0,0,NULL,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0),(5,5,1,1,0,0,'SilverStripe\\ErrorPage\\ErrorPage','2018-02-13 17:16:49','2018-02-13 17:16:49','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,0,0,5,0,0,NULL,'Inherit','Inherit',1,0,'Inherit',0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `SiteTree_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_ViewerGroups`
--

LOCK TABLES `SiteTree_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxonomyTerm`
--

DROP TABLE IF EXISTS `TaxonomyTerm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxonomyTerm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Taxonomy\\TaxonomyTerm') DEFAULT 'SilverStripe\\Taxonomy\\TaxonomyTerm',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `TypeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ParentID` (`ParentID`),
  KEY `TypeID` (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxonomyTerm`
--

LOCK TABLES `TaxonomyTerm` WRITE;
/*!40000 ALTER TABLE `TaxonomyTerm` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaxonomyTerm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxonomyType`
--

DROP TABLE IF EXISTS `TaxonomyType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxonomyType` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Taxonomy\\TaxonomyType') DEFAULT 'SilverStripe\\Taxonomy\\TaxonomyType',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxonomyType`
--

LOCK TABLES `TaxonomyType` WRITE;
/*!40000 ALTER TABLE `TaxonomyType` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaxonomyType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnpublishItemWorkflowAction`
--

DROP TABLE IF EXISTS `UnpublishItemWorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UnpublishItemWorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UnpublishDelay` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnpublishItemWorkflowAction`
--

LOCK TABLES `UnpublishItemWorkflowAction` WRITE;
/*!40000 ALTER TABLE `UnpublishItemWorkflowAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `UnpublishItemWorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage`
--

DROP TABLE IF EXISTS `VirtualPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage`
--

LOCK TABLES `VirtualPage` WRITE;
/*!40000 ALTER TABLE `VirtualPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Live`
--

DROP TABLE IF EXISTS `VirtualPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage_Live`
--

LOCK TABLES `VirtualPage_Live` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Versions`
--

DROP TABLE IF EXISTS `VirtualPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage_Versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage_Versions`
--

LOCK TABLES `VirtualPage_Versions` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowAction`
--

DROP TABLE IF EXISTS `WorkflowAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowAction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\AssignUsersToWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\CancelWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\NotifyUsersWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\PublishItemWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SetPropertyWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\SimpleApprovalWorkflowAction','Symbiote\\AdvancedWorkflow\\Actions\\UnpublishItemWorkflowAction') DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowAction',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Comment` mediumtext,
  `Type` enum('Dynamic','Manual') DEFAULT 'Manual',
  `Executed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AllowEditing` enum('By Assignees','Content Settings','No') DEFAULT 'No',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `AllowCommenting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `WorkflowDefID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `WorkflowDefID` (`WorkflowDefID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowAction`
--

LOCK TABLES `WorkflowAction` WRITE;
/*!40000 ALTER TABLE `WorkflowAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowActionInstance`
--

DROP TABLE IF EXISTS `WorkflowActionInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowActionInstance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance') DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowActionInstance',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Comment` mediumtext,
  `Finished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `WorkflowID` int(11) NOT NULL DEFAULT '0',
  `BaseActionID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `WorkflowID` (`WorkflowID`),
  KEY `BaseActionID` (`BaseActionID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowActionInstance`
--

LOCK TABLES `WorkflowActionInstance` WRITE;
/*!40000 ALTER TABLE `WorkflowActionInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowActionInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinition`
--

DROP TABLE IF EXISTS `WorkflowDefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinition` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition') DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowDefinition',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(128) DEFAULT NULL,
  `Description` mediumtext,
  `Template` varchar(255) DEFAULT NULL,
  `TemplateVersion` varchar(255) DEFAULT NULL,
  `RemindDays` int(11) NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `InitialActionButtonText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinition`
--

LOCK TABLES `WorkflowDefinition` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinition_Groups`
--

DROP TABLE IF EXISTS `WorkflowDefinition_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinition_Groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinition_Groups`
--

LOCK TABLES `WorkflowDefinition_Groups` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinition_Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinition_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinition_Users`
--

DROP TABLE IF EXISTS `WorkflowDefinition_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinition_Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowDefinitionID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `WorkflowDefinitionID` (`WorkflowDefinitionID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinition_Users`
--

LOCK TABLES `WorkflowDefinition_Users` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinition_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinition_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstance`
--

DROP TABLE IF EXISTS `WorkflowInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance') DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowInstance',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(128) DEFAULT NULL,
  `WorkflowStatus` enum('Active','Paused','Complete','Cancelled') DEFAULT 'Active',
  `TargetClass` varchar(255) DEFAULT NULL,
  `TargetID` int(11) NOT NULL DEFAULT '0',
  `DefinitionID` int(11) NOT NULL DEFAULT '0',
  `CurrentActionID` int(11) NOT NULL DEFAULT '0',
  `InitiatorID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `DefinitionID` (`DefinitionID`),
  KEY `CurrentActionID` (`CurrentActionID`),
  KEY `InitiatorID` (`InitiatorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstance`
--

LOCK TABLES `WorkflowInstance` WRITE;
/*!40000 ALTER TABLE `WorkflowInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstance_Groups`
--

DROP TABLE IF EXISTS `WorkflowInstance_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstance_Groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowInstanceID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `WorkflowInstanceID` (`WorkflowInstanceID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstance_Groups`
--

LOCK TABLES `WorkflowInstance_Groups` WRITE;
/*!40000 ALTER TABLE `WorkflowInstance_Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstance_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstance_Users`
--

DROP TABLE IF EXISTS `WorkflowInstance_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstance_Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowInstanceID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `WorkflowInstanceID` (`WorkflowInstanceID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstance_Users`
--

LOCK TABLES `WorkflowInstance_Users` WRITE;
/*!40000 ALTER TABLE `WorkflowInstance_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstance_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTransition`
--

DROP TABLE IF EXISTS `WorkflowTransition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTransition` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition') DEFAULT 'Symbiote\\AdvancedWorkflow\\DataObjects\\WorkflowTransition',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(128) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Type` enum('Active','Passive') DEFAULT 'Active',
  `ActionID` int(11) NOT NULL DEFAULT '0',
  `NextActionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `ActionID` (`ActionID`),
  KEY `NextActionID` (`NextActionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTransition`
--

LOCK TABLES `WorkflowTransition` WRITE;
/*!40000 ALTER TABLE `WorkflowTransition` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowTransition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTransition_Groups`
--

DROP TABLE IF EXISTS `WorkflowTransition_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTransition_Groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowTransitionID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `WorkflowTransitionID` (`WorkflowTransitionID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTransition_Groups`
--

LOCK TABLES `WorkflowTransition_Groups` WRITE;
/*!40000 ALTER TABLE `WorkflowTransition_Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowTransition_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTransition_Users`
--

DROP TABLE IF EXISTS `WorkflowTransition_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTransition_Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WorkflowTransitionID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `WorkflowTransitionID` (`WorkflowTransitionID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTransition_Users`
--

LOCK TABLES `WorkflowTransition_Users` WRITE;
/*!40000 ALTER TABLE `WorkflowTransition_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowTransition_Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-20 11:36:09

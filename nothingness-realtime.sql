-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nothingness-realtime
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,POSTGRESQL' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "ar_internal_metadata"
--

DROP TABLE IF EXISTS "ar_internal_metadata";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "ar_internal_metadata" (
  "key" varchar(255) NOT NULL,
  "value" varchar(255) DEFAULT NULL,
  "created_at" datetime NOT NULL,
  "updated_at" datetime NOT NULL,
  PRIMARY KEY ("key")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "ar_internal_metadata"
--

LOCK TABLES "ar_internal_metadata" WRITE;
/*!40000 ALTER TABLE "ar_internal_metadata" DISABLE KEYS */;
INSERT INTO "ar_internal_metadata" VALUES ('environment','development','2016-05-08 18:10:16','2016-05-08 18:10:16');
/*!40000 ALTER TABLE "ar_internal_metadata" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "comments"
--

DROP TABLE IF EXISTS "comments";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "comments" (
  "id" int(11) NOT NULL,
  "content" text,
  "thread_id" int(11) DEFAULT NULL,
  "parent_id" int(11) DEFAULT NULL,
  "created_at" datetime NOT NULL,
  "updated_at" datetime NOT NULL,
  "image_file_name" varchar(255) DEFAULT NULL,
  "image_content_type" varchar(255) DEFAULT NULL,
  "image_file_size" int(11) DEFAULT NULL,
  "image_updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "comments"
--

LOCK TABLES "comments" WRITE;
/*!40000 ALTER TABLE "comments" DISABLE KEYS */;
/*!40000 ALTER TABLE "comments" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "posts"
--

DROP TABLE IF EXISTS "posts";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "posts" (
  "id" int(11) NOT NULL,
  "title" varchar(255) DEFAULT NULL,
  "opening_post" text,
  "score" int(11) NOT NULL DEFAULT '1',
  "created_at" datetime NOT NULL,
  "updated_at" datetime NOT NULL,
  "image_file_name" varchar(255) DEFAULT NULL,
  "image_content_type" varchar(255) DEFAULT NULL,
  "image_file_size" int(11) DEFAULT NULL,
  "image_updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "posts"
--

LOCK TABLES "posts" WRITE;
/*!40000 ALTER TABLE "posts" DISABLE KEYS */;
/*!40000 ALTER TABLE "posts" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "schema_migrations"
--

DROP TABLE IF EXISTS "schema_migrations";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "schema_migrations" (
  "version" varchar(255) NOT NULL,
  PRIMARY KEY ("version")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "schema_migrations"
--

LOCK TABLES "schema_migrations" WRITE;
/*!40000 ALTER TABLE "schema_migrations" DISABLE KEYS */;
INSERT INTO "schema_migrations" VALUES ('20160508175812'),('20160508175904'),('20160508180334'),('20160508180524'),('20160510055057');
/*!40000 ALTER TABLE "schema_migrations" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-16 16:57:44

-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: roischema
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `vw_power_users`
--

DROP TABLE IF EXISTS `vw_power_users`;
/*!50001 DROP VIEW IF EXISTS `vw_power_users`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_power_users` AS SELECT 
 1 AS `employee_id`,
 1 AS `name`,
 1 AS `department`,
 1 AS `designation`,
 1 AS `tools_used`,
 1 AS `total_usage_minutes`,
 1 AS `total_tasks_completed`,
 1 AS `avg_quality_score`,
 1 AS `avg_weekly_time_saved`,
 1 AS `total_hours_used`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_employee_adoption`
--

DROP TABLE IF EXISTS `vw_employee_adoption`;
/*!50001 DROP VIEW IF EXISTS `vw_employee_adoption`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_employee_adoption` AS SELECT 
 1 AS `employee_id`,
 1 AS `name`,
 1 AS `department`,
 1 AS `designation`,
 1 AS `salary`,
 1 AS `tools_assigned`,
 1 AS `active_tools`,
 1 AS `total_cost_incured`,
 1 AS `avg_weekly_time_saved`,
 1 AS `avg_quality_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_tool_performance`
--

DROP TABLE IF EXISTS `vw_tool_performance`;
/*!50001 DROP VIEW IF EXISTS `vw_tool_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_tool_performance` AS SELECT 
 1 AS `tool_id`,
 1 AS `tool_name`,
 1 AS `vendor`,
 1 AS `category`,
 1 AS `total_users`,
 1 AS `avg_time_saved_hours`,
 1 AS `avg_quality_score`,
 1 AS `total_cost`,
 1 AS `total_value_generated`,
 1 AS `roi_percentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_department_roi`
--

DROP TABLE IF EXISTS `vw_department_roi`;
/*!50001 DROP VIEW IF EXISTS `vw_department_roi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_department_roi` AS SELECT 
 1 AS `department`,
 1 AS `total_employees`,
 1 AS `ai_users`,
 1 AS `adoption_rate`,
 1 AS `total_ai_cost`,
 1 AS `productivity_value`,
 1 AS `net_roi`,
 1 AS `roi_percentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_monthly_usage_trends`
--

DROP TABLE IF EXISTS `vw_monthly_usage_trends`;
/*!50001 DROP VIEW IF EXISTS `vw_monthly_usage_trends`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_monthly_usage_trends` AS SELECT 
 1 AS `month`,
 1 AS `tool_name`,
 1 AS `active_users`,
 1 AS `total_sessions`,
 1 AS `total_minutes`,
 1 AS `total_tasks`,
 1 AS `acceptance_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_power_users`
--

/*!50001 DROP VIEW IF EXISTS `vw_power_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_power_users` AS select `e`.`employee_id` AS `employee_id`,`e`.`name` AS `name`,`e`.`department` AS `department`,`e`.`designation` AS `designation`,count(distinct `dul`.`tool_id`) AS `tools_used`,sum(`dul`.`total_time_minutes`) AS `total_usage_minutes`,sum(`dul`.`tasks_completed`) AS `total_tasks_completed`,round(avg(`pm`.`quality_score`),2) AS `avg_quality_score`,round(avg(`pm`.`time_saved_hours`),2) AS `avg_weekly_time_saved`,round((sum(`dul`.`total_time_minutes`) / 60),1) AS `total_hours_used` from ((`employees` `e` join `daily_usage_logs` `dul` on((`e`.`employee_id` = `dul`.`employee_id`))) join `productivity_metrics` `pm` on((`e`.`employee_id` = `pm`.`employee_id`))) group by `e`.`employee_id`,`e`.`name`,`e`.`department`,`e`.`designation` having (sum(`dul`.`total_time_minutes`) > 500) order by `total_usage_minutes` desc limit 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_employee_adoption`
--

/*!50001 DROP VIEW IF EXISTS `vw_employee_adoption`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_employee_adoption` AS select `e`.`employee_id` AS `employee_id`,`e`.`name` AS `name`,`e`.`department` AS `department`,`e`.`designation` AS `designation`,`e`.`salary` AS `salary`,count(distinct `eta`.`tool_id`) AS `tools_assigned`,count(distinct (case when (`eta`.`status` = 'Active') then `eta`.`tool_id` end)) AS `active_tools`,coalesce(sum(distinct `ct`.`total_cost`),0) AS `total_cost_incured`,coalesce(avg(`pm`.`time_saved_hours`),0) AS `avg_weekly_time_saved`,coalesce(avg(`pm`.`quality_score`),0) AS `avg_quality_score` from (((`employees` `e` left join `employee_tool_assignments` `eta` on((`e`.`employee_id` = `eta`.`employee_id`))) left join `cost_tracking` `ct` on(((`e`.`employee_id` = `ct`.`employee_id`) and (month(`ct`.`month_year`) = month(curdate()))))) left join `productivity_metrics` `pm` on((`e`.`employee_id` = `pm`.`employee_id`))) group by `e`.`employee_id`,`e`.`name`,`e`.`department`,`e`.`designation`,`e`.`salary` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_tool_performance`
--

/*!50001 DROP VIEW IF EXISTS `vw_tool_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_tool_performance` AS select `at`.`tool_id` AS `tool_id`,`at`.`tool_name` AS `tool_name`,`at`.`vendor` AS `vendor`,`at`.`category` AS `category`,count(distinct `eta`.`employee_id`) AS `total_users`,coalesce(avg(`pm`.`time_saved_hours`),0) AS `avg_time_saved_hours`,coalesce(avg(`pm`.`quality_score`),0) AS `avg_quality_score`,coalesce(sum(`ct`.`total_cost`),0) AS `total_cost`,coalesce((sum(`pm`.`time_saved_hours`) * 500),0) AS `total_value_generated`,(case when (sum(`ct`.`total_cost`) > 0) then round(((((sum(`pm`.`time_saved_hours`) * 500) - sum(`ct`.`total_cost`)) / sum(`ct`.`total_cost`)) * 100),2) else 0 end) AS `roi_percentage` from (((`ai_tools` `at` left join `employee_tool_assignments` `eta` on((`at`.`tool_id` = `eta`.`tool_id`))) left join `productivity_metrics` `pm` on((`eta`.`employee_id` = `pm`.`employee_id`))) left join `cost_tracking` `ct` on(((`eta`.`employee_id` = `ct`.`employee_id`) and (`at`.`tool_id` = `ct`.`tool_id`)))) group by `at`.`tool_id`,`at`.`tool_name`,`at`.`vendor`,`at`.`category` order by `roi_percentage` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_department_roi`
--

/*!50001 DROP VIEW IF EXISTS `vw_department_roi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_department_roi` AS select `e`.`department` AS `department`,count(distinct `e`.`employee_id`) AS `total_employees`,count(distinct (case when (`eta`.`assignment_id` is not null) then `e`.`employee_id` end)) AS `ai_users`,round(((count(distinct (case when (`eta`.`assignment_id` is not null) then `e`.`employee_id` end)) * 100.0) / count(distinct `e`.`employee_id`)),2) AS `adoption_rate`,coalesce(sum(`ct`.`total_cost`),0) AS `total_ai_cost`,coalesce((sum(`pm`.`time_saved_hours`) * 500),0) AS `productivity_value`,coalesce(((sum(`pm`.`time_saved_hours`) * 500) - sum(`ct`.`total_cost`)),0) AS `net_roi`,(case when (sum(`ct`.`total_cost`) > 0) then round(((((sum(`pm`.`time_saved_hours`) * 500) - sum(`ct`.`total_cost`)) / sum(`ct`.`total_cost`)) * 100),2) else 0 end) AS `roi_percentage` from (((`employees` `e` left join `employee_tool_assignments` `eta` on((`e`.`employee_id` = `eta`.`employee_id`))) left join `cost_tracking` `ct` on((`e`.`employee_id` = `ct`.`employee_id`))) left join `productivity_metrics` `pm` on((`e`.`employee_id` = `pm`.`employee_id`))) group by `e`.`department` order by `roi_percentage` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_monthly_usage_trends`
--

/*!50001 DROP VIEW IF EXISTS `vw_monthly_usage_trends`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_monthly_usage_trends` AS select date_format(`dul`.`usage_date`,'%Y-%m') AS `month`,`at`.`tool_name` AS `tool_name`,count(distinct `dul`.`employee_id`) AS `active_users`,sum(`dul`.`sessions_count`) AS `total_sessions`,sum(`dul`.`total_time_minutes`) AS `total_minutes`,sum(`dul`.`tasks_completed`) AS `total_tasks`,round(avg(((`dul`.`completions_accepted` * 100.0) / nullif(`dul`.`prompts_count`,0))),2) AS `acceptance_rate` from (`daily_usage_logs` `dul` join `ai_tools` `at` on((`dul`.`tool_id` = `at`.`tool_id`))) group by date_format(`dul`.`usage_date`,'%Y-%m'),`at`.`tool_name` order by `month` desc,`total_sessions` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-10 14:54:26

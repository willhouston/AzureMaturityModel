
/*
DELETE FROM Solution
DELETE FROM Team
DELETE FROM Organisation

DELETE FROM MaturityMetric
DELETE FROM MetricCategory

*/

-- SELECT * FROM Organisation

--DECLARE @OrgId AS UNIQUEIDENTIFIER = NEWID()

DECLARE @OrgId AS UNIQUEIDENTIFIER = '06116E2E-1DC5-422C-B3F1-93CE2D6018D7'
DECLARE @TeamId INT
DECLARE @SolutionId INT

--SELECT @OrgId

IF NOT EXISTS(SELECT 1 FROM Organisation)
BEGIN

	INSERT INTO Organisation([OrganisationId],[OrganisationName])
	VALUES(@OrgId, 'Organisation 1')
 
 END


 IF NOT EXISTS (SELECT 1 FROM Team)
 BEGIN
	INSERT INTO Team (TeamId, OrganisationId, TeamName)
	VALUES (1, @OrgId, 'AzMM Team')
END

IF NOT EXISTS (SELECT 1 FROM Solution)
BEGIN
	INSERT INTO Solution (SolutionId, TeamId, SolutionName, InternalRef, StatusId, [Description], LastUpdate)
	VALUES(1, 1, 'Azure Maturity Model', 'CW001', 1, 'The baseline solution for the Azure Maturity Model platform', GETDATE())

	INSERT INTO Solution (SolutionId, TeamId, SolutionName, InternalRef, StatusId, [Description], LastUpdate)
	VALUES(2, 1, 'Test solution', 'CW002', 1, 'Test solution for development', GETDATE())

	INSERT INTO Solution (SolutionId, TeamId, SolutionName, InternalRef, StatusId, [Description], LastUpdate)
	VALUES(3, 1, 'Test solution 2', 'CW002', 1, 'Another test solution for development', GETDATE())
END


IF NOT EXISTS (SELECT 1 FROM MetricCategory)
 BEGIN
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName, SortKey) VALUES (1, 'Environment Management', 1)
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName, SortKey) VALUES (2, 'CI/CD Pipeline', 2)
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName, SortKey) VALUES (3, 'Release Management', 3)
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName, SortKey) VALUES (4, 'Alerting & Monitoring', 4)
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName, SortKey) VALUES (5, 'Disaster Recovery', 5)
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName, SortKey) VALUES (6, 'Security Governance', 6)
END

IF NOT EXISTS (SELECT 1 FROM MaturityMetric)
BEGIN
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(1,1,'ARM Template defined', 'Description', 10)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(2,1,'DevOps Pipeline rolls out environments', 'Description',20)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(3,1,'Organised by Resource Group', 'Description', 30)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(4,1,'SQL governance implemented', 'Description', 40)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(5,1,'Legacy assets decommissioned', 'Description', 50)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(6,1,'Centralised email platform', 'Description', 60)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(7,2,'Config captured', 'Description', 10)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(8,2,'Codebase source controlled', 'Description', 20)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(9,2,'Build and packaging implemented', 'Description', 30)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(10,2,'Test automation CI integrated', 'Description', 40)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(11,2,'App deployment automated', 'Description', 50)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(12,2,'Smoke tests defined', 'Description', 60)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(13,2,'Code versioning strategy defined', 'Description', 70)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(14,2,'Database release automated', 'Description', 80)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(15,2,'DNS automation completed', 'Description', 90)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(16,3,'Approval gates in place', 'Description', 10)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(17,3,'Database refresh mechanism in place', 'Description', 20)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(18,3,'Data obfuscation in place', 'Description', 30)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(19,3,'Data classification complete', 'Description', 40)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(20,4,'Requirements baselined', 'Description', 10)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(21,4,'Telemetry emission implemented', 'Description', 20)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(22,4,'Alerting directed to support groups', 'Description', 30)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(23,5,'DR approach business agreed', 'Description', 10)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(24,5,'Technical solution implemented', 'Description', 20)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(25,5,'DR solution successfully tested', 'Description', 30)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(26,6,'WAF enabled', 'Description', 10)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(27,6,'Dynamic/static code scanning', 'Description', 20)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(28,6,'Privileged access security managed', 'Description', 30)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(29,6,'TLS 1.2 enabled', 'Description', 40)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(30,6,'KeyVault sourced sensitive values', 'Description', 50)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(31,6,'SQL accounts under DBA control', 'Description', 60)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(32,6,'SIEM application logs imtegrated', 'Description', 70)
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description], SortKey) VALUES(33,6,'SIEM database logs integrated', 'Description', 80)
END

IF NOT EXISTS (SELECT 1 FROM MaturityLevel)
BEGIN
	INSERT INTO MaturityLevel(MaturityLevelId, MaturityLevelName) VALUES(0, 'N/A')
	INSERT INTO MaturityLevel(MaturityLevelId, MaturityLevelName) VALUES(1, 'Not started')
	INSERT INTO MaturityLevel(MaturityLevelId, MaturityLevelName) VALUES(2, 'In progress')
	INSERT INTO MaturityLevel(MaturityLevelId, MaturityLevelName) VALUES(3, 'Complete')
END

-- Populate all solutions with all metrics, not started
IF NOT EXISTS (SELECT 1 FROM [SolutionMetric])
BEGIN
	INSERT INTO [dbo].[SolutionMetric] (SolutionId, MaturityMetricId, MaturityLevelId, EnvironmentTag)
	SELECT
		s.SolutionId
		,m.MaturityMetricId
		,1
		,'Development'
	FROM Solution s
		CROSS JOIN MaturityMetric m 

END

/*

 SELECT * FROM Organisation
 SELECT * FROM Team
 SELECT * FROM Solution

 SELECT * FROM MetricCategory
 SELECT * FROM MaturityMetric
 */
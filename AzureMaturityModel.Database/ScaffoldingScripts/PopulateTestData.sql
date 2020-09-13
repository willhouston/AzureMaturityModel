
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
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName) VALUES (1, 'Environment Management')
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName) VALUES (2, 'CI/CD Pipeline')
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName) VALUES (3, 'Release Management')
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName) VALUES (4, 'Alerting & Monitoring')
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName) VALUES (5, 'Disaster Recovery')
	INSERT INTO MetricCategory (MetricCategoryId, MetricCategoryName) VALUES (6, 'Security Governance')
END

IF NOT EXISTS (SELECT 1 FROM MaturityMetric)
BEGIN
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(1,1,'ARM Template defined', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(2,1,'DevOps Pipeline rolls out environments', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(3,1,'Organised by Resource Group', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(4,1,'SQL governance implemented', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(5,1,'Legacy assets decommissioned', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(6,1,'Centralised email platform', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(7,2,'Config captured', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(8,2,'Codebase source controlled', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(9,2,'Build and packaging implemented', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(10,2,'Test automation CI integrated', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(11,2,'App deployment automated', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(12,2,'Smoke tests defined', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(13,2,'Code versioning strategy defined', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(14,2,'Database release automated', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(15,2,'DNS automationm completed', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(16,3,'Approval gates in place', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(17,3,'Database refresh mechanism in place', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(18,3,'Data obfuscation in place', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(19,3,'Data classification complete', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(20,4,'Requirements baselined', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(21,4,'Telemetry emission implemented', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(22,4,'Alerting directed to support groups', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(23,5,'DR approach business agreed', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(23,5,'Technical solution implemented', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(23,5,'DR solution successfully tested', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(24,6,'WAF enabled', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(25,6,'Dynamic/static code scanning', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(26,6,'Privileged access security managed', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(27,6,'TLS 1.2 enabled', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(28,6,'KeyVault sourced sensitive values', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(29,6,'SQL accounts under DBA control', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(30,6,'SIEM application logs imtegrated', 'Description')
	INSERT INTO MaturityMetric(MaturityMetricId, MetricCategoryId, MaturityMetricName, [Description]) VALUES(31,6,'SIEM database logs integrated', 'Description')
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
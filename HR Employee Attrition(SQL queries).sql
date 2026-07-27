-- Total Number of Employees
SELECT COUNT(*) AS Total_Employees
FROM emp_attrition;

-- Overall Attrition Rate 
SELECT ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2)
AS Attrition_Rate 
FROM emp_attrition;

-- Department-Wise Employee Count
SELECT Department,
	COUNT(*) AS Employee_Count 
FROM emp_attrition
GROUP BY Department
ORDER BY Employee_Count DESC;

-- Department-Wise Attrition Rate 
SELECT Department,
	COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Attrition_Count,
    ROUND(
		COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*),2)
        AS Attrition_Rate
FROM emp_attrition
GROUP BY Department;

-- Job Role With the Highest Attrition
SELECT JobRole,
	COUNT(*) AS Attrition_COUNT
FROM emp_attrition
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Attrition_Count DESC;

-- Average Monthly Income by Department
SELECT Department,
	ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM emp_attrition
GROUP BY Department
ORDER BY Avg_Salary DESC;

-- Average Age by Department
SELECT Department,
	ROUND(AVG(Age),1) AS Average_Age 
FROM emp_attrition
GROUP BY Department;

-- Gender Distribution 
SELECT Gender,
	COUNT(*) AS Employee_Count
FROM emp_attrition
GROUP BY Gender;

-- Attrition by Gender 
SELECT Gender, Attrition,
	COUNT(*) AS Employees
FROM emp_attrition
GROUP BY Gender, Attrition;

-- Average Years at Company by Department 
SELECT Department,
	ROUND(AVG(YearsAtCompany),2) AS Avg_Years
FROM emp_attrition
GROUP BY Department;

-- Employees Working Overtime
SELECT Overtime,
	COUNT(*) AS Employee_Count
FROM emp_attrition
GROUP BY Overtime;

-- Attrition among Employees Working Overtime
SELECT Overtime,
	COUNT(*) AS Attrition_Count
FROM emp_attrition
WHERE Attrition = 'Yes'
GROUP BY Overtime;

-- Average Job Satisfaction by Department 
SELECT Department,
	ROUND(AVG(JobSatisfaction),2) AS Avg_Job_Satisfaction
FROM emp_attrition
GROUP BY Department;

-- Top 10 Highest-Paid Employees
SELECT EmployeeNumber, JobRole, MonthlyIncome 
FROM emp_attrition
ORDER BY MonthlyIncome DESC
LIMIT 10;

-- Average Salary by JobRole
SELECT JobRole,
	ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM emp_attrition
GROUP BY JobRole
ORDER BY Avg_Salary DESC;

-- Employees With More Than 10 Years At the Company
SELECT EmployeeNumber, JobRole, YearsAtCompany
FROM emp_attrition
WHERE YearsAtCompany > 10;

-- Attrition by Marital Status
SELECT MaritalStatus,
	COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Attrition_Count
FROM emp_attrition
GROUP BY MaritalStatus;

-- Average Performance Rating by Department
SELECT Department,
	ROUND(AVG(PerformanceRating),2) AS Avg_Performance
FROM emp_attrition
group by Department;

-- Employees Who Haven't Been Promoted in Over 5 Years 
SELECT EmployeeNumber, JobRole, YearsSinceLastPromotion 
FROM emp_attrition
WHERE YearsSinceLastPromotion > 5;

-- Top 5 Job Roles With Highest Average Income 
SELECT JobRole,
	ROUND(AVG(MonthlyIncome),2) AS Avg_Income 
FROM emp_attrition
GROUP BY JobRole 
ORDER BY Avg_Income DESC
LIMIT 5;

















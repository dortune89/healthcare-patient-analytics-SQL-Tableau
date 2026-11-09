

SELECT 
    Test_Results,
    COUNT(*) AS Total_Patients,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dbo.healthcare_clean2), 2) AS Percentage
FROM dbo.healthcare_clean2
GROUP BY Test_Results
ORDER BY Total_Patients DESC;
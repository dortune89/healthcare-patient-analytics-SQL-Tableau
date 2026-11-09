

SELECT 
    Insurance_Provider,
    COUNT(*) AS TotalPatient,
    ROUND(AVG(BillingAmount),2) AS AvgBillingAmount,
    ROUND(SUM(BillingAmount),2) AS TotalSum

FROM dbo.healthcare_clean2

GROUP BY Insurance_Provider

ORDER BY TotalSum DESC
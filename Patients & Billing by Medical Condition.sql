
-- Patients & Billing by Medical Condition --

SELECT 

    Medical_Condition,
    COUNT(*) AS TotalPatients,
    ROUND(AVG(BillingAmount),2) AS AvgBillingAmount,
    ROUND(AVG(LengthOfStay),1) AS AvgStay
FROM dbo.healthcare_clean2

GROUP BY Medical_Condition

ORDER BY TotalPatients DESC
SELECT 
    ROUND(AVG(Age),1) AS AvgAge,
    ROUND(AVG(BillingAmount),2) AS AvgBillingAmount,
    ROUND(SUM(BillingAmount),2) AS TotalBillingAmount,
    ROUND(AVG(LengthOfStay),2) AS AvgLengthStay




FROM dbo.healthcare_clean2
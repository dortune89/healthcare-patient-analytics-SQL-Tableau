
-- Admission Type Summary --

SELECT 

    Admission_Type,
    ROUND(AVG(BillingAmount),2) AS AvgBillingAmount,
    ROUND(AVG(LengthOfStay),1) AS AvgStay


FROM dbo.healthcare_clean2

GROUP BY Admission_Type

ORDER BY AvgBillingAmount DESC

 
 -- Cleaning Data --

 SELECT 
    name,
    Age,
    CASE 
        WHEN Age < 18 THEN 'Child'
        WHEN Age <= 40 THEN 'Young Adult'
        WHEN Age <= 60 THEN 'Adult'
        ELSE 'Senior'
    END AS AgeGroup,
    Gender,
    Blood_Type,
    Medical_Condition,
    Date_of_Admission,
    Doctor,
    Hospital,
    Insurance_Provider,
    CASE 
        WHEN Billing_Amount < 0 THEN 0
        ELSE Billing_Amount
    END AS BillingAmount,
    Room_Number,
    Admission_Type,
    Discharge_Date,
    Medication,
    Test_Results,
    DATEDIFF(DAY, Date_of_Admission, Discharge_Date) AS LengthOfStay
INTO dbo.healthcare_clean2
FROM dbo.healthcare;
-- ==============================================================================
-- Question 1  What are the most common medical conditions among patients?
-- ==============================================================================
select
 `Medical Condition`,
count(*) as total_patients
from healthcare_dataset
group by `Medical Condition`
order by total_patients DESC;

-- =============================================================================
-- Question 2 Which hospitals have admitted the highest number of patients?
-- =============================================================================
select Hospital,
count(*) as number_of_patients
from healthcare_dataset
group by Hospital
order by number_of_patients desc;

-- ==========================================================================
-- Question 3 Which doctors have treated the highest number of patients
-- ==========================================================================
select Doctor,
count(*) as number_of_patients
from healthcare_dataset
group by Doctor
order by number_of_patients desc;

-- ============================================================================
-- Question 4 What is the average billing amount for each medical condition 
-- ============================================================================
select `medical condition`,
avg(`Billing Amount`) as average_billing_amount
from healthcare_dataset
group by `medical condition`
order by average_billing_amount desc;

-- ====================================================================================
-- Question 5 Which insurance providers cover the highest number of patients?
-- =======================================================================================
select `insurance provider`,
count(*) as number_of_patients
from healthcare_dataset
group by `insurance provider`
order by number_of_patients desc;

-- =====================================================================
-- Question 6 Which medications are prescribed most frequently
-- ======================================================================
select medication,
count(*) as total_prescriptions
from healthcare_dataset
group by Medication
order by total_prescriptions desc;
-- ======================================================================================================
-- Question 7 Find patients whose billing amount is higher than the overall average billing amount 
-- =======================================================================================================
select name,
`billing amount`
from healthcare_dataset
where `billing amount` >
(
select 
avg(`billing amount`)
from healthcare_dataset);
-- ==========================================================================================================================================
-- Question 8 Using a CTE,identify the medical conditions whose average billing amount is higher than the overall average billing amount
-- ===========================================================================================================================================
With medical_condition_billing as(
select`medical condition`,
avg(`Billing Amount`)as Average_Billing_Amount
from healthcare_dataset
group by `medical condition`
)
select `medical condition`,
Average_Billing_Amount
from medical_condition_billing
where Average_billing_amount >
(select
 avg(`Billing Amount`)
from healthcare_dataset);





 












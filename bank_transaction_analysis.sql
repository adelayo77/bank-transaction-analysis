-- ===========================================================================================
-- Q1 Which merchants generate the highest total transaction value?
-- ============================================================================================
select MerchantID,
sum(TransactionAmount) as Total_Transaction_Value
from bank_transactions_data_2
group by MerchantID
order by Total_Transaction_Value desc;

-- ========================================================================================
-- Q2 Which transaction Channels are most frequently used,and how much transaction value does each channel generate
-- ========================================================================================
select Channel,
count(*) as No_of_transaction,
sum(TransactionAmount) as Total_Transaction_value 
from bank_transactions_data_2
group by Channel
order by No_of_transaction desc;

-- ===================================================================================================
-- Q3 Which locations generate the highest total transaction value? 
-- ===================================================================================================
 select Location,
 sum(TransactionAmount) as Total_Transaction_Value
 from bank_transactions_data_2
 group by Location
 order by Total_Transaction_Value desc;
 -- ===========================================================================
 -- Q4 Which customer occupations contribute the most to the bank's transaction value?
 -- ============================================================================
 select CustomerOccupation,
 sum(TransactionAmount) as Total_Transaction_Value
 from bank_transactions_data_2
 group by CustomerOccupation
 order by Total_Transaction_Value desc;
 
 -- =======================================================================
 -- Q5 Which  customer age groups contribute the most to the bank's transaction value?
-- ========================================================================
select 
case 
when CustomerAge between 18 and 25 then '18-25'
when CustomerAge between 26 and 35 then '26-35'
when CustomerAge between 36 and 45 then '36-45'
when CustomerAge between 46 and 55 then '46-55'
when CustomerAge between 56 and 65 then '56-65'
else '66+'
end as Age_Group,
sum(TransactionAmount) as Total_Transaction_Value
from bank_transactions_data_2
group by Age_Group
order by Total_Transaction_Value desc; 
-- ========================================================================================================
-- Q6 Which transaction channels have the fastest average transaction processing times?
-- ========================================================================================================
select Channel,
avg(TransactionDuration) Avg_Processing_Time
from bank_transactions_data_2
group by channel
order by Avg_Processing_Time asc;

-- =======================================================================================
-- Q7 Which accounts recorded the highest average login attempts?
-- ========================================================================================
select AccountID,
avg(loginAttempts) as Avg_Login_Attempts
from bank_transactions_data_2
group by AccountID
order by Avg_Login_Attempts desc
LIMIT 10;

-- ============================================================================================
-- Q8 Which accounts generate the highest total transaction value?
-- =============================================================================================
select AccountID,
sum(TransactionAmount) as Total_Transaction_Value
from bank_transactions_data_2
group by AccountID
order by Total_Transaction_Value desc;
-- =========================================================================================
-- Q9 Who are the top three highest-value accounts within each location? 
-- =========================================================================================
with Accountvalue as (
select Location,
AccountID,
sum(TransactionAmount) as Total_Transaction_Value
from bank_transactions_data_2
group by Location,  AccountID),
RankedAccount as (
select*,
row_number() over(partition by location
order by Total_Transaction_Value desc) as Rank_No
from Accountvalue)
select * 
from RankedAccount
where Rank_NO <=3;






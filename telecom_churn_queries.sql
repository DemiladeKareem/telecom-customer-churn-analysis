SELECT COUNT(*) AS Total_Customers
FROM customer_churn;

SELECT customerID,
       COUNT(*) AS Duplicate_Count
FROM customer_churn
GROUP BY customerID
HAVING COUNT(*) > 1;

SELECT
SUM(customerID IS NULL) AS Missing_CustomerID,
SUM(TotalCharges IS NULL) AS Missing_TotalCharges
FROM customer_churn;

SELECT
    Churn,
    COUNT(*) AS Customers,
    ROUND(COUNT(*)*100.0/
          (SELECT COUNT(*) FROM customer_churn),2) AS Percentage
FROM customer_churn
GROUP BY Churn;

SELECT
ROUND(SUM(TotalCharges),2) AS Revenue_Lost
FROM customer_churn
WHERE Churn='Yes';

SELECT
Contract,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Churn_Rate
FROM customer_churn
GROUP BY Contract
ORDER BY Churn_Rate DESC;

SELECT
Contract,
ROUND(SUM(MonthlyCharges),2) AS Monthly_Revenue
FROM customer_churn
GROUP BY Contract;

SELECT
CASE
WHEN Tenure <= 12 THEN '0-12 Months'
WHEN Tenure <= 24 THEN '13-24 Months'
WHEN Tenure <= 48 THEN '25-48 Months'
ELSE '49+ Months'
END AS Tenure_Bucket,

COUNT(*) AS Customers,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Churn_Rate

FROM customer_churn
GROUP BY Tenure_Bucket
ORDER BY Churn_Rate DESC;

SELECT
PaymentMethod,
COUNT(*) AS Customers,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Churn_Rate

FROM customer_churn
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;

SELECT
PaperlessBilling,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Churn_Rate

FROM customer_churn
GROUP BY PaperlessBilling;

SELECT
InternetService,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Churn_Rate

FROM customer_churn
GROUP BY InternetService
ORDER BY Churn_Rate DESC;

SELECT
TechSupport,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Churn_Rate

FROM customer_churn
GROUP BY TechSupport
ORDER BY Churn_Rate DESC;

SELECT
OnlineSecurity,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Churn_Rate

FROM customer_churn
GROUP BY OnlineSecurity
ORDER BY Churn_Rate DESC;

SELECT
SeniorCitizen,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Churn_Rate

FROM customer_churn
GROUP BY SeniorCitizen;

SELECT
Dependents,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Churn_Rate

FROM customer_churn
GROUP BY Dependents;

SELECT

COUNT(*) AS Customers,

SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS Churn_Rate

FROM customer_churn

WHERE Contract='Month-to-month'
AND InternetService='Fiber optic'
AND PaymentMethod='Electronic check';

SELECT
customerID,
Contract,
PaymentMethod,
MonthlyCharges,
Tenure,
Churn

FROM customer_churn

WHERE Contract='Month-to-month'
AND Tenure < 12
AND MonthlyCharges >
(
SELECT AVG(MonthlyCharges)
FROM customer_churn
)

ORDER BY MonthlyCharges DESC;
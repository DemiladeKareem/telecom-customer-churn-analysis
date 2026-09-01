# Telecom Churn Analytics

### Drivers, Customer Risk & Retention Opportunities

<p align="center">
  <strong>Turning customer data into actionable retention intelligence</strong>
</p>

<p align="center">
  SQL • Power BI • DAX • Power Query
</p>

---

## Executive Summary

Customer churn is one of the most significant challenges facing subscription-based businesses. This project analyzes **7,043 telecommunications customer accounts** to identify the primary drivers of churn, quantify revenue risk, and uncover actionable retention opportunities.

Using **SQL for data exploration and analysis** and **Power BI for interactive business intelligence**, the project examines churn across contract structures, customer lifecycle stages, payment methods, and service adoption.

The analysis identified an overall churn rate of **26.54%**, representing **1,869 lost customers**, while revealing specific customer segments that require priority retention attention.

> **Key finding:** The highest-risk segment combines **Month-to-Month contracts, Fiber Optic Internet, and Electronic Check payments**, with a churn rate of **60.37%**.

---

## Project Snapshot

| Metric                        |                                              Result |
| ----------------------------- | --------------------------------------------------: |
| Total Customers               |                                           **7,043** |
| Churned Customers             |                                           **1,869** |
| Overall Churn Rate            |                                          **26.54%** |
| Highest-Risk Contract Type    |                                  **Month-to-Month** |
| Highest-Risk Payment Method   |                                **Electronic Check** |
| Highest-Risk Customer Cluster | **Month-to-Month + Fiber Optic + Electronic Check** |
| Tools                         |              **SQL • Power BI • DAX • Power Query** |

---

## Business Problem

The telecom company is experiencing significant customer attrition, resulting in recurring revenue loss and increased customer acquisition costs.

Management needs a data-driven understanding of:

* Which customers are most likely to churn
* When churn risk peaks during the customer lifecycle
* Which products and services are associated with stronger retention
* How billing decisions influence customer behavior
* Which customer segments should receive priority intervention

### Project Objective

Transform customer data into actionable retention intelligence that can help the business **identify high-risk customers, prioritize interventions, and improve long-term customer retention and profitability.**

---

## Business Questions

The analysis was designed to answer six key questions:

1. Which contract types generate the highest churn rates?
2. At what stage of the customer lifecycle does churn peak?
3. Do payment methods influence customer retention?
4. Which services contribute most to customer retention?
5. What customer profiles present the highest revenue risk?
6. How can retention efforts be prioritized for maximum business impact?

---

## Dataset

The dataset contains **7,043 customer records** and **21 business attributes** across four major business domains.

### Customer Demographics

* CustomerID
* Gender
* SeniorCitizen
* Partner
* Dependents

### Customer Lifecycle

* Tenure

### Product & Service Adoption

* PhoneService
* MultipleLines
* InternetService
* OnlineSecurity
* OnlineBackup
* DeviceProtection
* TechSupport
* StreamingTV
* StreamingMovies

### Billing & Revenue

* Contract
* PaperlessBilling
* PaymentMethod
* MonthlyCharges
* TotalCharges
* Churn

---

## Tools & Technologies

| Tool                      | Purpose                                                  |
| ------------------------- | -------------------------------------------------------- |
| **SQL / MySQL Workbench** | Data exploration, validation, segmentation, and analysis |
| **Power BI**              | Interactive reporting and business intelligence          |
| **DAX**                   | Measures, KPIs, and analytical calculations              |
| **Power Query**           | Data preparation and transformation                      |

---

# Analytical Approach

The project follows an end-to-end analytical workflow:

**Business Problem**
↓
**Data Audit & Validation**
↓
**SQL Analysis**
↓
**Customer Segmentation**
↓
**DAX Measures & Modeling**
↓
**Power BI Reporting**
↓
**Risk Identification**
↓
**Retention Recommendations**

---

## SQL Analysis

MySQL Workbench was used to:

* Audit data quality
* Validate dataset integrity
* Segment customers by churn behavior
* Identify high-risk customer groups
* Quantify revenue and retention risks

---

## Power BI Development

Power BI was used to:

* Build interactive dashboards
* Create custom DAX measures
* Develop customer risk segmentation
* Analyze retention behavior across multiple dimensions
* Design executive-level reporting pages

---

# Critical Business Insights

## 01. Contract Volatility Is the Largest Churn Driver

Month-to-Month customers experienced a churn rate of **42.71%**, compared with:

* One-Year Contracts: **11.27%**
* Two-Year Contracts: **2.83%**

The analysis indicates a strong relationship between contract commitment and customer retention, with long-term contracts showing substantially lower churn.

---

## 02. The First Year Represents the Highest Risk Period

**55.4% of all churned customers** left within their first 12 months.

Average tenure among churned customers was approximately **4 months**, highlighting onboarding and early customer experience as major areas of retention risk.

---

## 03. Electronic Check Payments Create Significant Friction

Customers paying through Electronic Check exhibited a churn rate of **45.29%**.

Customers using automated payment methods maintained churn rates closer to **15–16%**.

This identifies payment behavior as an important area for further retention intervention.

---

## 04. Service Adoption Strengthens Retention

Customers subscribed to services such as:

* TechSupport
* OnlineSecurity
* DeviceProtection

demonstrated substantially lower churn rates.

The analysis suggests that customers with deeper service adoption may become more embedded within the overall service ecosystem and therefore less likely to leave.

---

## 05. The Highest-Risk Customer Segment

The combination of:

**Month-to-Month Contract + Fiber Optic Internet + Electronic Check Payment**

produced a churn rate of **60.37%**, making it the highest-risk customer segment identified in the analysis.

This segment represents the most immediate opportunity for targeted retention intervention.

---

# Power BI Dashboard

The final Power BI solution consists of **four analytical pages**, moving from executive-level performance monitoring to customer risk analysis and retention decision support.

---

## Page 1 — Executive Churn Overview

Provides a high-level view of:

* Overall churn performance
* Revenue exposure
* Customer segmentation
* Executive KPIs

![Executive Churn Overview](images/dashboard_page1.png)

---

## Page 2 — Customer Risk Analysis

Focuses on:

* Customer tenure patterns
* Revenue behavior
* Risk segmentation
* Retention priority lists

![Customer Risk Analysis](images/dashboard_page2.png)

---

## Page 3 — Service Impact Analysis

Examines:

* Product adoption
* Service stickiness
* Churn reduction drivers
* Customer engagement patterns

![Service Impact Analysis](images/dashboard_page3.png)

---

## Page 4 — Revenue Optimization & Retention Simulator

An interactive decision-support page designed to help management evaluate the potential financial impact of churn reduction initiatives and prioritize retention investments.

### Key capabilities

* What-If Simulation Slider
* Projected Revenue Saved KPI
* Revenue Loss Analysis
* Retention Campaign Targeting

This page extends the solution beyond descriptive reporting by allowing decision-makers to estimate the potential financial impact of retention initiatives before implementation.

![Revenue Optimization & Retention Simulator](images/dashboard_page4.png)

---

# Strategic Recommendations

## 01. Stabilize High-Risk Fiber Customers

Bundle TechSupport and OnlineSecurity incentives into new Fiber Optic subscriptions to increase perceived value and switching costs.

## 02. Promote Auto-Pay Adoption

Offer targeted incentives encouraging Electronic Check users to migrate to automated payment methods.

## 03. Improve First-Year Customer Success

Launch proactive onboarding campaigns during the first **3–6 months** of the customer lifecycle to reduce early-stage attrition.

## 04. Encourage Long-Term Contracts

Provide incentives for Month-to-Month customers willing to transition to annual subscription agreements.

---

# Business Value

This analysis enables retention teams to focus resources on customers most likely to leave rather than applying broad retention campaigns across the entire customer base.

The identified risk patterns can support efforts to:

* Reduce customer acquisition replacement costs
* Improve customer lifetime value (CLV)
* Increase recurring revenue stability
* Optimize retention spending
* Strengthen long-term profitability

---

# Repository Structure

```text
telecom-churn-analytics
│
├── README.md
├── telecom_churn_queries.sql
├── Telecom_Churn_Dashboard.pbix
│
└── images
    ├── dashboard_page1.png
    ├── dashboard_page2.png
    ├── dashboard_page3.png
    └── dashboard_page4.png
```

## Repository Files

| File                           | Description                                             |
| ------------------------------ | ------------------------------------------------------- |
| `README.md`                    | Project documentation and business case study           |
| `telecom_churn_queries.sql`    | Complete SQL analysis script                            |
| `Telecom_Churn_Dashboard.pbix` | Interactive Power BI dashboard                          |
| `images/`                      | Dashboard screenshots used throughout the documentation |

---

## Project Outcome

This project demonstrates an end-to-end approach to **customer churn analytics**, combining SQL analysis, data preparation, DAX, and Power BI to move from raw customer data to actionable retention intelligence.

The solution connects **customer behavior, risk identification, financial exposure, and retention strategy** within a single analytical workflow.

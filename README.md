# 📊 Brazilian E-Commerce SQL Analysis

## 📌 Introduction

This project analyzes the **Brazilian E-Commerce Public Dataset by Olist** using SQL to extract meaningful business insights.
A total of **17 business questions** were solved, covering core metrics, customer behavior, product performance, and advanced analytics.

---

## 🎯 Objectives

* Analyze revenue, orders, and customer distribution
* Identify trends over time
* Understand customer purchasing behavior
* Evaluate product and category performance
* Perform advanced analysis like segmentation and cohort tracking

---

## 🛠 Tools Used

* MySQL
* MySQL Workbench

---

## 📂 Dataset

**Source:** Brazilian E-Commerce Public Dataset by Olist

**Tables Used:**

* `customers`
* `orders`
* `order_items`
* `products`

---

## 📊 Analysis & Insights

### ✅ BASIC (Core Metrics)

**1. Total Revenue:** ₹12,428,396.31
👉 The business generated strong overall revenue, indicating a healthy transaction volume.

**2. Total Orders:** ~99K+
👉 High number of orders shows consistent customer activity.

**3. Total Customers:** 96,096
👉 Large customer base, but needs retention analysis.

**4. Average Order Value (AOV):** ₹125.96
👉 Moderate AOV suggests scope for upselling and bundling strategies.

---

### ⚡ INTERMEDIATE (Business Insights)

**5. Monthly Revenue Trend**
👉 Revenue shows strong growth from 2017 to 2018, peaking around **April 2018 (~₹913K)**.

**6. Monthly Orders**
👉 Order volume follows similar growth trends, confirming business scaling over time.

**7. Highest Revenue Month:** April 2018
👉 Indicates possible seasonal demand or successful campaigns.

**8. Top Customers**
👉 Top customers spend up to ₹6,700+, showing presence of high-value buyers.

**9. One-time vs Repeat Customers**
- One-time Customers: 93,099  
- Repeat Customers: 2,997

👉A very small percentage of customers return for multiple purchases.  This indicates a strong need for improving customer retention strategies such as loyalty programs, personalized recommendations, and remarketing.

**10. Top Cities by Revenue**

* São Paulo dominates (~₹1.7M)
* Followed by Rio de Janeiro, Belo Horizonte
  👉 Revenue is concentrated in major urban areas.

---

### 🔥 PRODUCT + PERFORMANCE

**11. Top Products by Quantity**
👉 Best-selling products have 250–400+ units sold.

**12. Revenue by Category**
Top categories:

* Beauty & Health
* Watches & Gifts
* Sports & Leisure
  👉 These are key revenue drivers.

**13. Average Price per Category**
👉 Some categories (like PCs) have very high ticket size (~₹1140 avg), indicating premium segments.

---

### 💎 ADVANCED INSIGHTS

**14. Revenue from Top 10% Customers:** 41.13%
👉 Strong Pareto effect — small group drives large revenue.

**15. Customer Segmentation**

* High Value: ₹8.78M revenue
* Medium Value: ₹2.61M
* Low Value: ₹1.03M
  👉 Clear imbalance — focus should be on retaining high-value users.

**16. Customers with 2nd Purchase within 30 Days:** 1,533
👉 Very low repeat rate — retention strategy needed.

**17. Cohort Analysis**
👉 Customer acquisition peaked around **Nov 2017 – Mar 2018**
👉 Indicates business growth phase during this period.

---
## 📊 Key Visual Insights

### 📈 Monthly Revenue Trend

<img width="803" height="545" alt="Monthly Revenue Trend" src="https://github.com/user-attachments/assets/8790c338-e33c-4b1a-8ab9-9e7efb65f2c8" />



### 📍 Top 5 Cities by Revenue
<img width="886" height="545" alt="Top 5 Cities By Revenue" src="https://github.com/user-attachments/assets/052bb273-177e-4a35-b5b9-048e414ad0be" />



### 👥 Customer Segmentation
<img width="745" height="600" alt="Customer Segmentation" src="https://github.com/user-attachments/assets/b4468cb4-3352-454a-aa65-b8ea2f594034" />


---


## 💡 Key Learnings

* Writing complex SQL queries using JOIN, GROUP BY, CTEs
* Using window functions like `NTILE()` and `ROW_NUMBER()`
* Performing real-world business analysis using SQL
* Understanding customer behavior and segmentation
* Applying cohort and retention analysis

---

## 🚀 Conclusion

This project demonstrates how SQL can be used to transform raw e-commerce data into actionable insights.
It highlights key business areas such as **customer retention, revenue concentration, and product performance**, making it a strong foundation for data analytics roles.

---

## 📁 Data Availability

All datasets and query results are included in CSV format for transparency and reproducibility.


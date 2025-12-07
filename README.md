# 📊 Sales Performance Analysis Project
## ⭐ Project Overview
This project provides an end-to-end **Sales Performance Analysis** using:

- **SQL** → Data extraction & transformation  
- **Python (Pandas)** → Data cleaning, preprocessing & analytics  
- **Power BI** → Dashboard creation for business insights  

The goal of the project is to uncover insights into:
- Sales trends  
- Customer behavior  
- Product performance  
- Return patterns  
- Sales representative efficiency  

---

## 🛠️ Technologies Used

| Tool | Purpose |
|------|---------|
| **Python (Pandas, NumPy)** | Data cleaning & preprocessing |
| **MySQL** | Querying, ETL, and data storage |
| **Power BI** | Dashboard & data visualization |
| **Jupyter Notebook** | Interactive analysis |

## 📊 Python Analysis

### 1️⃣ Total Sales per Customer  
Revenue, total quantity, and orders per customer.

### 2️⃣ Monthly Sales + Moving Average  
Trend detection using year-month grouping.

### 3️⃣ Customer Segmentation  
Segments: **Low**, **Medium**, **High** based on spending percentiles.

### 4️⃣ Product Return Rate  
Return Rate = Returned Qty / Sold Qty × 100

### 5️⃣ Top 10 Customers (LTV)  
Identified highest lifetime value customers.

---

## 📈 Power BI Dashboard Features

### ⭐ Sales Overview
- Monthly Revenue Trend  
- Category-wise Sales Contribution (Pie Chart)  
- Regional Performance  
- Top 10 Products  

### ⭐ Product Performance Dashboard
- Product Return Rate  
- Top Returned Products  
- Revenue vs Quantity scatter plot  

### ⭐ Customer Insights
- Revenue by Segment (Low/Medium/High)  
- Age Distribution  
- Gender-based Revenue  
- Top 10 Customers (LTV)  

### ⭐ Regional Heatmap
Matrix Heatmap of:
- **Rows** → Country  
- **Columns** → Month  
- **Values** → Revenue  
---

## 🚀 How to Run the Project

### 1. Clone the Repository:
```bash
git clone https://github.com/your-username/sales-performance-analysis.git
```

### 2. Install Requirements:
```bash
pip install -r requirements.txt
```

### 3. Open the Notebook:
```bash
jupyter notebook notebooks/Sales_Analysis.ipynb
```

### 4. Open Power BI Dashboard:
Load file → `powerbi/Sales_Dashboard.pbix`

---

## 📝 Key Insights

- Medium-segment customers generated the highest total revenue.  
- A few products showed significant return rates — opportunity for quality improvement.  
- Seasonal patterns observed in monthly sales.  
- Top customers heavily contribute to total revenue.   

---
## 📄 License
MIT License — free to use and modify.

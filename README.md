# Exploratory Data Analysis (EDA) Lab - U18AII5202L

**Roll No:** 23BAD083

## Overview
This repository contains Exploratory Data Analysis experiments performed using R programming language as part of the EDA Lab course.

## Experiments

| Experiment | Title | Dataset | Description |
|------------|-------|---------|-------------|
| [Experiment 1](Experiment1/) | Student Performance Analysis | Student academic records | Analyze student grades, subject-wise performance trends, and grade distributions |
| [Experiment 2](Experiment2/) | E-Commerce Transaction Analysis | Online transaction data | Analyze transaction patterns, detect outliers, and visualize sales intensity |

---

## Experiment 1: Student Performance Analysis

**Objective:** Perform EDA on student performance data to understand academic trends and grade distributions.

**Visualizations:**
- 📊 Bar Chart - Subject-wise average marks
- 📈 Line Chart - Performance trend (Test 1 vs Test 2)
- 🥧 Pie Chart - Final grade distribution

**Libraries:** `ggplot2`, `dplyr`, `tidyr`

[View Experiment 1 →](Experiment1/)

---

## Experiment 2: E-Commerce Transaction Analysis

**Objective:** Perform EDA on e-commerce transaction data to understand sales patterns and detect outliers.

**Visualizations:**
- 📊 Histogram - Transaction amount distribution
- 📦 Box Plot - Outlier detection by product category
- 🗺️ Heatmap - Monthly sales intensity

**Libraries:** `ggplot2`, `dplyr`, `lubridate`

[View Experiment 2 →](Experiment2/)

---

## Tools & Technologies
- **Language:** R
- **IDE:** RStudio
- **Key Libraries:** ggplot2, dplyr, tidyr, lubridate

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/poojith3010/23BAD083_U18AII5202L.git
   ```
2. Open the desired experiment folder
3. Install required R packages
4. Run the `.R` script in RStudio

## Repository Structure
```
├── README.md
├── Experiment1/
│   ├── README.md
│   ├── EDA_ass_1.R
│   ├── 1.student_performance.csv
│   └── figures/
│       ├── bar_cahrt.png
│       ├── line_chart.png
│       └── pie_chart.png
└── Experiment2/
    ├── README.md
    ├── EDA_ass_2.R
    ├── 2.ecommerce_transactions.csv
    └── figures/
        ├── histogram_plot.png
        ├── box_plot.png
        └── heatmap.png
```

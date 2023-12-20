# IMDB Movies Project using Talend, MSSQL Server, Altreyx, PowerBI, MySQL, Tableau.

** Tools Used: 
Data Profiling: Altreyx
Data Cleaning: Talend
ETL tool: Talend
SQL Servers: MySQL, MSSQL
Data Visualization: PowerBi and Tableau **

IMDB Movies Analysis Using Talend 					         			     
Tools & Technologies Used: Talend, ER Studio, Altreyx, Microsoft SQL Server, MySQL, Tableau, Azure Data Studio, PowerBi
•	Executed data integration from diverse sources including MySQL (IMDb tables), TSV (revenue data), and JSON files (movie titles and actor names changes), ensuring comprehensive data consolidation
•	Conducted in-depth data profiling and analysis using Alteryx, producing detailed reports and insights, complemented by a meticulous mapping document in Excel
•	Developed a robust data model focusing on a SCD Type 2 Movie Titles Dimension table, enhancing data accuracy and historical tracking
•	Designed and implemented ETL mappings in Talend, utilizing metadata-based connections, contexts, and environments, to streamline data processing workflows
•	Created dynamic and interactive dashboards in Power BI and Tableau, ensuring SQL script outputs were consistent with visualized data, effectively communicating key metrics and trends

***1.Alteryx:**

**Alteryx Workflow:Understanding data**
<img width="468" alt="image" src="https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/4ed20b48-d853-4f0d-beaf-2e43c8807d98">
**Finding:**
Rank: The movie's rank varied from 1 to 55 during its box office run, and it contains “-” values as well
Gross: Daily gross earnings ranged from a minimum of $357 to a maximum of about $28.27 million.
Per Theater: Earnings per theater varied between $60 and $8,181.
Total Gross: The cumulative gross earnings increased over time, reaching approximately $760.51 million.
Days: The dataset covers 336 days from the movie's release.
%LW and %YD contains null values

**Insights and Observations**
Strong Initial Performance: "Avatar" had a very strong opening, indicated by the high initial daily and per-theater gross.
Longevity in Theaters: The movie remained in theaters for a significant duration (336 days), highlighting its lasting appeal.
Consistent Top Rankings: Despite fluctuations, the movie consistently ranked well during its theatrical run.
Revenue Stability: After the initial spike, the total gross showed stability, indicating a steady influx of viewers over an extended period.

**2. Navicat: For designing Data Model**
Dimensional Model:
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/5a188f56-4c0b-434d-94fd-d5dc76eb447b)


**3.Talend Workflow Screenshots**

Staging
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/0c112014-0eb3-4e1f-ac1b-0dc67a7bb5f6)
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/837e7372-3ee9-454a-bbdb-fb9808cf61ed)
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/d5a895be-0658-4191-88da-eb8217521fc7)

Dimensions:
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/540fef8d-8837-4d7a-a3c4-706e88507908)
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/0ceb3b9a-fc42-4223-aa18-58b97bd96a47)
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/09809f4c-8a0f-4238-ad49-c6e5151af58a)
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/5b0916f9-6243-4975-853d-0765c1e74258)
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/2a114368-5808-44ba-a2f7-691438217c73)

Bridge Tables:
Movie-Genre Bridge table:
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/82fc8eab-8874-451d-97b1-225e51e5c822)
Movie-Region Bridge Table:
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/09176d35-b727-4f33-a84d-273e0242ad85)

Fact Tables:

BoxOfcFact:
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/6dc65f4f-2f9b-4285-8867-8d0f4d4d46d9)
FactTitle Principal:
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/7a6e30f1-607a-4985-ad63-c620df32e197)
Genre Fact:
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/1c7c1b9d-b3d9-4056-818b-5779c1dfb6c4)


Visualization Using Power BI (https://app.powerbi.com/groups/4245cd51-53a4-4aac-984f-18f6bde6a73e/reports/07948f86-f53d-4286-b8c0-efee8aaf52e1/ReportSection185e58af7ba5a1c2e3ef?experience=power-bi):
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/17799895-13e1-4aa0-acd4-35a8bd3d3266)
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/1336d907-b05b-42e9-bf08-9a717bf1ac14)
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/5b647342-9861-4e96-a0c2-c55bea6456f3)
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/29f906d0-a486-45de-8523-41c26effb424)
![image](https://github.com/pradhanmona7/IMDB-Movies-Project/assets/114325852/50edd295-6a47-4682-863f-e4cc8afed43e)






















 







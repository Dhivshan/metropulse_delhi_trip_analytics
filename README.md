# 🚇 METROPULSE DELHI TRIP ANALYTICS

Delhi Metro Trip Analysis. This project is about analyzing of the trips made with Delhi metro using a raw JSON trip records, clean it and then converts them into structured CSV file, and used in the MYSQL database as an optimized SQL schema and queries for performance analysis.

## 📂 Project Structure

metropulse_delhi_trip_analytics/
│
├── cleaned_data/
│       └── delhi_metro_trips.csv
│── source_data/
│       └── delhi_metro_trips.json
|
├── sql/
│      └── queries.sql
│      └── schema.sql
│
├── src/
│      └── metropulse_Delhi_data_cleaning.py
│
├── README.md
├── requirements.txt


## 🎯 Project Objectives

* Clean and prepare Delhi Metro Trip dataset using Python/Pandas

* Store the CSV format dataset in a structured SQL database by creating schemas file

* Perform analytical queries using MYSQL and identify insights under various scenerios

* Analyze passenger travel behavior

* Identify high-demand routes and stations

* Study revenue generation across trips

* Understand ticket usage patterns

* Evaluate travel conditions such as peak, festival, and weekend trips


## 🚀 Features
- Convert raw JSON Delhi Metro Trip data into clean CSV format.
- Define SQL schema for table creation.
- Provide optimized queries for analytics (busiest routes, stations,)

---

## 📦 Installation

Clone the repository and install dependencies:

### CLI Prompt:

-- git clone "https://raw.githubusercontent.com/Dhivshan/metropulse_delhi_trip_analytics/refs/heads/main/source_data/delhi_metro_trips.json"
-- cd metropulse_delhi_trip_analytics
-- mkdir src
-- cd metropulse_delhi_trip_analytics
-- git add requirements.txt
-- git commit -m "Add requirements.txt"
-- git remote add origin https://github.com/Dhivshan/metropulse_delhi_trip_analytics.git
-- git branch -M main
-- git push -u origin main

### GITHUB site:

-- GitHub repository
-- Click Add file-->Create new file
-- Type src/ temp file
-- Click Add file-->Create new file (requirements.txt)
-->Commit changes


⚙️ Requirements
- Python 3.14.3
- MySQL 8.0
- Dependencies listed in requirements.txt


📊 Example Analytics
- Busiest metro stations
- Peak travel hours
- Route utilization trends
- Passenger Trends


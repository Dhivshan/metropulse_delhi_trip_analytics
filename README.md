
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

    # CLI Prompt:

    -- git clone "https://raw.githubusercontent.com/Dhivshan/metropulse_delhi_trip_analytics/refs/heads/main/source_data/delhi_metro_trips.json"
    -- cd metropulse_delhi_trip_analytics
    -- mkdir src
    -- cd metropulse_delhi_trip_analytics
    -- git add requirements.txt
    -- git commit -m "Add requirements.txt"
    -- git remote add origin https://github.com/Dhivshan/metropulse_delhi_trip_analytics.git
    -- git branch -M main
    -- git push -u origin main

    # GITHUB site:

    -- GitHub repository
    -- Click Add file-->Create new file
    -- Type src/ temp file
    -- Click Add file-->Create new file (requirements.txt) -->Commit changes


## ⚙️ Requirements
- Python 3.14.3
- MySQL 8.0
- Dependencies listed in requirements.txt

## 📈 SQL Analysis

# Route Analysis
* Helps to find the insights on Route behavior such as highest passenger count, highest revenue and longest distance.
  
# Station Analysis

* Helps to find the insights on Station behavior such as having more passenger, departures and frequently used station pair.

# Revenue Analysis

* Helps to find the insights on Revenue behavior such as average revenue per trip, total revenue as a whole and revenue based on ticket type.
  
# Passenger Analysis

* Helps to find the insights on Passenger behavior such as average passenger per trip, highest passenger count and passenger distributed based on ticket type.
  
# Travel Pattern Analysis

* Helps to find the insights on Travel Pattern(condition) behavior such as number of trips made during different travel pattern, highest revenue based on travel pattern, passenger count based on travel pattern.

## 📊 Insights and findings

# Passenger demand

  * Delhi Metro averages approximately 20 passengers per trip 
  * Observed that Mandi House to Laxmi Nagar	has the highest passenger count
  * Tourist ticket type has more count of passenger
  * Observed that Rajiv Chowk has more passenger count
  
# Revenue trends

  * Delhi Metro total revenue of 20688548.50 for all trips 
  * Observed that Dilshad Garden has the highest revenue generated routes
  * Average revenue is observed for a trip
  * Observed that Tourist ticket type have generated highest revenue
  
# Route popularity

  * Observed that Rajiv Chowk to Chandni Chowk route is the highly used route
  * Observed that Rajiv Chowk to Chandni Chowk route has the highest revenue generated routes
  * Average fare is observed for a route
  * New Delhi to Mandi House is observed to be the longest route

# Ticket usage

  * Tourist Card is mostly purchased ticket type of all
  * Highest revenue generated ticket type is Tourist Card
  * Second most ticket type is Single

# Travel conditions

  * Delhi Metro has more trips on Normal days compared to other days such as weekend, festival, peak, maintenance and off-peak
  * Observed that on normal days highest revenue is generated
  * Observed that January month is the highest count of passenger travelled irrespective of travel condition
  * Observed that off-peak is having the most average passenger count per trip

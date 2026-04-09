USE metro_pulse;

SELECT from_station, to_station FROM delhi_metro_trips GROUP BY from_station, to_station;

SELECT *
FROM delhi_metro_trips
WHERE from_station = 'Rajiv Chowk' 
  AND to_station = 'Chandni Chowk';

SELECT * FROM delhi_metro_trips;

SELECT from_station, to_station, fare FROM delhi_metro_trips WHERE from_station = 'Rajiv Chowk' 
  AND to_station = 'Chandni Chowk';

-- Index for Route
CREATE INDEX idx_route ON delhi_metro_trips(from_station,to_station);

# Route Analysis

# 1. Which metro routes have the highest passenger traffic?
SELECT from_station, to_station, SUM(passenger) AS total_passenger FROM delhi_metro_trips GROUP BY from_station, to_station ORDER BY total_passenger DESC;

# 2. Which routes generate the highest total revenue?
SELECT from_station, to_station, SUM(fare) AS total_revenue FROM delhi_metro_trips GROUP BY from_station, to_station ORDER BY total_revenue DESC;

# 3. What is the average fare for each route?
SELECT from_station, to_station, AVG(fare) AS average_fare FROM delhi_metro_trips GROUP BY from_station, to_station ORDER BY average_fare; 

# 4. Which routes have the longest travel distances?
SELECT from_station, to_station, distance_km AS distance_travelled FROM delhi_metro_trips ORDER BY distance_travelled DESC; 

# Station Analysis

# 5. Which stations have the highest number of trip departures?

SELECT from_station, COUNT(from_station) AS highest_trip_departures FROM delhi_metro_trips GROUP BY from_station ORDER BY highest_trip_departures DESC; 

# 6. Which stations receive the highest number of passengers?
SELECT to_station, SUM(passenger) AS highest_no_passenger FROM delhi_metro_trips GROUP BY to_station ORDER BY highest_no_passenger DESC;
 
-- Index for departures
CREATE INDEX idx_from_station ON delhi_metro_trips(from_station);

-- Index for arrivals
CREATE INDEX idx_to_station ON delhi_metro_trips(to_station);

# 7. What are the top 10 most frequently used metro stations?
SELECT station, COUNT(*) AS count
FROM (
    SELECT from_station AS station
    FROM delhi_metro_trips
    UNION ALL
    SELECT to_station AS station
    FROM delhi_metro_trips
) AS combined
GROUP BY station
ORDER BY count DESC LIMIT 10;


# 8. Which station pairs are most frequently used for travel?
SELECT from_station, to_station, COUNT(*) AS travel_count FROM delhi_metro_trips GROUP BY from_station, to_station 
ORDER BY travel_count DESC; 

# Revenue Analysis

# 9. What is the total revenue generated from all trips?
SELECT SUM(fare * passenger) AS total_revenue_all_trips FROM delhi_metro_trips; 

# 10. What is the average fare per trip?
SELECT AVG(fare) AS total_revenue_per_trips FROM delhi_metro_trips; 

# 11. Which routes generate the highest revenue per kilometer?
SELECT from_station, to_station, SUM(fare * passenger) / SUM(distance_km) AS revenue_per_km 
FROM delhi_metro_trips GROUP BY from_station, to_station ORDER BY revenue_per_km DESC; 

# 12. Which ticket type generates the highest revenue?

SELECT ticket_type, SUM(fare * passenger) AS total_revenue FROM delhi_metro_trips 
GROUP BY ticket_type ORDER BY total_revenue DESC LIMIT 1;

# Passenger Analysis

# 13. What is the average number of passengers per trip?
SELECT AVG(passenger) AS avg_no_passenger FROM delhi_metro_trips;

SELECT SUM(passenger) / COUNT(from_station) AS avg_no_passenger FROM delhi_metro_trips; 

# 14. Which trips recorded the highest passenger counts?
SELECT from_station, to_station, passenger FROM delhi_metro_trips ORDER BY passenger DESC;

# 15. What is the passenger distribution by ticket type?
SELECT ticket_type, SUM(passenger) AS total_passenger FROM delhi_metro_trips GROUP BY ticket_type;

# 16. What is the total passenger count for each station?
SELECT station, SUM(total_passengers) AS passenger_count
FROM (
    SELECT from_station AS station, SUM(passenger) AS total_passengers
    FROM delhi_metro_trips
    GROUP BY from_station
    UNION ALL
    SELECT to_station AS station, SUM(passenger) AS total_passengers
    FROM delhi_metro_trips
    GROUP BY to_station
) AS combined
GROUP BY station
ORDER BY passenger_count DESC;

# Travel Pattern Analysis

# 17. How many trips occur during peak, off-peak, festival, and weekend conditions?
SELECT remarks, COUNT(remarks) AS trip_count FROM delhi_metro_trips GROUP BY remarks;

# 18. Which travel condition generates the highest revenue?
SELECT remarks, SUM(fare * passenger) AS total_revenue FROM delhi_metro_trips 
GROUP BY remarks ORDER BY total_revenue DESC LIMIT 1; 

# 19. What is the monthly passenger trend across the dataset?
SELECT MONTH(date) AS month, SUM(passenger) AS total_passenger 
FROM delhi_metro_trips GROUP BY month ORDER BY month; 

# 20. Which travel condition has the highest average passenger count per trip?
SELECT remarks, AVG(passenger) AS avg_passenger
FROM delhi_metro_trips
GROUP BY remarks
ORDER BY avg_passenger DESC LIMIT 1;

# Insights

# Insights into passenger demand


# revenue trends

# travel behavior









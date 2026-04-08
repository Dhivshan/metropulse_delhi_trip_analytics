-- Create Table
    
CREATE TABLE metro_pulse.delhi_metro_trips (
    trip_id INT PRIMARY KEY,
    date DATETIME NOT NULL,
    from_station VARCHAR(100) NOT NULL,
    to_station VARCHAR(100) NOT NULL,
    distance_km DECIMAL(10,2) NOT NULL,
    fare DECIMAL(6,2) NOT NULL,
    cost_per_passenger DECIMAL(10,2) NOT NULL,
    passenger INT NOT NULL DEFAULT 0,
    ticket_type VARCHAR(50) NOT NULL,
    remarks VARCHAR(100) NOT NULL
);

-- Create Indexes for Faster Query Execution
    
CREATE INDEX idx_route ON delhi_metro_trips(from_station,to_station);
CREATE INDEX idx_date ON delhi_metro_trips(date);

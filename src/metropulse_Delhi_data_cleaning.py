import pandas as pd
from IPython.core.display_functions import display

# Load the given JSON dataset from GitHub
raw_url="https://raw.githubusercontent.com/Dhivshan/metropulse_delhi_trip_analytics/refs/heads/main/source_data/delhi_metro_trips.json"
dmt_df = pd.read_json(raw_url)

display(dmt_df.info())
display(dmt_df.describe())
display(dmt_df.head(100))
#Remove leading/trailing spaces from the Station Names
dmt_df['From_Station']=dmt_df['From_Station'].str.strip()
dmt_df['To_Station']=dmt_df['To_Station'].str.strip()
display(dmt_df.info())
# Standardize naming convensions in Station Names
dmt_df['From_Station']=dmt_df['From_Station'].str.title()
dmt_df['To_Station']=dmt_df['To_Station'].str.title()
display(dmt_df.info())
# Handle missing values in Ticket Types and Remarks
dmt_df['Ticket_Type']=dmt_df['Ticket_Type'].fillna('Unknown')
dmt_df['Remarks']=dmt_df['Remarks'].fillna('normal')
dmt_df['Passengers']=dmt_df['Passengers'].fillna(0)
dmt_df[['Distance_km','Cost_per_passenger']]=dmt_df[['Distance_km','Cost_per_passenger']].round(2)
display(dmt_df.info())
display(dmt_df.head(100))
# Convert Date Column into datatime format
dmt_df['Date'] = pd.to_datetime(dmt_df['Date'], errors='coerce')
display(dmt_df.head(100))
# Format Numeric Columns
dmt_df['Distance_km'] = pd.to_numeric(dmt_df['Distance_km'], errors='coerce')
dmt_df['Fare'] = pd.to_numeric(dmt_df['Fare'], errors='coerce')
dmt_df['Cost_per_passenger'] = pd.to_numeric(dmt_df['Cost_per_passenger'], errors='coerce')
dmt_df['Passengers'] = pd.to_numeric(dmt_df['Passengers'], errors='coerce')
display(dmt_df.head())
dmt_df = dmt_df.drop_duplicates()
display(dmt_df.info())
display(dmt_df.describe())
# Save as CSV
dmt_df.to_csv("delhi_metro_trips.csv", index=False)
display("Successfully File saved as .csv extension")









# OpenTripPlanner Australian Data Scrapper

This repository contains an explanation about a public transportation trips scrapper in any Australian metropolitan city using [OpenTripPlanner (OTP)](https://www.opentripplanner.org/) 1.5.0. 
This tool helps researchers and planners evaluate public transport accessibility and trip details based on GTFS and OpenStreetMap data.

The data for ptplanner can be downloaded from the external repository due to the large dataset.
[ptplanner repo](https://latrobeuni-my.sharepoint.com/:f:/g/personal/kadhinugraha_ltu_edu_au/EiwshLzkJtdHoji2P4VocK0BueqG8demdLlggmflDuUIRg?e=ejrYCZ)

## 🔧 Tools Included
### 1. Interactive Public Transportation simulator, based on OTP 1.5.0
- [link](https://ptplanner.latrobe.edu.au)
- An interactive map, based on OTP 1.5.0, configured for Melbourne only

### 2. Multi-route Public Transportation API
Covers all Australian metropolitan cities as shown below:

The list of metropolitan areas that are covered is listed below:
|City Name | ROUTE CODE | Provider | Data Link | Version | Valid from - until |
|--|--|--|--|--|--|
|Melbourne|vic|PTV|[https://mobilitydatabase.org/feeds?gtfs=true](https://mobilitydatabase.org/feeds?gtfs=true)|Sept 25| Jan 25 - Jun 26|
|Sydney|nsw|Transport for NSW|[https://mobilitydatabase.org/feeds?gtfs=true](https://mobilitydatabase.org/feeds?gtfs=true)|Sept 25| Jan 25 - Jun 26|
|Brisbane|qld|Translink SEQ|[https://mobilitydatabase.org/feeds?gtfs=true](https://mobilitydatabase.org/feeds?gtfs=true)|Sept 25| Jan 25 - Jun 26|
|Adelaide|sa|Adelaide Metro|[https://mobilitydatabase.org/feeds?gtfs=true](https://mobilitydatabase.org/feeds?gtfs=true)|Sept 25| Jan 25 - Jun 26|
|Perth|wa|TransPerth|[https://mobilitydatabase.org/feeds?gtfs=true](https://mobilitydatabase.org/feeds?gtfs=true)|Sept 25| Jan 25 - Jun 26|
|Darwin|nt|Department of Transport|[https://mobilitydatabase.org/feeds?gtfs=true](https://mobilitydatabase.org/feeds?gtfs=true)|Sept 25| Jan 25 - Jun 26|
|Hobart|tas|MetroTas Hobart|[https://mobilitydatabase.org/feeds?gtfs=true](https://mobilitydatabase.org/feeds?gtfs=true)|Sept 25| Jan 25 - Jun 26|
|Canberra|act|Transport Canberra|[https://mobilitydatabase.org/feeds?gtfs=true](https://mobilitydatabase.org/feeds?gtfs=true)|June 25| Jan 25 - Jun 26|

- Accessible through an HTTP call using the following format:
`https://ptplanner.latrobe.edu.au/otp/routers/{ROUTE CODE}/plan?fromPlace={lat,lon}&toPlace={lat,lon}&date={YYYY-MM-DD}&time={HH24:MI}&mode=TRANSIT,WALK`

Example: a trip from the Flinders Station (Melbourne) to La Trobe University (Bundoora) on 17 September 2025 at 08:00 AM
http://ptplanner.latrobe.edu.au/otp/routers/vic/plan?route=vic&fromPlace=-37.8183,144.9671&toPlace=-37.7215,145.0470&mode=TRANSIT,WALK&date=2025-09-17&time=08:00am

**Note: Make sure the time and date are always within the Valid period as shown in the table above.**

The HTTP request can be accessed directly or sent from many scripting languages. **No token or authentication** is needed.
### 3. Web-based application for a Trip planner
A simple web based trip planner landing page.
- [link](https://kiki-maulana.github.io/otp/)
  
#### 3.a. `otp-test.html` — Single Trip Planner
A simple interface to test a single trip by providing:
- Origin & destination coordinates
- Date and time of travel
- Transport mode (WALK, TRANSIT)
- [link](https://kiki-maulana.github.io/otp/otp-test.html)

Useful for testing OTP endpoints manually.

#### 3.b. `otp-bulk.html` — Batch Trip Summary Tool
Upload a CSV file (`|` pipe-delimited) with multiple trips to:
- Query OTP server for each trip
- Display results in a table
- View summary: distance, duration, walking distance, transfers, waiting time
- Export results as a CSV file
- View raw OTP plan links used per trip
- [link](https://kiki-maulana.github.io/otp/otp-bulk.html)

Sample CSV format:

trip_number|trip_state|origin|destination|trip_date|trip_time

1|vic|(145.16087489,-37.96505585)|(145.15275541679594,-37.95154672537084)|2025-04-01|08:00


## ✅ Requirements
### Usage
- Modern web browser (Chrome, Firefox, Edge)
- Internet access to your OTP endpoint

No backend server is required to run the interface — it’s fully client-side.

### Deployment
The following list outlines the requirements for deploying the Multi-route OTP engine. Basic configurations are provided, but the data must be downloaded separately.
- OTP Engine 1.5.0 [here](https://repo1.maven.org/maven2/org/opentripplanner/otp/)
- Java 8
- OSM map
- GTFS data

## 📢 Attribution & Credits

This tool was built and maintained by **Kiki Adhinugraha**  
Contact: [k.adhinugraha@latrobe.edu.au](mailto:k.adhinugraha@latrobe.edu.au)

### 📚 Attributions

- **Basemap**: [OpenStreetMap contributors](https://www.openstreetmap.org/copyright)

### 🧠 Technology & Libraries
- **Routing Engine**: [OpenTripPlanner](https://www.opentripplanner.org/) Version list [here](https://repo1.maven.org/maven2/org/opentripplanner/otp/)
- **CSV Parser**: [PapaParse](https://www.papaparse.com/)
- **Frontend Support**: [ChatGPT (OpenAI)](https://openai.com/chatgpt)

## 🐞 Report Issues

If you encounter bugs or data issues, please contact:  
📧 [k.adhinugraha@latrobe.edu.au](mailto:k.adhinugraha@latrobe.edu.au)

---
  This journey planner is powered by <a href="https://github.com/opentripplanner/OpenTripPlanner" target="_blank">OpenTripPlanner</a>,
  an open-source multimodal trip planning engine. Licensed under the
  <a href="https://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache 2.0 License</a>.
MIT License © 2025 Kiki Adhinugraha
Last update: September 2025


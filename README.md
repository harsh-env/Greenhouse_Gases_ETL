# Green House Gases (GHG) Analysis Dataset

Global warming is a nationwide issue that affects the quality of life on Earth. Climate change is a direct result of an increase in greenhouse gases. Greenhouse gases are a mixture of Co2, Ch4, N2o, and other gases prevalent on Earth. They are known to trap heat in the atmosphere causing the planet to become warmer over time. When comparing the different natural gases that cause global warming, they all have different effects on the warming of Earth. 
The figure below compares the increase in Greenhouse gases over the years and provides the source of these gases. 

![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/Proposal1.JPG)

It was found that these gases have differing global warming potentials when compared with CO2 (as CO2 is a direct by-product of burning O&G) – viz:

1. CH4 (Methane) molecule – 25 times the global warming potential of a CO2 molecule
2. N2O (Nitrous Oxide) - 298 times the global warming potential of a CO2 molecule
3. HFC (Hydrofluorocarbons) – 1430-14800 times the global warming potential of a CO2 molecule
4. Sulfur Hexafluoride – 22800 times the global warming potential of a CO2 molecule

CH4, N2O and other gases like HCF etc. are a by-product of agriculture & Farming and are not directly related to burning of fossil fuels.

Our datasets focus on comparing different types of greenhouse gases in order to compare them to Co2. Two datasets from 1990 to 2019 are used to identify and display the specific sources of emissions within agriculture and farming. A third dataset displays global oil and gas demand which will be used to vaguely show the emission of CO2 that could be used for comparison purposes. Our analysis will compare GHG emissions in different countries, identify total emissions per year, and identify which gases are most prevalent. 

# Extract
## Data Source 
The data is extracted from the three data sets (with links) below. 
Several data sets ranging from CSV's to JSON files were researched for this topic in Kaggle and data.world. 
Data from datasource.kapsarc.org was used for the project as it was more comprehensive from some other one's we looked at.  

Global Greenhouse Emission was extracted as JSON file 
https://datasource.kapsarc.org/explore/dataset/emissions_agriculture_energy_e_all_data_norm/table/?disjunctive.item&disjunctive.element

Global Oil & Gas Demand was downloaded and used as a CSV file
https://datasource.kapsarc.org/explore/dataset/iea-oil-market-report-2001-2016/information/?disjunctive.frequency&disjunctive.region_name&disjunctive.indicator_name

Agriculture & Farming Specific emissions was downlaoded as a JSON file
https://datasource.kapsarc.org/explore/dataset/agri-environmental-indicators-emissions-by-sector/table/?disjunctive.area&disjunctive.item&disjunctive.element&sort=-item

Due to the file size, a google drive link to datasets was made for user simplicity. 
https://drive.google.com/drive/folders/1EV7PyG_GSjAyiml59T8MzWpfgdekt62u?usp=sharing

Below is a snapshot of how the data was structured on datasource.kapsarc.org

![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/Agri_emissions_Dataset.JPG)

## Using Jupyter Notebook file 

Three separate notebooks are made to process the 3 datasets. 
- Global Greenhouse Emission - "global_ghg.ipynb"
- Agriculture & Farming Specific emissions - "agri_emissions.ipynb"
- Global Oil & Gas Demand - "World_oil_demand_supply.ipynb"
JSON file Structure example for Agri_emissions: 

![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/JSON_Schema.JPG)

# Transform
After connecting the data we started the transformation process which included creating data frames and cleaning the data. Below you find an example code of us deleting null values, columns and renaming columns in order to better understand the data. 
- Data had to be normarlized when pulled with pandas. Only "Fields" column was required. 
![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/normalize_data.JPG)
- The database for Agri and Global emissions listed more than 250 countries or areas. 
- For simplicity and representation purposes, we picked a list of 50 countries with relatively higher GDP and population. These countries were chose from all the continents and geographical areas.
- To clean the data, we dropped columns with NA, renamed and organized required columns. 
- Some of the unwanted columnns were deleted and a representative DataFrame was created as shown in SQL database snapshots. 
- For the Agriculatural Emissions Database 2 separate dataframes were made. This was because the dataframe had percent emissions and actual values of emissions from all sectors listed in the same JSON. For user simplicity and usage the data was split into
    - Agricultural Emissions % (percent values)
    - Agriculural Emissions Actual values (Expressed in Kilotonnes) 
 - In World oil/Demand database, the "Date" column was split into year and month. Data type of these two additional columns was changed to int. 
 - The world oil/demand database was split into 2 separate dataframes loaded into SQL. 
    - First DF only lists the "Demand" for O&G as it presentative of the overall economic health of the countries adding to the emissions. 
    - The Second Dataframe is also a cleaned, organized and renamed and contains all the data categories including Diesel, Oil, Gas etc. supply and demand data. 
- A separate Jupyter notebook was made to find the countries that are common between the "Selected countries from Emissions Database" and "World oil Demand/Supply" database. The   inner merge provides a list of 24 countries saved in "Outputs" folder for database user. 
- Some of the columns had to be renamed for loading into Postgresql due to errors. The "QuickDBD-exp_1.sql" provides the Schema details. 

# Load

- The QucikDBD-exp_1.sql file provides a SCHEMA used for creating SQL Tables in Database named Global_Emissions".
- Python was connected to SQL using create_engine imprted from sqlalchemy
- Below is a snapshot of the how the dataframes were loaded onto SQL tables. The Table_names had to be modified to suit SQL structure and errors

![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/Connection_to_SQL.JPG)

### SQL Database
![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/global_agriculture_%25emissions.JPG)
![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/global_agriculture_actualemissions.JPG)
![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/global_greenhouse_emssions_all.JPG)
![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/global_oil_demand.JPG)
![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/global_oil_data_iea.JPG)

# Instructions

Download the datasets directly from the links below or use the link to Google drive below 
The user can add to the list of country in code which he would like to additionally analyze.  
- A list of all countries in Agri_emissions database is kept in output folder. 

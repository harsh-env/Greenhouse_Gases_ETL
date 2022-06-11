# Green House Gases (GHG) Analysis

Global warming is a nationwide issue that affects the quality of life on Earth. Climate change is a direct result of an increase in greenhouse gases. Greenhouse gases are a mixture of Co2, Ch4, N2o, and other gases prevalent on Earth. They are known to trap heat in the atmosphere causing the planet to become warmer over time. When comparing the different natural gases that cause global warming, they all have different effects on the warming of Earth. 

![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/Proposal1.JPG)

Our datasets focus on comparing different types of greenhouse gases in order to compare them to Co2. Two datasets from 1990 to 2019 are used to identify and display the specific sources of emissions within agriculture and farming. A third dataset displays global oil and gas demand which will be used to vaguely show the emission of Co2. Our analysis will compare GHG emissions in different countries, identify total emissions per year, and identify which gases are most prevalent. 

# Datasets

Global Greenhouse Emission
https://datasource.kapsarc.org/explore/dataset/emissions_agriculture_energy_e_all_data_norm/table/?disjunctive.item&disjunctive.element

Global Oil & Gas Demand
https://datasource.kapsarc.org/explore/dataset/iea-oil-market-report-2001-2016/information/?disjunctive.frequency&disjunctive.region_name&disjunctive.indicator_name

Agriculture & Farming Specific emissions
https://datasource.kapsarc.org/explore/dataset/agri-environmental-indicators-emissions-by-sector/table/?disjunctive.area&disjunctive.item&disjunctive.element&sort=-item


# Extract

First, the data is extracted from the three data sets linked above. Several data sets ranging from CSV's to JSON files were researched by the developers. Due to a lack of data on global emissions we decided to use data from datasource.kapsarc.org 

# Transform

After connecting the data we started the transformation process which included creating data frames and cleaning the data. Below you find an example code of us deleting null values, columns and renaming columns in order to better understand the data. 

# Load

Finally, the data frames that were created were connected to the PGAdmin. 




# Results 

SQL Database
![](https://github.com/harsh-env/Project2a-Database/blob/main/outputs/global_agriculture_%25emissions.JPG)

CREATE TABLE "Global_Greenhouse_Emissions" (
    "year" INT   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "GH-gases" VARCHAR   NOT NULL,
    "Industry_Sector" VARCHAR   NOT NULL,
    "Global_Emission_ktonnes" VARCHAR   NOT NULL
	);
CREATE TABLE "Global_Agri_Greenhouse_Emissions" (
    "year" INT   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "GH-gases" VARCHAR   NOT NULL,
    "Agri_Industry_Sector" VARCHAR   NOT NULL,
    "Glb_Agri_Emission_ktonnes" VARCHAR   NOT NULL
	);
CREATE TABLE "Global_Agri_Greenhouse_Emissions_%" (
	"year" INT   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "GH-gases" VARCHAR   NOT NULL,
    "Agri_Industry_Sector" VARCHAR   NOT NULL,
    "Glb_Agri_Emission_%" VARCHAR   NOT NULL
	);
	ALTER TABLE "Global_Agri_Percent_Emiss" RENAME TO "Global_Agri_Percent_Emissions";
	ALTER TABLE "Global_Agri_Percent_Emissions"
	RENAME COLUMN "Glb_Agri_Emission_%" TO "Percent_Glb_Agri_Emission";
	
	CREATE TABLE "Global_oil_data_iea" (
    "year" INT   NOT NULL,
    "month" INT   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Data_Interval" VARCHAR   NOT NULL,
    "Data_Category" VARCHAR   NOT NULL,
    "million(bbls)" FLOAT   NOT NULL
	);

    CREATE TABLE "Global_oil_demand" (
    "year" INT   NOT NULL,
    "month" INT   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Data_Interval" VARCHAR   NOT NULL,
    "Data_Category" VARCHAR   NOT NULL,
    "million(bbls)" FLOAT   NOT NULL
	);

    ALTER TABLE "Global_oil_demand"
    RENAME COLUMN "million(bbls)" TO "million-bbls";
    ALTER TABLE "Global_oil_data_iea"
    RENAME COLUMN "million(bbls)" TO "million-bbls";
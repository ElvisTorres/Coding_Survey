/*Not normalized database*/
/*Schema to load the survey data table*/
DROP TABLE IF EXISTS survey_data;
DROP TABLE IF EXISTS survey_demographics;

CREATE TABLE survey_data(
Respondent INT PRIMARY KEY,
MainBranch VARCHAR(255),
Hobbyist VARCHAR(3),
OpenSourcer VARCHAR(255),
OpenSource TEXT,
Employment VARCHAR(255),
Country VARCHAR(255),
Student VARCHAR(255),
EdLevel VARCHAR(255),
UndergradMajor TEXT,
OrgSize VARCHAR(255),
DevType TEXT,
YearsCode VARCHAR(255),
Age1stCode VARCHAR(255),
YearsCodePro VARCHAR(255),
CareerSat VARCHAR(255),
JobSat VARCHAR(255),
JobSeek VARCHAR(255),
LastHireDate VARCHAR(255),
LastInt TEXT,
FizzBuzz VARCHAR(3),
ResumeUpdate VARCHAR(255),
CurrencySymbol VARCHAR(3),
CurrencyDesc VARCHAR(255),
CompTotal VARCHAR(255),
CompFreq VARCHAR(255),
ConvertedComp VARCHAR(255),
WorkWeekHrs VARCHAR(255),
WorkPlan TEXT,
WorkChallenge TEXT,
WorkRemote VARCHAR(255),
WorkLoc VARCHAR(255),
ImpSyn VARCHAR(255),
CodeRev VARCHAR(255),
CodeRevHrs VARCHAR(4),
UnitTests VARCHAR(255),
PurchaseHow TEXT,
PurchaseWhat VARCHAR(255),
LanguageWorkedWith VARCHAR(255),
LanguageDesireNextWeek VARCHAR(255),
DatabaseWorkedWith VARCHAR(255),
DatabaseDesireNextYear VARCHAR(255),
PlatformWorkedWith VARCHAR(255),
PlatformDesiredNextYear VARCHAR(255),
WebFrameWorkedWith VARCHAR(255),
WebFrameDesireNextYear VARCHAR(255),
MiscTechWorkedWith VARCHAR(255),
MiscTechDesireNextYear VARCHAR(255),
DevEnviron VARCHAR(255),
OpSys VARCHAR(255),
Containers VARCHAR(255),
BlockchainOrg VARCHAR(255),
Blockchainls VARCHAR(255),
BetterLife VARCHAR(3),
ITperson VARCHAR(255),
OffOn VARCHAR(255),
SocialMedia VARCHAR(255),
Extraversion VARCHAR(255),
Screenname VARCHAR(255),
SOVisit1st VARCHAR(255),
SOVisitFreq VARCHAR(255),
SOVisitTo VARCHAR(255),
SOFindAnswer VARCHAR(255),
SOTimeSaved VARCHAR(255),
SOHowMuchTime VARCHAR(255),
SOAccount VARCHAR(255),
SOPartFreq VARCHAR(255),
SOJobs VARCHAR(255),
EntTeams VARCHAR(255),
SOComm VARCHAR(255),
WelcomeChange VARCHAR(255),
SONewContent VARCHAR(255),
SurveyLength VARCHAR(255),
SurveyEase VARCHAR(255)
);

 /*Loads data from a csv file*/
LOAD DATA INFILE 'm2_survey_data.csv' INTO TABLE survey_data
    FIELDS TERMINATED BY ','
    ENCLOSED BY '\"' 
    LINES TERMINATED BY '\n'
    IGNORE 1 LINES;
    
CREATE TABLE survey_demographics(
Respondent INT NOT NULL,
Age VARCHAR(3),
Gender VARCHAR(255),
Trans VARCHAR(255),
Sexuality VARCHAR(255),
Ethnicity VARCHAR(255),
Dependents VARCHAR(3)
);

LOAD DATA INFILE 'm5_survey_data_demographics.csv' INTO TABLE survey_demographics
    FIELDS TERMINATED BY ','
    ENCLOSED BY '\"' 
    LINES TERMINATED BY '\n' 
    IGNORE 1 LINES;
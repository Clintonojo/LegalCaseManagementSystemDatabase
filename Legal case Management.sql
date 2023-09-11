Create Table
    LegalCase(
        CaseNumber INT PRIMARY KEY AUTO_INCREMENT,
        CaseTitle VARCHAR(225),
        Attorney_Name VARCHAR(225),
        PartyType VARCHAR(25),
        CaseDescription VARCHAR(255),
        CaseStatus VARCHAR(225),
        Doc_EveID INT(255),
        CaseOutcome VARCHAR(255),
        CourtLocation VARCHAR(255)
    );

--Adding foregin key into the legal case table and refrencing it to attorney name
ALTER TABLE
    LegalCase
ADD
    CONSTRAINT FK_Attorney FOREIGN KEY (Attorney_Name) REFERENCES Attorney(Attorney_Name);

ALTER TABLE
    LegalCase
ADD
    CONSTRAINT FK_Party --tABLE nAME FK=FOREIGN KEY
    FOREIGN KEY (PartyType) --Column
    REFERENCES Party(PartyType);

--Table then Column
ALTER TABLE
    LegalCase
ADD
    CONSTRAINT FK_CaseDescription FOREIGN KEY (CaseDescription) REFERENCES CaseDescription(CaseDescription);

--TO ALTER FIRST Table u want to alter
--Then its The other table name
--Then its the column thats the foregin key
--Then oringinal table and the oringal column
ALTER TABLE
    LegalCase
ADD
    CONSTRAINT FK_DocEV FOREIGN KEY (Doc_EveID) REFERENCES DocEV(Doc_EveID);

ALTER TABLE
    LegalCase
ADD
    Constraint FK_WitnessTable FOREIGN KEY (Witness_Name) REFERENCES WitnessTable(Witness_Name);

--Added Witness name to Legal Case Table
ALTER TABLE
    LegalCase
ADD
    Witness_name VARCHAR(255);

ALTER TABLE
    LegalCase
ADD
    Constraint FK_CourtTable FOREIGN KEY(CourtLocation) REFERENCES CourtTable(Court_Location);

Describe
    LegalCase;

Drop Table
    LegalCase;

Create Table
    DocEV(
        Doc_EveID INT PRIMARY KEY AUTO_INCREMENT,
        DocumentDescription VARCHAR(225)
    );

--Vairable first then  primary key new thing learned
Create Table
    WitnessTable(
        Witness_Name VARCHAR(225) PRIMARY KEY,
        Contact_details VARCHAR(225),
        Witness_Statement VARCHAR(225),
        CaseNumber INT
    );

Create Table
    CourtTable(
        Court_Location VARCHAR(225) PRIMARY KEY,
        Court_Description VARCHAR(225),
        Court_Name VARCHAR(225),
        Judge_Name VARCHAR(225)
    );

Create Table
    Attorney(
        Attorney_Name VARCHAR(255) PRIMARY KEY,
        Attorney_Contact VARCHAR(255),
        Attorney_LawFirm VARCHAR(255),
        Attorney_Type VARCHAR(255)
    );

Create Table
    CaseDescription(
        CaseDescription VARCHAR(225) PRIMARY KEY,
        Case_Number INT,
        Legal_issue VARCHAR(225)
    );

CREATE TABLE
    Party (
        PartyType VARCHAR(225) PRIMARY KEY,
        PartyId INT,
        PartyName VARCHAR(225)
    );

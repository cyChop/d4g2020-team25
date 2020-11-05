/*
 * Create table REGION
*/
CREATE TABLE d4g_ifn.REGION (
	RGN_ID INT auto_increment NOT NULL,
	RGN_NAME varchar(60) NOT NULL,
	RGN_CODE varchar(2) NOT NULL,
	CONSTRAINT REGION_PK PRIMARY KEY (RGN_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

/*
 * Create table DEPARTEMENT
*/
CREATE TABLE d4g_ifn.DEPARTEMENT (
	DPT_ID INT auto_increment NOT NULL,
	DPT_NAME varchar(60) NULL,
	DPT_CODE varchar(5) NULL,
	RGN_ID INT NOT NULL,
	CONSTRAINT DEPARTEMENT_PK PRIMARY KEY (DPT_ID),
	CONSTRAINT DEPARTEMENT_FK FOREIGN KEY (RGN_ID) REFERENCES d4g_ifn.REGION(RGN_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

/*
 * Create table DEPARTEMENT
*/
CREATE TABLE d4g_ifn.CITY_DIGITAL_SCORING (
	CDS_ID INT NOT NULL,
	CDS_LEGAL_POPULATION INT NULL,
	CDS_NETWORK_RATE_COVERAGE DECIMAL NULL,
	CDS_MOBILITY_COVERAGE_RATE_2G DECIMAL NULL,
	CDS_POVERTY_RATE DECIMAL NULL,
	CDS_MERDIAN_INCOME DECIMAL NULL,
	CDS_SINGLE_PARENT DECIMAL NULL,
	CDS_SINGLE DECIMAL NULL,
	CDS_PUBLIC_SERVICE_PER_PERSON DECIMAL NULL,
	CDS_PUBLIX_SERVICE DECIMAL NULL,
	CDS_JOBLESS_15_TO_64 DECIMAL NULL,
	CDS_PERSON_AGED_15_TO_29 DECIMAL NULL,
	CDS_PERSON_AGED_OVER_65 DECIMAL NULL,
	CDS_NO_DIPLOMA_OVER_15 DECIMAL NULL,
	CDS_CITY_ID INT NOT NULL,
	CONSTRAINT CITY_DIGITAL_SCORING_PK PRIMARY KEY (CDS_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

/*
 * Create table IMP_BASE_IC_DIPLOMES_FORMATION
 */
CREATE TABLE d4g_ifn.IMP_BASE_IC_DIPLOMES_FORMATION (
	DLF_ID INT auto_increment NOT NULL,
	DLF_CODE_ARM varchar(5) NOT NULL,
	DLF_UNSCHOLAR_OVER_15 DECIMAL NULL,
	DLF_UNSCHOLAR_NO_DIPLOMA_OVER_15 DECIMAL NULL,
	CONSTRAINT IMP_BASE_IC_DIPLOMES_FORMATION_PK PRIMARY KEY (DLF_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

/*
* Create table IMP_BASE_CC_FILOSOFI
*/
CREATE TABLE d4g_ifn.IMP_BASE_CC_FILOSOFI (
	FLF_ID INT auto_increment NOT NULL COMMENT 'Auto INC ID',
	FLF_CODE_ARM varchar(5) NOT NULL,
	FLF_POVERTY_RATE DECIMAL NULL,
	FLF_SOCIAL_AID DECIMAL NULL,
	FLF_MEDIAN_INCOME DECIMAL NULL,
	CONSTRAINT IMP_BASE_IC_EVOL_STRUCT_PROP_PK PRIMARY KEY (FLF_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

/*
* Create table IMP_METROPOLE_SITES
*/
CREATE TABLE d4g_ifn.IMP_METROPOLE_SITES (
	MPS_ID INT auto_increment NOT NULL,
	MPS_CODE_ARM varchar(5) NOT NULL,
	MPS_CODE_ACCESSIBILITY_2G DECIMAL NULL,
	CONSTRAINT IMP_METROPLE_SITES_PK PRIMARY KEY (MPS_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

/*
* Create table IMP_BASE_IC_COUPLES_FAMILLES_MENAGES
*/
CREATE TABLE d4g_ifn.IMP_BASE_IC_COUPLES_FAMILLES_MENAGES (
	CFM_ID INT auto_increment NOT NULL,
	CFM_CODE_ARM varchar(5) NOT NULL,
	CFM_SINGLE DECIMAL NULL,
	CFM_SINGLE_PARENT DECIMAL NULL,
	CONSTRAINT IMP_BASE_IC_COUPLES_FAMILLES_MENAGES_PK PRIMARY KEY (CFM_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

/*
* Create table IMP_BASE_IC_EVOL_STRUCT_PROP
*/

CREATE TABLE d4g_ifn.IMP_BASE_IC_EVOL_STRUCT_PROP (
	ESP_ID INT auto_increment NOT NULL,
	ESP_CODE_ARM varchar(5) NOT NULL,
	ESP_TOTAL_POP NUMERIC NULL,
	ESP_POP_AGE_15_29 NUMERIC NULL,
	ESP_POP_AGE_OVER_65 NUMERIC NULL,
	ESP_POP_NO_JOB_OVER_15 NUMERIC NULL,
	CONSTRAINT IMP_BASE_IC_EVOL_STRUCT_PROP_PK PRIMARY KEY (ESP_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

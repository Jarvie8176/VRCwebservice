-- V0.2

-- Schema Initialization --

CREATE TABLE EVENT_SUMMARY (
    NAME                    VARCHAR(127),
    EVENT_CODE              VARCHAR(127),
    TYPE_OF_EVENT           VARCHAR(127),
    EVENT_DATE              DATE,
    LOCATION                VARCHAR(127),
    VENUE                   VARCHAR(127),
    ADDRESS                 VARCHAR(127),
    CITY                    VARCHAR(127),
    STATE_OF_CITY           VARCHAR(127),
    COUNTRY                 VARCHAR(127),
    POSTAL_CODE             VARCHAR(127),
    REGISTRATION_OPEN       DATE,
    REGISTRATION_DEADLINE   DATE,
    REGISTRATION_FEE        VARCHAR(63),
    GRADE_LEVEL             VARCHAR(127),
    CAPACITY                INTEGER(15),
    PROGRAMMING_SKILLS      BOOLEAN,
    ROBOT_SKILLS            BOOLEAN,
    VEXNET_CRYSTAL          VARCHAR(127),
    DESCRIPTION             VARCHAR(255),
    CONTACT_NAME            VARCHAR(63),
    CONTACT_TITLE           VARCHAR(63),
    CONTACT_EMAIL           VARCHAR(127),
    CONTACT_PHONE           VARCHAR(63),
    ADDITIONAL_INFO         VARCHAR(255)
    
);

CREATE TABLE EVENT_SCHEDULE (
    EVENT_CODE              VARCHAR(127),
    ENTRY                   VARCHAR(2047)
    
);

CREATE TABLE TEAM (
    EVENT_CODE              VARCHAR(127),
    TEAM_NUMBER             VARCHAR(15),
    TEAM_NAME               VARCHAR(127),
    ORGANIZATION            VARCHAR(127),
    LOCATION                VARCHAR(127),
    EVENT_RANK              INTEGER(7),
    EVENT_WIN               INTEGER(3),
    EVENT_TIE               INTEGER(3),
    EVENT_LOST              INTEGER(3),
    EVENT_WP                INTEGER(15),
    EVENT_SP                INTEGER(15)
    
);

CREATE TABLE MATCH_REGULAR (
    EVENT_CODE              VARCHAR(127),
    MATCH_NUMBER            VARCHAR(127),
    MATCH_TIME              VARCHAR(19),
    TEAM_RED_0_NUMBER       VARCHAR(15),
    TEAM_RED_1_NUMBER       VARCHAR(15),
    TEAM_BLUE_0_NUMBER      VARCHAR(15),
    TEAM_BLUE_1_NUMBER      VARCHAR(15),
    SCORE_RED               INTEGER(15),
    SCORE_BLUE              INTEGER(15)
    
);
    
CREATE TABLE MATCH_ELIMINATION (
    EVENT_CODE              VARCHAR(127),
    MATCH_NUMBER            VARCHAR(127),
    MATCH_TIME              VARCHAR(19),
    TEAM_RED_0_NUMBER       VARCHAR(15),
    TEAM_RED_1_NUMBER       VARCHAR(15),
    TEAM_RED_2_NUMBER       VARCHAR(15),
    TEAM_BLUE_0_NUMBER      VARCHAR(15),
    TEAM_BLUE_1_NUMBER      VARCHAR(15),
    TEAM_BLUE_2_NUMBER      VARCHAR(15),
    SCORE_RED               INTEGER(15),
    SCORE_BLUE              INTEGER(15)
    
);

-- Result for finished Events

-- Have already recorded in EVENT_RANK of every entry in table TEAM.

--CREATE TABLE EVENT_RESULT (
    --EVENT_CODE              VARCHAR(127),
--    
--    

CREATE TABLE AWARD (
    EVENT_CODE              VARCHAR(127),
    AWARD_TITLE             VARCHAR(127),
    AWARDED_TEAM            VARCHAR(127)
    
);
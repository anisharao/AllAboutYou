-- create database mood_logger;
-- create database All_about_you;
 create table moods(
moodID varchar(255) PRIMARY KEY NOT NULL,
moodname varchar(255));

create table activities(
actID varchar(255) PRIMARY KEY NOT NULL,
activity varchar(255));

create table user(
userID integer(50) primary key not null,
password varchar(20) not null,
first_name varchar(255) ,
last_name varchar(255),
gender Varchar (10) constraint check (gender in ('Female','Male','Non-Binary/Non-Conforming','Transgender','Prefer Not to Say')),
email varchar(255),
Dateofbirth DATE);

create table mood_activity
( moodID varchar(255) PRIMARY KEY,
actID varchar(255),
FOREIGN KEY (moodID)references moods(moodID),
FOREIGN KEY (actID) references activities(actID)); 




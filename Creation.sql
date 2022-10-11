-- create the table to copy the values form csv file to the table

CREATE TABLE olympics (
	Year 		INT,
	City 		VARCHAR(255),
	Sport 		VARCHAR(255),
	Discipline 	VARCHAR(255),
	Athlete 	VARCHAR(255),
	Country 	VARCHAR(255),
	Gender 		VARCHAR(255),
	Event 		VARCHAR(255),
	Meda 		VARCHAR(255)
);


-- copy values from csv to database table
COPY olympics (Year, City, Sport, Discipline, Athlete, Country, Gender, Event, Meda)
FROM '/tmp/Summer_olympics_dataset.csv' DELIMITER ',' CSV HEADER;



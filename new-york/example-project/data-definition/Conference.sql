CREATE TABLE Conference (
  confid 	INT NOT NULL PRIMARY KEY,
  year    	INT NOT NULL,
  city      INT NOT NULL,
  series    INT,
  CONSTRAINT city_fk FOREIGN KEY (city) REFERENCES City(cityid),
  CONSTRAINT series_fk FOREIGN KEY (series) REFERENCES Series(seriesid)
);
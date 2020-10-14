CREATE TABLE Conference (
  confid 	INT NOT NULL PRIMARY KEY,
  year    	INT NOT NULL,
  city      INT NOT NULL,
  series    INT,
  
  start		DATE,
  end		DATE,
  
  CONSTRAINT city_fk FOREIGN KEY (city) REFERENCES City(cityid),
  CONSTRAINT series_fk FOREIGN KEY (series) REFERENCES Series(seriesid)
);
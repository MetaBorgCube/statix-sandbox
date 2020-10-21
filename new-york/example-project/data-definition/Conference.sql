CREATE TABLE Conference (
  confid 	INT NOT NULL PRIMARY KEY,
  year    	INT NOT NULL,
  city      INT NOT NULL,
  series    INT,
  
  start		DATE,
  end		DATE,
  
  CONSTRAINT city_fk   FOREIGN KEY (city) REFERENCES City(cityid),
  CONSTRAINT series_fk FOREIGN KEY (series) REFERENCES Series(seriesid)
);

-- This query selects all conferences that are conflicting with the passed conference
CREATE PROCEDURE selectConflicting @id INT 
AS
  SELECT Other.confid, Other.city, Other.year, Other.series, Other.start, Other.end
    FROM Conference AS C JOIN Conference AS Other 
      ON C.confid <> Other.confid
      -- Conflicting when the start and/or the end date are in the range of the other dates
    WHERE (C.end > Other.start AND C.end < Other.end) OR
        (C.start > Other.start AND C.start < Other.end)
GO;
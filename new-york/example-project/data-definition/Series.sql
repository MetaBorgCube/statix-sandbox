CREATE TABLE Series (
  seriesid  INT NOT NULL PRIMARY KEY,
  abbrev  	VARCHAR(8) NOT NULL,
  name    	VARCHAR(80) NOT NULL
);

CREATE PROCEDURE selectSeriesById @id INT
AS
SELECT * FROM Series
  WHERE seriesid = @id
GO;

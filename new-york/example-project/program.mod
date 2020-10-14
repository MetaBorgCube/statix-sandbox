def leipzig : City = City {
  cityid = 1,
  name = "Leipzig"
}

def sle : Series = Series {
  seriesid = 2,
  name = "Societas Linguistica Europaea",
  abbrev = "SLE"
}

def sle2019 : Conference = Conference {
  confid = 3,
  series = sle,
  year = 2019,
  city = leipzig
}

$ sle2019.start.utc + sle2019.city.cityid + sle2019.series.seriesid

$ with (leipzig) do cityid + 1





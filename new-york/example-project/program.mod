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
  series = 2,
  year = 2019,
  city = 1
}
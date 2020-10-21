def quote = Quotes {
    id = 1,
	text = "Brevity is the soul of wit.",
	author = Authors {
	  id = 2,
	  name = "Bruce"
	}
}

$ (authorQuotes 2).hd.author == 2

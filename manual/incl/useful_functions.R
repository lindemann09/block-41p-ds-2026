
week <- function(x) {
  w = as.Date('21.4.2025',format='%d.%m.%Y') + 7*(x-1)
  txt = format(w, format = "%d/%m")
  return(txt)
}

canvas <- "[Canvas](https://canvas.eur.nl/courses/XXX)" # <------- CHANGE URL HERE

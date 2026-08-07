library(webexercises)
library(knitr)

is_latex <- function() {
  return(opts_knit$get("rmarkdown.pandoc.to") == "latex")
}

# override webexercises::hide for improved latex output

hide <- function(button_text = "Solution") {
  if (is_latex()) {
    return(paste0("\\webexhide{",
                  button_text, "}\n"))
  } else {
    return(webexercises::hide(button_text))
  }
}

unhide <- function() {
  if (is_latex()) {
    return("\\webexunhide\n")
  } else {
    return(webexercises::unhide())
  }
  return (rtn)
}

data_folder <- "[data folder](https://surfdrive.surf.nl/s/EBXYmGdYHiY9eoG)"
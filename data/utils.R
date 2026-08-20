COURSE_REPO = "lindemann09/block-41p-ds-2026"

download_course_data <- function(data_name) {
  file = paste0("https://raw.githubusercontent.com/", COURSE_REPO,
                "/refs/heads/main/data/", data_name, ".csv")
  return(read.csv(file))
}
togeojson <- function(file, writepath = "~") {
  url <- "http://ogre.adc4gis.com/convert"
  tt <- httr::POST(url, body = list(upload = httr::upload_file(file)))
  out <- httr::content(tt, as = "text")
  fileConn <- file(writepath)
  writeLines(out, fileConn)
  close(fileConn)
}

library(plumber)
api <- plumb("R/api.R")
api$run(port = 8000, swagger = FALSE)

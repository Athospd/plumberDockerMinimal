library(plumber)
api <- plumb("R/api.R")
api$run(host = "0.0.0.0", port = 8000, swagger = TRUE)

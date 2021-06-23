library(plumber)

#' Endpoint de teste
#' @get /teste
teste <- function(req, msg = "") {
  paste0("A mensagem foi: ", msg, " ", timestamp())
}

#* Endpoint que recebe um imagem
#* @post /imagem
recebe_imagem <- function(req) {
  paste0("A mensagem foi: ", "POST", " ", timestamp())
}

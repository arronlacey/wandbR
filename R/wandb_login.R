#' Logs into wandb
#'
#' @param api_key your wandb api key
#'
#' @return a string indicating login success
#' @export
#'
#' @examples
wandb_login <- function(api_key){
  wandb$login(key = api_key)
}

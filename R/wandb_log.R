#' Title
#'
#' @return
#' @export
#'
#' @examples
wandb_log <- function(){
  wandb$log(dict(list("acc"=acc,"loss"=loss,"epoch"=epoch)))
}

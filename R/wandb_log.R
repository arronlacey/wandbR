#' Title
#'
#' @return
#' @export
#'
#' @examples
wandb_log <- function(acc=NULL,loss=NULL,epoch=NULL){
  wandb$log(dict(list("acc"=acc,"loss"=loss,"epoch"=epoch)))
}

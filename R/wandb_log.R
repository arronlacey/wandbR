#' wandb_log
#'
#' Logs a dictionary of data to the current run's history.
#'
#' @param acc accuracy
#' @param loss loss
#' @param epoch epoch
#'
#' @return
#' @export
#'
#' @examples
wandb_log <- function(acc=NULL,loss=NULL,epoch=NULL){
  wandb$log(dict(list("acc"=acc,"loss"=loss,"epoch"=epoch)))
}

#' Title
#'
#' @param project
#' @param entity
#' @param learning_rate
#' @param architecture
#' @param dataset
#'
#' @return
#' @export
#'
#' @examples
wandb_init <- function(project,entity, learning_rate,architecture,dataset){
  wandb$init(project=project,entity = entity, config=dict(list(learning_rate=learning_rate,
                                               architecture=architecture,
                                               dataset=dataset)))
}


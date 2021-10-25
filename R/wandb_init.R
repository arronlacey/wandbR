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
wandb_init <- function(project=NULL,learning_rate=NULL,architecture=NULL,
                       layer_1= NULL,
                       activation_1=NULL,
                       dropout= NULL,
                       layer_2= NULL,
                       activation_2= NULL,
                       optimizer= NULL,
                       loss= NULL,
                       metric= NULL,
                       epoch= NULL,
                       batch_size= NULL,
                       dataset=NULL,
                       ){
  wandb$init(project=project, config=dict(list(learning_rate=learning_rate,
                                               architecture=architecture,
                                               layer_1 = layer_1,
                                               activation_1 = activation_1,
                                               dropout = dropout,
                                               layer_2 = layer_2,
                                               activation_2 = activation_2,
                                               optimizer = optimizer,
                                               loss = loss,
                                               metric = metric,
                                               epoch = epoch,
                                               batch_size = batch_size,
                                               dataset=dataset)))
}


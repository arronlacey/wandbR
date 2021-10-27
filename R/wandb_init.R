#' wandb_init
#'
#' Starts a new run to track and log to W&B.
#'
#' wandb_init spawns a new background process to log data to a run, and it also syncs data to wandb_ai by default so you can see live visualizations. Call wandb_init to start a run before logging data with wandb_log.
#' wandb_init returns a run object, and you can also access the run object with wandb.run.
#' At the end of your script, we will automatically call wandb_finish to finalize and cleanup the run. However, if you call wandb_init from a child process, you must explicitly call wandb_finish at the end of the child process.
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
                       dataset=NULL
                       ) {
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


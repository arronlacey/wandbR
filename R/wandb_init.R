#' wandb_init
#'
#' Starts a new run to track and log to W&B.
#'
#' wandb_init spawns a new background process to log data to a run, and it also syncs data to wandb_ai by default so you can see live visualizations. Call wandb_init to start a run before logging data with wandb_log.
#' wandb_init returns a run object, and you can also access the run object with wandb.run.
#' At the end of your script, we will automatically call wandb_finish to finalize and cleanup the run. However, if you call wandb_init from a child process, you must explicitly call wandb_finish at the end of the child process.
#'
#' @param project (str, optional) The name of the project where you're sending the new run.
#' If the project is not specified, the run is put in an "Uncategorized" project.
#' @param entity (str, optional) An entity is a username or team name where you're
#' sending runs. This entity must exist before you can send runs there, so make sure
#' to create your account or team in the UI before starting to log runs.
#' If you don't specify an entity, the run will be sent to your default entity,
#' which is usually your username. Change your default entity in your settings under
#' "default location to create new projects".
#' @param config (dict, argparse, absl.flags, str, optional) This sets wandb.config,
#' a dictionary-like object for saving inputs to your job, like hyperparameters for
#' a model or settings for a data preprocessing job. The config will show up in a table
#' in the UI that you can use to group, filter, and sort runs. Keys should not contain.
#' in their names, and values should be under 10 MB. If dict, argparse or
#' absl.flags: will load the key value pairs into the wandb.config object.
#' If str: will look for a yaml file by that name, and load config from that file
#' into the wandb.config object.
#' @param dataset Specify an in-built dataset on Weights and Biases to run on.
#'
#' @return
#' @export
#'
#' @examples
wandb_init <- function(project=NULL,
                       entity = NULL,
                       config=NULL,
                       learning_rate=NULL,architecture=NULL,
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
                       dataset = NULL
                       ) {

wandb$init(project=project, entity = entity, config = dict(config),
           learning_rate=learning_rate,
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
           dataset = dataset)
}


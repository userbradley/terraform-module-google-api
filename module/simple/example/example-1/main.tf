module "iam-binding" {
  source = "git::ssh://git@github.com/userbradley/terraform-module-google-api.git//modules/simple"
  api    = ["compute.googleapis.com"]
}

/*
bigquery.googleapis.com              BigQuery API
bigquerystorage.googleapis.com       BigQuery Storage API
clouddebugger.googleapis.com         Cloud Debugger API
cloudtrace.googleapis.com            Cloud Trace API
datastore.googleapis.com             Cloud Datastore API
logging.googleapis.com               Cloud Logging API
monitoring.googleapis.com            Cloud Monitoring API
oslogin.googleapis.com               Cloud OS Login API
pubsub.googleapis.com                Cloud Pub/Sub API
sql-component.googleapis.com         Cloud SQL
storage-api.googleapis.com           Google Cloud Storage JSON API
storage-component.googleapis.com     Cloud Storage
storage.googleapis.com               Cloud Storage API
*/
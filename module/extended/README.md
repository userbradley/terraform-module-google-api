# Google cloud API enabler 

You need to have [Service Usage API](https://console.cloud.google.com/apis/library/serviceusage.googleapis.com) enabled prior to running this.

# List the enabled ones to start with

```bash
gcloud services list --enabled  --format="table[box,margin=3,title='✨ Enabled Services ✨'](config.title,state)" --project <project>
```

List the services we can enable

```bash
gcloud services list --available --project <project>> --format="csv(NAME,TITLE)" 
```

# Using this in your code

You can get this code using the module option like below

```terraform
module "api" {
  source = "git::git@github.com:userbradley/terraform-module-google-api.git?ref=tags/v0.0.1"
}
```

Check the latest releases on the github tags section as this may change

Run terraform get, where it will download the module, then you should automatically fill out the required Variables.

## Variables with default values

| Variable name                | Default Value |
|------------------------------|---------------|
| `disable_dependent_services` | `true`        | 
| `timeout_update`             | `30m`         |
| `timeout_create`             | `40m`         | 

You can add these in to your module config by pasting them and then selecting their values
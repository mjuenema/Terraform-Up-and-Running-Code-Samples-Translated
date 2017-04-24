# Web Server Example

This folder contains example [Terraform](https://www.terraform.io/) templates that deploy a MySQL database
in a [Google Cloud Platform](https://cloud.google.com) account.

For more info, please see Chapter 4, "How to Create Reusable Infrastructure with Terraform Modules", of 
*[Terraform: Up and Running](http://www.terraformupandrunning.com)*.

## Pre-requisites

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [Google Cloud Platform](https://cloud.google.com/) account.
* You must have downloaded a Google Cloud Platform credentials file.
* You must have enabled the [Google Cloud SQL API](https://console.developers.google.com/apis/api/sqladmin.googleapis.com/overview) 
  for your project.

Please note that this code was written for Terraform 0.9.x. The `remote config` command
has been removed in [version 0.9.0](https://github.com/hashicorp/terraform/pull/11286).


## Quick start

**Please note that this example will deploy real resources into your Google Cloud Platform account.
Check the [pricing](https://cloud.google.com/pricing/) and
[free trial](https://cloud.google.com/free/) pages.
We are not responsible for any charges you may incur.**

Configure GOOGLE_CREDENTIALS environment variable. The variable must contain the
*content* of the credentials file and not the path to it.

```
export GOOGLE_CREDENTIALS="$(cat ~/.gcloud/terraform-up-and-running-code-samples.json)"
```

Configure remote state storage using a Google Cloud Storage bucket as configured
in `main.tf`.

```
terraform init -backend-config="bucket=(YOUR_BUCKET_NAME)"  \
               -backend-config="path=prod/data-stores/mysql/terraform.tfstate"
```

Validate the templates:

```
terraform plan
```

Deploy the code


```
terraform apply
```

Clean up when you're done:

```
terraform destroy
```

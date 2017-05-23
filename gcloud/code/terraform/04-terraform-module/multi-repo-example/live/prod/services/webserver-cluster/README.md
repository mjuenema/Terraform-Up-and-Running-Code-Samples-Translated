# Web server cluster example (production environment)

This folder contains example [Terraform](https://www.terraform.io/) templates that deploy a cluster of web servers 
(using [Google Compute Engine](https://cloud.google.com/compute/) and
[Auto Scaling](https://cloud.google.com/compute/docs/autoscaler/)
and a load balancer
(using [Google Cloud Load Balancing](https://cloud.google.com/load-balancing/))
in a [Google Cloud Platform](https://cloud.google.com) account.
The load balancer listens on port 80 and returns the text "Hello, World" for the 
`/` URL.
The code for the cluster and load balancer are defined as a Terraform module in
[modules/services/webserver-cluster](../../../modules/services/webserver-cluster)
and pulled in via a versioned Git URL.


For more info, please see Chapter 4, "How to Create Reusable Infrastructure with Terraform Modules", of 
*[Terraform: Up and Running](http://www.terraformupandrunning.com)*.

## Pre-requisites

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [Google Cloud Platform](https://cloud.google.com/) account.
* You must have downloaded a Google Cloud Platform credentials file.
* You must have enabled the Google Compute Engine API.
* You must deploy the MySQL database in [data-stores/mysql](../../data-stores/mysql) BEFORE deploying the
  templates in this folder.

Please note that this code was written for Terraform 0.9.x.

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

Integrate the module

```
terraform get
```

Validate the templates:

```
terraform plan
```

Apply the code:

```
terraform apply
```

Clean up when you're done:

```
terraform destroy
```

## Notes

There seems to be an inconsistency between the book and the AWS example code in
Github. In the book the `db_remote_state_bucket` and `db_remote_state_key` arguments
are hard-coded while the code in Github uses variables instead. As a compromise
the Google Cloud example here uses variables with default values.

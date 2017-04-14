# Terraform "Hello, World" example

This folder contains a "Hello, World" example of a [Terraform](https://www.terraform.io/) template. The template 
deploys a single server in an [Google Cloud Platform]((https://cloud.google.com) account.

For more info, please see the preface of *[Terraform: Up and Running](http://www.terraformupandrunning.com)*.

## Pre-requisites

* You must have an [Google Cloud Platform](https://cloud.google.com/) account.
* You must have downloaded a Google Cloud Platform credentials file.
* You must have enabled the Google Compute Engine API (CORRECT?)


## Quick start

**Please note that this example will deploy real resources into your Google Cloud Platform account.
Check the [pricing](https://cloud.google.com/pricing/) and
[free trial](https://cloud.google.com/free/) pages.
We are not responsible for any charges you may incur.**

Configure GOOGLE_CREDENTIALS environment variable. The variable must contain the
*content* of the credentials file and not the path to it.

```
export GOOGLE_CREDENTIALS="$(cat ~/.gcloud/credentials.json)"
```

Validate the templates:

```
terraform plan
```

Deploy the code:

```
terraform apply
```

Clean up when you're done:

```
terraform destroy
```


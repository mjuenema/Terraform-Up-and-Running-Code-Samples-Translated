# GoogleCloud Storage Remote State Example

This folder contains example [Terraform](https://www.terraform.io/) templates to create a
[Google Cloud Storage](https://cloud.google.com/storage/)
bucket in a 
[Google Cloud Platform](https://cloud.google.com) account.
The Google Cloud Storage bucket can be used for [remote state
storage](https://www.terraform.io/docs/state/remote/).

For more info, please see Chapter 3, "How to Manage Terraform State", of 
*[Terraform: Up and Running](http://www.terraformupandrunning.com)*.

## Pre-requisites


* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [Google Cloud Platform](https://cloud.google.com/) account.
* You must have downloaded a Google Cloud Platform credentials file.

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

You may want to specify a name for your bucket in `vars.tf` using the `default` parameter:

```hcl
variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  default = "(YOUR_BUCKET_NAME)"
}
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

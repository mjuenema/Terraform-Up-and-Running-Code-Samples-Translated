# Terraform: Up & Running Code translated for Google Cloud Platform

This repo contains the code samples for the book *[Terraform: Up and Running](http://www.terraformupandrunning.com)* by
[Yevgeniy Brikman](http://www.ybrikman.com) translated for Google Cloud Platform.

## Quick start

*Copied verbatim from [terraform-up-and-running-code](https://github.com/brikis98/terraform-up-and-running-code)*

All the code is in the [code](/code) folder. It is organized by language (terraform, bash, ruby, etc) and within each
language, by chapter. Since this code comes from a book about Terraform, the vast majority of the code consists of
Terraform examples in the [code/terraform folder](/code/terraform).

For instructions on running the code, please consult the README in each folder, and, of course, the
*[Terraform: Up and Running](http://www.terraformupandrunning.com)* book.

## Google Cloud Platform

**IMPORTANT**

* All examples have been testes with Terraform 0.9.x.
* Understand the [pricing](https://cloud.google.com/pricing/)
  and [free trial](https://cloud.google.com/free/) pages before running any code examples.
* Google Cloud Platform groups resources into projects. Navigate to the
  [Google Cloud Console IAM & Admin](https://console.cloud.google.com/iam-admin/projects)
  page and create a project "Terraform Up and Running Code". Note down the project ID,
  probably "terraform-up-and-running-code". 
* Download the *Authentication JSON File* as described on Terraform's
  [Google Cloud Provider](https://www.terraform.io/docs/providers/google/index.html)
  page and save it as `~/.gcloud//terraform-up-and-running-code.json`. Secure the credentials file
  by running `chmod 0600 ~/.gcloud//terraform-up-and-running-code.json`.
* Check the [Regions and Zones](https://cloud.google.com/compute/docs/regions-zones/regions-zones)
  page and identify the region name closest to you  from the *Available regions & zones*
  table. Before running any code samples, set the `GOOGLE_REGION` to region name you
  chose, e.g. `export GOOGLE_REGION=us-east1`. If you skip this step all resources
  will be in the `asia-southeast1` region because Singapore is closest to my location
  in Australia (until Google opens the data-centre in Sydney).
* Enable the Google Compute Engine API by visiting the 
  [Google Developer Console](https://console.developers.google.com/apis/dashboard).
  Select the "Terraform Up and Running Code" project and click on *Enable API*.
  Next select *Google Compute Engine API* and click *Enabling*.


## License

This code is released under the MIT License. See LICENSE.txt.

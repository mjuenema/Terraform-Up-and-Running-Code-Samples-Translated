# Packer example

This folder shows an example [Packer](https://www.packer.io/) template that can be used 
to create a [Google Compute Engine image](https://cloud.google.com/compute/docs/images)
of an Ubuntu server with Apache, PHP, and a sample PHP app installed.

For more info, please see Chapter 1, "Why Terraform", of 
*[Terraform: Up and Running](http://www.terraformupandrunning.com)* and
*[Google Compute Builder](https://www.packer.io/docs/builders/googlecompute.html)*.

## Pre-requisites

* You must have [Packer](https://www.packer.io/) installed on your computer. 
* You must have an [Google Cloud Platform](https://cloud.google.com/) account.
* You must have downloaded a Google Cloud Platform credentials file. 
* You must have enabled the Google Compute Engine API.


## Quick start

**Please note that this example will deploy real resources into your Google Cloud Platform account.
Check the [pricing](https://cloud.google.com/pricing/) and 
[free trial](https://cloud.google.com/free/) pages. 
We are not responsible for any charges you may incur.**

To build the Google Compute Engine image:

```
vi webserver.json   # correct the "account_file" path.
packer build webserver.json
```

The `packer-example` image will appear in the 
[Images console of the project](https://console.cloud.google.com/compute/imagesDetail/projects/terraform-up-and-running-code/global/images/packer-example?project=terraform-up-and-running-code)

# Web server cluster module example

This folder contains example [Terraform](https://www.terraform.io/) templates that define a cluster of web servers 
(using [Google Compute Engine](https://cloud.google.com/compute/) and
[Auto Scaling](https://cloud.google.com/compute/docs/autoscaler/)
and a load balancer
(using [Google Cloud Load Balancing](https://cloud.google.com/load-balancing/))
in a [Google Cloud Platform](https://cloud.google.com) account.
The load balancer listens on port 80 and returns the text "Hello, World" for the 
`/` URL.

For more info, please see Chapter 4, "How to Create Reusable Infrastructure with Terraform Modules", of 
*[Terraform: Up and Running](http://www.terraformupandrunning.com)*.

## Quick start

Terraform modules are not meant to be deployed directly. Instead, you should be using them from other templates. See
[stage/services/webserver-cluster](../../../stage/services-webserver-cluster) and
[prod/services/webserver-cluster](../../../prod/services-webserver-cluster) for examples.

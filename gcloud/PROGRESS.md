# Progress: Google Cloud Provider

## Preface

* ~~00-preface/hello-world/main.tf~~
* ~~00-preface/hello-world/README.md~~

## Getting Started with Terraform

* ~~02-intro-to-terraform-syntax/one-server/main.tf~~
* ~~02-intro-to-terraform-syntax/one-server/README.md~~
* ~~02-intro-to-terraform-syntax/one-webserver/main.tf~~
* ~~02-intro-to-terraform-syntax/one-webserver/README.md~~

* ~~02-intro-to-terraform-syntax/one-webserver-with-vars/main.tf~~
* ~~02-intro-to-terraform-syntax/one-webserver-with-vars/outputs.tf~~
* ~~02-intro-to-terraform-syntax/one-webserver-with-vars/README.md~~
* ~~02-intro-to-terraform-syntax/one-webserver-with-vars/vars.tf~~

* ~~02-intro-to-terraform-syntax/webserver-cluster/main.tf~~
* ~~02-intro-to-terraform-syntax/webserver-cluster/outputs.tf~~
* ~~02-intro-to-terraform-syntax/webserver-cluster/README.md~~
* ~~02-intro-to-terraform-syntax/webserver-cluster/vars.tf~~

## How to Managa Terraform State

* 03-terraform-state/file-layout-example/global/s3/main.tf
* 03-terraform-state/file-layout-example/global/s3/outputs.tf
* 03-terraform-state/file-layout-example/global/s3/README.md
* 03-terraform-state/file-layout-example/global/s3/vars.tf

* 03-terraform-state/file-layout-example/global/storage/main.tf
* 03-terraform-state/file-layout-example/global/storage/outputs.tf
* 03-terraform-state/file-layout-example/global/storage/README.md
* 03-terraform-state/file-layout-example/global/storage/terraform.tfvars
* 03-terraform-state/file-layout-example/global/storage/vars.tf

* ~~03-terraform-state/file-layout-example/stage/data-stores/mysql/main.tf~~
* ~~03-terraform-state/file-layout-example/stage/data-stores/mysql/outputs.tf~~
* ~~03-terraform-state/file-layout-example/stage/data-stores/mysql/README.md~~
* ~~03-terraform-state/file-layout-example/stage/data-stores/mysql/vars.tf~~

* ~~03-terraform-state/file-layout-example/stage/services/webserver-cluster/main.tf~~
* ~~03-terraform-state/file-layout-example/stage/services/webserver-cluster/outputs.tf~~
* ~~03-terraform-state/file-layout-example/stage/services/webserver-cluster/README.md~~
* ~~03-terraform-state/file-layout-example/stage/services/webserver-cluster/user-data.sh~~
* ~~03-terraform-state/file-layout-example/stage/services/webserver-cluster/vars.tf~~

## How to Create Reusable Infrastructure

### Module example

* ~~04-terraform-module/module-example/modules/services/webserver-cluster/main.tf~~
* ~~04-terraform-module/module-example/modules/services/webserver-cluster/outputs.tf~~
* ~~04-terraform-module/module-example/modules/services/webserver-cluster/README.md~~
* ~~04-terraform-module/module-example/modules/services/webserver-cluster/user-data.sh~~
* ~~04-terraform-module/module-example/modules/services/webserver-cluster/vars.tf~~

* ~~04-terraform-module/module-example/prod/data-stores/mysql/main.tf~~
* ~~04-terraform-module/module-example/prod/data-stores/mysql/outputs.tf~~
* ~~04-terraform-module/module-example/prod/data-stores/mysql/README.md~~
* ~~04-terraform-module/module-example/prod/data-stores/mysql/vars.tf~~

* 04-terraform-module/module-example/prod/services/webserver-cluster/main.tf (auto-scaling is missing)
* ~~04-terraform-module/module-example/prod/services/webserver-cluster/outputs.tf~~
* ~~04-terraform-module/module-example/prod/services/webserver-cluster/README.md~~
* ~~04-terraform-module/module-example/prod/services/webserver-cluster/vars.tf~~

* ~~04-terraform-module/module-example/stage/data-stores/mysql/main.tf~~
* ~~04-terraform-module/module-example/stage/data-stores/mysql/outputs.tf~~
* ~~04-terraform-module/module-example/stage/data-stores/mysql/README.md~~
* ~~04-terraform-module/module-example/stage/data-stores/mysql/vars.tf~~

* 04-terraform-module/module-example/stage/services/webserver-cluster/main.tf (auto-scaling is missing)
* ~~04-terraform-module/module-example/stage/services/webserver-cluster/outputs.tf~~
* ~~04-terraform-module/module-example/stage/services/webserver-cluster/README.md~~
* ~~04-terraform-module/module-example/stage/services/webserver-cluster/vars.tf~~

### Multi repo example

* ~~04-terraform-module/multi-repo-example/live/prod/data-stores/mysql/main.tf~~
* ~~04-terraform-module/multi-repo-example/live/prod/data-stores/mysql/outputs.tf~~
* ~~04-terraform-module/multi-repo-example/live/prod/data-stores/mysql/README.md~~
* ~~04-terraform-module/multi-repo-example/live/prod/data-stores/mysql/vars.tf~~

* 04-terraform-module/multi-repo-example/live/prod/services/webserver-cluster/main.tf (auto-scaling is missing)
* ~~04-terraform-module/multi-repo-example/live/prod/services/webserver-cluster/outputs.tf~~
* ~~04-terraform-module/multi-repo-example/live/prod/services/webserver-cluster/README.md~~
* ~~04-terraform-module/multi-repo-example/live/prod/services/webserver-cluster/vars.tf~~

* ~~04-terraform-module/multi-repo-example/live/stage/data-stores/mysql/main.tf~~
* ~~04-terraform-module/multi-repo-example/live/stage/data-stores/mysql/outputs.tf~~
* ~~04-terraform-module/multi-repo-example/live/stage/data-stores/mysql/README.md~~
* ~~04-terraform-module/multi-repo-example/live/stage/data-stores/mysql/vars.tf~~

* 04-terraform-module/multi-repo-example/live/stage/services/webserver-cluster/main.tf  (auto-scaling is missing)
* ~~04-terraform-module/multi-repo-example/live/stage/services/webserver-cluster/outputs.tf~~
* ~~04-terraform-module/multi-repo-example/live/stage/services/webserver-cluster/README.md~~
* ~~04-terraform-module/multi-repo-example/live/stage/services/webserver-cluster/vars.tf~~

## Terraform Tips and Tricks

* 05-tips-and-tricks/loops-and-if-statements/live/global/existing-iam-user/main.tf
* 05-tips-and-tricks/loops-and-if-statements/live/global/existing-iam-user/README.md
* 05-tips-and-tricks/loops-and-if-statements/live/global/one-iam-user/main.tf
* 05-tips-and-tricks/loops-and-if-statements/live/global/one-iam-user/README.md
* 05-tips-and-tricks/loops-and-if-statements/live/global/three-iam-users-increment-name/main.tf
* 05-tips-and-tricks/loops-and-if-statements/live/global/three-iam-users-increment-name/README.md
* 05-tips-and-tricks/loops-and-if-statements/live/global/three-iam-users-unique-names/main.tf
* 05-tips-and-tricks/loops-and-if-statements/live/global/three-iam-users-unique-names/outputs.tf
* 05-tips-and-tricks/loops-and-if-statements/live/global/three-iam-users-unique-names/README.md
* 05-tips-and-tricks/loops-and-if-statements/live/global/three-iam-users-unique-names/vars.tf
* 05-tips-and-tricks/loops-and-if-statements/live/prod/data-stores/mysql/main.tf
* 05-tips-and-tricks/loops-and-if-statements/live/prod/data-stores/mysql/outputs.tf
* 05-tips-and-tricks/loops-and-if-statements/live/prod/data-stores/mysql/README.md
* 05-tips-and-tricks/loops-and-if-statements/live/prod/data-stores/mysql/vars.tf
* 05-tips-and-tricks/loops-and-if-statements/live/prod/services/webserver-cluster/main.tf
* 05-tips-and-tricks/loops-and-if-statements/live/prod/services/webserver-cluster/outputs.tf
* 05-tips-and-tricks/loops-and-if-statements/live/prod/services/webserver-cluster/README.md
* 05-tips-and-tricks/loops-and-if-statements/live/prod/services/webserver-cluster/vars.tf
* 05-tips-and-tricks/loops-and-if-statements/live/stage/data-stores/mysql/main.tf
* 05-tips-and-tricks/loops-and-if-statements/live/stage/data-stores/mysql/outputs.tf
* 05-tips-and-tricks/loops-and-if-statements/live/stage/data-stores/mysql/README.md
* 05-tips-and-tricks/loops-and-if-statements/live/stage/data-stores/mysql/vars.tf
* 05-tips-and-tricks/loops-and-if-statements/live/stage/services/multiple-ec2-instances/main.tf
* 05-tips-and-tricks/loops-and-if-statements/live/stage/services/multiple-ec2-instances/README.md
* 05-tips-and-tricks/loops-and-if-statements/live/stage/services/multiple-ec2-instances/vars.tf
* 05-tips-and-tricks/loops-and-if-statements/live/stage/services/webserver-cluster/main.tf
* 05-tips-and-tricks/loops-and-if-statements/live/stage/services/webserver-cluster/outputs.tf
* 05-tips-and-tricks/loops-and-if-statements/live/stage/services/webserver-cluster/README.md
* 05-tips-and-tricks/loops-and-if-statements/live/stage/services/webserver-cluster/vars.tf
* 05-tips-and-tricks/loops-and-if-statements/modules/services/webserver-cluster/main.tf
* 05-tips-and-tricks/loops-and-if-statements/modules/services/webserver-cluster/outputs.tf
* 05-tips-and-tricks/loops-and-if-statements/modules/services/webserver-cluster/README.md
* 05-tips-and-tricks/loops-and-if-statements/modules/services/webserver-cluster/user-data-new.sh
* 05-tips-and-tricks/loops-and-if-statements/modules/services/webserver-cluster/user-data.sh
* 05-tips-and-tricks/loops-and-if-statements/modules/services/webserver-cluster/vars.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/prod/data-stores/mysql/main.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/prod/data-stores/mysql/outputs.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/prod/data-stores/mysql/README.md
* 05-tips-and-tricks/zero-downtime-deployment/live/prod/data-stores/mysql/vars.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/prod/services/webserver-cluster/main.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/prod/services/webserver-cluster/outputs.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/prod/services/webserver-cluster/README.md
* 05-tips-and-tricks/zero-downtime-deployment/live/prod/services/webserver-cluster/vars.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/stage/data-stores/mysql/main.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/stage/data-stores/mysql/outputs.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/stage/data-stores/mysql/README.md
* 05-tips-and-tricks/zero-downtime-deployment/live/stage/data-stores/mysql/vars.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/stage/services/webserver-cluster/main.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/stage/services/webserver-cluster/outputs.tf
* 05-tips-and-tricks/zero-downtime-deployment/live/stage/services/webserver-cluster/README.md
* 05-tips-and-tricks/zero-downtime-deployment/live/stage/services/webserver-cluster/vars.tf
* 05-tips-and-tricks/zero-downtime-deployment/modules/services/webserver-cluster/main.tf
* 05-tips-and-tricks/zero-downtime-deployment/modules/services/webserver-cluster/outputs.tf
* 05-tips-and-tricks/zero-downtime-deployment/modules/services/webserver-cluster/README.md
* 05-tips-and-tricks/zero-downtime-deployment/modules/services/webserver-cluster/user-data.sh
* 05-tips-and-tricks/zero-downtime-deployment/modules/services/webserver-cluster/vars.tf

## How to Use Terraform as a Team

* 06-terraform-team/live/prod/data-stores/mysql/main.tf
* 06-terraform-team/live/prod/data-stores/mysql/outputs.tf
* 06-terraform-team/live/prod/data-stores/mysql/README.md
* 06-terraform-team/live/prod/data-stores/mysql/vars.tf
* 06-terraform-team/live/prod/services/webserver-cluster/main.tf
* 06-terraform-team/live/prod/services/webserver-cluster/outputs.tf
* 06-terraform-team/live/prod/services/webserver-cluster/README.md
* 06-terraform-team/live/prod/services/webserver-cluster/vars.tf
* 06-terraform-team/live/stage/data-stores/mysql/main.tf
* 06-terraform-team/live/stage/data-stores/mysql/outputs.tf
* 06-terraform-team/live/stage/data-stores/mysql/README.md
* 06-terraform-team/live/stage/data-stores/mysql/vars.tf
* 06-terraform-team/live/stage/services/webserver-cluster/main.tf
* 06-terraform-team/live/stage/services/webserver-cluster/outputs.tf
* 06-terraform-team/live/stage/services/webserver-cluster/README.md
* 06-terraform-team/live/stage/services/webserver-cluster/vars.tf
* 06-terraform-team/modules/services/webserver-cluster/main.tf
* 06-terraform-team/modules/services/webserver-cluster/outputs.tf
* 06-terraform-team/modules/services/webserver-cluster/README.md
* 06-terraform-team/modules/services/webserver-cluster/user-data.sh
* 06-terraform-team/modules/services/webserver-cluster/vars.tf

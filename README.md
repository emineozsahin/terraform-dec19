# This repository was used to practice Terraform cloud

Login to [Terraform Cloud](https://app.terraform.io/session)

Github repository can be used directly in the Terraform Cloud to deploy the resources.

Four variables are needed to run the terraform module on terraform cloud.

- ARM_SUBSCRIPTION_ID
- ARM_TENANT_ID
- ARM_CLIENT_ID
- ARM_CLIENT_SECRET

Use following codes to find out the values for these variables

```sh
# Subscription ID (ARM_SUBSCRIPTION_ID)
az account list --output table

# ARM_TENANT_ID (tenant), ARM_CLIENT_ID (appId), and ARM_CLIENT_SECRET (password)
az ad sp create-for-rbac \
    --role="Contributor" \
    --scopes="/subscriptions/arm-subscription-id"
```


# azure-experiments-dynamic-app-service-add-to-firewall

Example to test dynamic assignment of IPs to Azure postgreSQL and whitelist an app service

To test:

- `cd terraform/env`
- `terraform init`
- `terraform plan`
- `terraform apply`

An error message should be displayed mentioning something like this:

>  The "for_each" map includes keys derived from resource attributes that cannot be determined until apply, and so Terraform cannot determine the full set
> │ of keys that will identify the instances of this resource.
> │
> │ When working with unknown values in for_each, it's better to define the map keys statically in your configuration and place apply-time results only in
> │ the map values.
> │
> │ Alternatively, you could use the -target planning option to first apply only the resources that the for_each value depends on, and then apply a second
> │ time to fully converge.

This is unexpected as the "depends" on should assure that a resource is deployed before proceeding on to the next.

If we comment out the content of the `terraform/modules/psql/networking.tf` file. The configuration gets deployed correctly but it's also noticeable that it follows indeed the order enforced by the `depends_on` attribute block.

In case of deployment, to remove the resources simply run the `terraform apply -destroy`.
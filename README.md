# 		Bosh Director's release version check Resource

A specific [Concourse](http://concourse.ci) resource that check the last installed release of a product on the bosh director 

## Getting started

Add the following [Resource Type](http://concourse.ci/configuring-resource-types.html) to your Concourse pipeline
```yaml
resource_types:
  - name: product-installed-version
    type: docker-image
    source:
      repository: jraverdyorange/concourse-director-release-check-resource
```

## Source Configuration

### `source`:

#### Parameters

* `uri`: *Required.* the bosh director endpoint.
* `id`: *Required.* The client id defined in **uaa**
* `password`: *Required*. The client password as defined in **uaa**
* `product`: *Required*. The product to check on the director

An example source configuration is below.
```yaml
resources:
- name: prometheus-version
  type:  product-installed-version
  source:
    uri: "10.165.0.8"
    id: "concourse"
    password: "*********"
    product: "prometheus"
```

## Behavior

### `check`: Check for the latest version of the product on bosh director.

The ressource uses `uaa curl` to check the last installed release on the bosh director

### `in`: Not supported.

### `out`: Not supported.
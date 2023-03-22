# policy-action

Github Action for Seedwing Policy.

This action can be used to apply any policy to any artifact. To use it, add a `Seedwing.toml` file to your project:

``` 4d
[policy]
dirs = ["policies"]
inputs = ["bom.json"]
required = ["vulnerabilities::not-affected"]
```

## Usage

```
- name: Apply company policies
  uses: seedwing-io/policy-action@v1
```

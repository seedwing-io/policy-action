# seedwing-action

Github Action for Seedwing

## Usage

```
- name: Apply company policies
  uses: seedwing-io/seedwing-action@v1
  with:
    policy-dir: policies
    name: vulnerabilities::not-affected
    input: bom.json
```

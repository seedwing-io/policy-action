# seedwing-action

Github Action for Seedwing

## Usage

```
- name: Apply company policies
  uses: seedwing-io/seedwing-action@v1
  with:
    policy-dir: policies
    enforcer-config: .enforcer.yaml
    source: pom.xml
```

Policy file `policy.dog` example : 
```
pattern not-vulnerable = {
    purl: uri::purl(openvex::not-affected),
}
```

Enforcer config file `.enforcer.yaml` : 
```
dependencies:
  policy: ./policy.dog
  requires: "not-vulnerable"
enforcer:
  rationale: yaml
```
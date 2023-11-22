# OpenSCAD CI Pipelines

Pipeline definitions for the OpenSCAD concourse CI instance.

https://ci.openscad.org/

## Commands

### Create a new team for grouping pipelines

`./fly -t openscad set-team --team-name dockerhub --local-user openscad`

### Create a new pipeline via a given YAML file

`./fly -t openscad set-pipeline --team dockerhub --pipeline dockerhub-openscad-dev-amd64 --config dockerhub-openscad-dev-amd64.yml`

Shortcut for pipelines files that follow the naming convention `<team>-<name>.yml`

`./scripts/set-pipeline.sh dockerhub-openscad-dev-amd64.yml`

### Unpause the new pipeline (command shown in output of previous command)

 `./fly -t openscad unpause-pipeline -p dockerhub-openscad-dev-amd64 --team dockerhub`

### Expose the new pipeline (make public so it can be viewed without login)

`./fly -t openscad expose-pipeline --pipeline dockerhub-openscad-dev-amd64 --team dockerhub`



@apply env: (find-req-stages env)
  echo "terraformed {{env}}"

create-workspace env:
  #!/usr/bin/env bash
  set -euo pipefail
  terraform workspace select {{env}} || read -n 1 -sp "Workspace does not exist, would you like to create it? (Y/n)" response && if [ $response == [Yy] ]; then terraform workspace new {{env}}; fi

find-req-stages env:
  #!/usr/bin/env bash

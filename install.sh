#!/bin/bash
set -e

# The install.sh script is the installation entrypoint for any dev container 'features' in this repository. 
#
# The tooling will parse the devcontainer-features.json + user devcontainer, and write 
# any build-time arguments into a feature-set scoped "devcontainer-features.env"
# The author is free to source that file and use it however they would like.
set -a
. ./devcontainer-features.env
set +a


if [ ! -z ${_BUILD_ARG_LANDODEVCONTAINER} ]; then
    echo "Activating feature 'Lando Dev Container'"

    curl -fsSL -o /usr/local/bin/lando "https://files.lando.dev/cli/lando-linux-x64-edge"
    sudo chmod +x /usr/local/bin/lando

fi

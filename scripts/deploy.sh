#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

script_path=$(realpath $0)
script_folder=$(dirname $script_path)
project_path=$(dirname $script_folder)

bundle exec jekyll build
scp -4 -r $project_path/_site corendos@vent.godeau.xyz:~/vent/

#!/bin/bash

set -euo pipefail

umask 02

cd "${0%/*}"
d="${PWD}"

for n in {0..9}; do
  cd ..
  mkdir -p "dep_example_${n}"
  cd "${_}"
  printf '# %s\n\nhttps://github.com/interim-mc-plugin-collection/dep_config\n' "${_}" > README.md
  printf '# Changelog\n\n## [0.0.1] - %(%F)T\n### Added\n- inital release\n' > CHANGELOG.md
  sed -E '/^[[:space:]]\*/s/(dep_example)(\.js)/\1_'"${n}"'\2/' "${d}/dep_example.js" > "dep_example_${n}.js"
  git init --shared=group -b main
  git status > /dev/null 2>&1 || git config --global --add safe.directory "${PWD}"
  git remote add origin "https://github.com/interim-mc-plugin-collection/dep_example_${n}.git"
  git add .
  git commit -m 'initial commit'
  git push --force --set-upstream origin main
done

#!/bin/sh

git clone https://github.com/nhsuk/ci-deployment.git scripts/ci-deployment

if [ -n "CI_SCRIPT_BRANCH" ]; then

  pushd scripts/ci-deployment
  git checkout "${CI_SCRIPT_BRANCH}"
  popd
fi

bash scripts/ci-deployment/deploy.sh

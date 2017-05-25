
#!/usr/bin/env bash
echo "$0: starting deployment for IMIMAPS_ENVIRONMENT [${IMIMAPS_ENVIRONMENT}]"

export DEPLOYMENT_ENVIRONMENT=$1

echo "DEPLOYMENT_ENVIRONMENT: [${DEPLOYMENT_ENVIRONMENT}]"
if [ -z $DEPLOYMENT_ENVIRONMENT ]; then
  echo "ERROR: no deployment environment given"
  echo "usage: $0 <environment>"
  echo "end $0"
  exit 1
fi

. ./ci-cd/deploy01-settings.sh
echo "DEPLOYMENT_SHOULD_RUN $DEPLOYMENT_SHOULD_RUN"
echo "DEPLOYMENT_TAG $DEPLOYMENT_TAG"
if [ $DEPLOYMENT_SHOULD_RUN != "true" ]; then
  echo "SKIPPING DEPLOYMENT"
  echo "end $0"
  exit 0
fi

if [ $DEPLOYMENT_PIPELINE == "HTW" ]; then
      ./ci-cd/deploy02-docker-build.rb
      ./ci-cd/deploy03-travis-decrypt-keys.sh
      ./ci-cd/deploy04-docker-push.rb
      ./ci-cd/deploy05-docker-deploy.rb
else
      echo "DEPLOYMENT_PIPELINE ${DEPLOYMENT_PIPELINE} not recognized"
fi

echo "end $0"

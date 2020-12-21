#!/bin/bash
# Usage: bash scripts/package.sh

dir=$(dirname $(dirname $0))
echo ${dir}
helm package $dir/deploy/helm -d $dir/packages
helm repo index $dir/packages

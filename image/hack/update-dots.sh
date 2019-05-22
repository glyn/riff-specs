#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

pushd ${PROJECT_ROOT}
trap popd EXIT

dot -Tjpeg images/ociimage.gv > images/ociimage.jpeg

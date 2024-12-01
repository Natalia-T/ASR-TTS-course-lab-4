#!/usr/bin/env bash

set -uo pipefail

if [ ! -d venv ]; then
  python3 -m venv venv || exit 1
fi

source venv/bin/activate || exit 1

pip install -U pip || exit 1

pip install -r requirements.txt || exit 1

pip install git+https://github.com/Natalia-T/wvmos || exit 1

echo Done

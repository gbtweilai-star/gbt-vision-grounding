#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_vision_grounding info
PYTHONPATH=src python -m gbt_vision_grounding check --payload '{}'
PYTHONPATH=src python -m gbt_vision_grounding run   --payload '{}'

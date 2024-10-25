source .venv/bin/activate
export CXX=g++
export UV_NO_CACHE=true
uv pip install $(cat requirements.txt | grep torch) setuptools psutil ninja
uv pip install -e .  --no-build-isolation --verbose

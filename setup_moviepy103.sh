#!/bin/bash

echo "🚀 Installing MoviePy 1.0.3 with editor.py support..."

python3 -m venv venv
source venv/bin/activate

rm -rf venv/lib/python3.9/site-packages/moviepy*

cd /tmp
rm -rf moviepy103
git clone --branch v1.0.3 https://github.com/Zulko/moviepy.git moviepy103

cd moviepy103
pip install .
pip install pillow==9.5.0

python3 -c 'from moviepy.editor import *; print("✅ MoviePy hoạt động 
OK!")'


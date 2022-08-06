#!/usr/bin/env bash

echo "what's in your dist?"
ls -al dist/

echo "-------------"

echo "Rename dist directory to static (TODO: do this with ember build output instead)"
mv dist static

echo "Make new dist directory"
mkdir dist

echo "copying functions into dist directory"
cp -R srv/functions dist

echo "copying config.json into dist direct"
cp srv/config.json dist

mv static dist/functions/fastboot.func/
mv dist/functions/fastboot.func/static dist/functions/fastboot.func/dist

echo "what do we have in dist/functions/fastboot.func ?"
ls -al dist/functions/fastboot.func

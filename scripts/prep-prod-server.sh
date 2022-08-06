#!/usr/bin/env bash

echo "what's in your dist?"
ls -al dist/

echo "-------------"

echo "deleting .vercel/output directory"
rm -rf .vercel/output || true

echo "creating .vercel/output directory"
mkdir -p .vercel/output

echo "copying serverless functions to .vercel/output"
cp -R srv/functions .vercel/output

echo "copying config.json into .vercel/output"
cp srv/config.json .vercel/output

echo "copying dist directory into .vercel/output"
cp -R dist .vercel/output

echo "what do we have in .vercel/output?"
ls -al .vercel/output

echo "------------------------------"

echo "Move dist/ directory one level deep"
mv dist static
mkdir dist
mv static dist/
mv dist/static dist/dist

echo "copying functions into dist directory instead"
cp -R srv/functions dist

echo "copying config.json into dist direct"
cp srv/config.json dist

echo "what do we have in dist/ ?"
ls -al dist

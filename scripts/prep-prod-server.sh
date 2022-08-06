#!/usr/bin/env bash

echo "deleting .vercel/output directory"
rm -rf .vercel/output || true

echo "creating .vercel/output directory"
mkdir -p .vercel/output

echo "copying serverless functions to .vercel/output"
cp -R srv/functions .vercel/output

echo "copying dist directory into .vercel/output"
cp -R dist .vercel/output

echo "what do we have?"
ls .vercel/output

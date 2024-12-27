#!/bin/bash
git add .
echo "success"
read comment
git commit -m "$comment"
echo "success2"
git push

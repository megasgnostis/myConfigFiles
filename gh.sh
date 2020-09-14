#!/bin/bash

fuction gh {
  git add .
  git commit -m 'I am an automated comment'
  git push
}

gh
cd ../0PCLCompiler
gh
cd ../2StunningHelpFiles
gh
cd ../3StunningExecutables
gh
cd ../4TheRest

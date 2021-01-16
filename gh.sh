#!/bin/bash

gh () {
  git add .
  git commit -m 'I am an automated comment'
  git push
}

gh
cd ../StunningHelpFiles
gh
cd ../StunningExecutables
gh
cd ../Stuff
gh

#/bin/bash

echo "running starter script"
# See http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPTDIR

echo "project folder contains:"
ls -la
echo "installing node project dependencies ..."
npm install
echo "running nodemon ..."
nodemon index.coffee

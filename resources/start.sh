#/bin/bash

echo "running starter script"
(cd /src && {
	echo "project folder contains:"
	ls -la
	echo "installing node project dependencies ..."
	npm install
	npm install grunt request time-grunt load-grunt-tasks
	echo "running grunt ..."
	grunt
})


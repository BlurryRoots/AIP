#/bin/bash

echo "running starter script"
(cd /src && {
	ls -la
	echo "running grunt"
	grunt
})


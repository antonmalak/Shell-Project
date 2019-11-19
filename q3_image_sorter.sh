#! /bin/bash
#q3_image_sorter.sh

DIR=$1
if [ -d "$DIR" ]; then
	fileName=$(echo $DIR | tr '[/]' '_')
	convert -append $(find $DIR -name '*.jpg'| xargs ls -1tr) "$fileName"
	exit 1
else
	echo "Directory is invalid"
	exit 1
fi

#first the script will check if the directory is valid
#fileName is set to be the directory but with each "/" changed to "_" using tr command
#Find all files in directory with the ".jpg" suffix and pipe it to xargs.
# xargs will then feed the filenames of the find command into ls
#ls -1tr will sort by: 1 = 1 file per line, t = by modification time, r = in reverse order.

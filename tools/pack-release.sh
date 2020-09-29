#! /bin/sh

LIB_NAME=BlinkSenseMove
ZIP_NAME=$LIB_NAME.zip
LIB_DIR=../libraries


cd $LIB_DIR

find .. -name ".DS_Store" -print0 | xargs -0 rm -f

if [ -f "$ZIP_NAME" ]; then
	echo "# deleting existing zip file"
	rm "$ZIP_NAME"
fi

zip --quiet -r "$ZIP_NAME" ./$LIB_NAME

#!/bin/bash
# this script generates a basic web page template

# template root name
root="project_blank"
# creates the root folder
mkdir -p $root

# creates the subfolders for scripts, css, assets
mkdir -p project_blank/assets project_blank/css project_blank/scripts

# add app.css files to css folder
touch project_blank/css/app.css

echo "* {" >> $root/css/app.css
echo "  margin: 0;" >> $root/css/app.css
echo "  padding: 0" >> $root/css/app.css
echo "  background: rgba:#4db5ff;" >> $root/css/app.css
echo "  box-sizing: border-box;" >> $root/css/app.css
echo "  scroll-behavior: smooth;" >> $root/css/app.css
echo "}" >> $root/css/app.css

# add app.js to scripts folder
touch $root/scripts/app.js

# add image folder to assets
touch $root/assets/images

# add index.html to root 
index=index.html
touch $root/$index

echo "<!DOCTYPE html>" >> $root/$index
echo "<html lang=en>" >> $root/$index
echo >> $root/$index # blank line
echo "<head>" >> $root/$index
echo "  <link rel='stylesheet' href='css/app.css' />" >> $root/$index
echo "  <title>Basic Template</title>" >> $root/$index
echo "</head>" >> $root/$index
echo >> $root/$index # blank line
echo "<body>" >> $root/$index
echo "  <h1>Hello World</h1>" >> $root/$index
echo "  <h3>Great day for coding!</h3>" >> $root/$index
echo "  <script src='js/app.js'></script>" >> $root/$index
echo "</body>" >> $root/$index


# print success message

echo "Template initiated!"
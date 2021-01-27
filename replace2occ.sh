# This is a script for replacing every second accurrency of the word fun with the word new. Case insensitive, only whole words should be replaced."


#!/bin/bash
printf 'Fun funny fun this is fun and Fun is fun\n%.0s' {1..15} > fun.txt
sed -i.bak '-es/\<fun\>/new/I'{7..0..2} fun.txt
cat fun.txt
echo "Done"


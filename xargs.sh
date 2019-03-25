file=parameters_xargs.txt
echo "Original files:"
cat $file
echo
echo "multi-line to sigle-line:"
cat $file | xargs
echo
echo "Fixed number per line 3: -n"
cat $file | xargs -n3
echo
echo "Specificial splitter: -d"
echo "nameXnameXname" | xargs -dX

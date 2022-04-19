 read file_name
 grep -o '[[:alnum:]]*' $file_name | sort | uniq -c | sed -E 's/[[:space:]]*([0-9]+) (.+)/\2 : \1/'
 #The grep command searches the given files for lines containing a match to a given pattern list.
 # -o: shows only that part of matching line which matches the pattern
 # '[[:alnum:]]*' name of class for alpha numeric characters
 # $filename: filename is passed as argument for whom we want to search repeated words
 # sort : inbuilt bash function to sort the words
 # uniq -c :: It tells the number of times a word was repeated. 
 # sed -E: can perform function on file such that edition and deletion
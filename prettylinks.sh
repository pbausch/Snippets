regex='(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'
while read line; do
        url=$line
        if [ "" != "$line" ] && [[ $url =~ $regex ]] 
		then
                tempfile=$(mktemp)
                wget -qO- $url > $tempfile
                title=$(cat $tempfile | grep \<title\> | grep -o '<title.*title>\|^--.*' | sed "s|<[^>]*>||g");
                echo -e "<a href=\"$url\">$title</a>";
		else
				echo $line
        fi;
done
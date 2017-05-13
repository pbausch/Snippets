FORELIST=(
	'fefefd'
)
BACKLIST=(
	'000000'
)
COUNT=${#FORELIST[@]}
INDEX=0

while [ "$INDEX" -lt "$COUNT" ]
do    
	FOREGROUND=${FORELIST[$INDEX]}
	BACKGROUND=${BACKLIST[$INDEX]}

	convert -size 48x48 xc:"#$BACKGROUND" -fill "#$FOREGROUND" -gravity center -font "DDCHardware" -pointsize 53 -annotate +1+9 'O' -blur 2x3 $FOREGROUND.48.png
	convert -size 32x32 xc:"#$BACKGROUND" -fill "#$FOREGROUND" -gravity center -font "DDCHardware" -pointsize 33 -annotate +1+6 'O' -blur 2x3 $FOREGROUND.32.png
	convert -size 16x16 xc:"#$BACKGROUND" -fill "#$FOREGROUND" -gravity center -font "DDCHardware" -pointsize 15 -annotate +0.5+2.3 'O' -blur 1x3 $FOREGROUND.16.png
	optipng $FOREGROUND.48.png
	optipng $FOREGROUND.32.png
	optipng $FOREGROUND.16.png
	convert $FOREGROUND.16.png $FOREGROUND.32.png $FOREGROUND.48.png $FOREGROUND.ico
	rm $FOREGROUND.48.png
	rm $FOREGROUND.32.png
	rm $FOREGROUND.16.png

	convert -size 114x114 xc:"#$BACKGROUND" -fill "#$FOREGROUND" -gravity center -font "DDCHardware" -pointsize 125 -annotate +1+20 'O' -blur 5x3 $FOREGROUND.apple-touch-icon.png
	optipng $FOREGROUND.apple-touch-icon.png

	optipng $FOREGROUND.twitter-card.png
	
	((INDEX++))
done
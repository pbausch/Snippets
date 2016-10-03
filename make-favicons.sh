FOREGROUND='193338'
BACKGROUND='87BFC9'

convert -size 48x48 xc:"#$BACKGROUND" -fill "#$FOREGROUND" -gravity center -font "HelveticaB" -pointsize 53 -annotate +0+12 'O' -blur 2x3 $FOREGROUND.48.png
convert -size 32x32 xc:"#$BACKGROUND" -fill "#$FOREGROUND" -gravity center -font "HelveticaB" -pointsize 33.5 -annotate +1+7 'O' -blur 2x3 $FOREGROUND.32.png
convert -size 16x16 xc:"#$BACKGROUND" -fill "#$FOREGROUND" -gravity center -font "HelveticaB" -pointsize 16 -annotate +1+3.5 'O' -blur 1x3 $FOREGROUND.16.png
optipng $FOREGROUND.48.png
optipng $FOREGROUND.32.png
optipng $FOREGROUND.16.png
convert $FOREGROUND.16.png $FOREGROUND.32.png $FOREGROUND.48.png $FOREGROUND.ico
rm $FOREGROUND.48.png
rm $FOREGROUND.32.png
rm $FOREGROUND.16.png

convert -size 114x114 xc:"#$BACKGROUND" -fill "#$FOREGROUND" -gravity center -font "HelveticaB" -pointsize 125 -annotate +0+26 'O' -blur 5x3 $FOREGROUND.apple-touch-icon.png
optipng $FOREGROUND.apple-touch-icon.png


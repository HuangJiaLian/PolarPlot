set terminal pngcairo size 800,800
set output 'circle.png'
unset border

set polar
# plot 2
plot .5,1,1.5

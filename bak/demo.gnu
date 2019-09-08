reset 
set terminal pngcairo size 800,800 
set output '3d-polar.png'

set lmargin at screen 0.05
set rmargin at screen 0.85
set bmargin at screen 0.1
set tmargin at screen 0.9

set pm3d map interpolate 20,20
unset key

set multiplot

# plot the heatmap

# set cntrparam bspline
# set cntrparam points 10
# set cntrparam levels increment -6,-6,-24
# set contour surface


set palette rgb 33,13,10 #rainbow (blue-green-yellow-red)
set cbrange [-18:0]

unset border
unset xtics
unset ytics

set angles degree
r = 3.31 #This number is Log10(max frequency) - Log10(min frequency) of the polar frequency grid 
set xrange[-r:r]
set yrange[-r:r]
set colorbox user origin 0.9,0.1 size 0.03,0.8
splot 'new_test.dat'

# now plot the polar grid only
set style line 11 lc rgb 'black' lw 2 lt 0
set grid polar ls 11
set polar
set logscale r 10
set rrange[10:20000]
unset raxis
set rtics format '' scale 0
#set rtics axis scale 
set rtics (20,50,100,200,500,1000,2000,5000,10000,20000)
do for [i=-150:180:30] {
dum = r+0.15+0.05*int(abs(i/100))+0.05*int(abs(i/140))-0.05/abs(i+1)
set label i/30+6 at first dum*cos(i), first dum*sin(i) center sprintf('%d', i)
}
plot NaN w l
unset multiplot
unset output
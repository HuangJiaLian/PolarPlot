reset 
set terminal pngcairo size 800,800 
set output 'output.png'

set dummy t,y  
set lmargin at screen 0.05
set rmargin at screen 0.85
set bmargin at screen 0.1
set tmargin at screen 0.9

#set pm3d map interpolate 20,20
unset key

set multiplot

set palette rgb 33,13,10 #rainbow (blue-green-yellow-red)
set cbrange [2:35]

unset border
unset xtics
unset ytics

set angles degree
r = 3.31 #This number is Log10(max frequency) - Log10(min frequency) of the polar frequency grid 
set xrange[-r:r]
set yrange[-r:r]
# set colorbox user origin 0.9,0.1 size 0.03,0.8
splot 'new_test.dat'

# now plot the polar grid only
set style line 11 lc rgb 'black' lw 2 lt 0
set grid polar ls 11
set polar
plot 50*y
#set logscale r 10
set rrange[10:200]
unset raxis
set rtics format '' scale 0
#set rtics axis scale 
set arrow from 0.175,0 to 1,0 nohead
set rtics (30, 80 ,130)
plot NaN w l
unset multiplot
unset output
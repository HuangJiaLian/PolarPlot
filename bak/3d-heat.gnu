reset
set terminal pngcairo size 800,800
set output '3d-heat.png'

set multiplot

set lmargin at screen 0.05
set rmargin at screen 0.85
set bmargin at screen 0.1
set tmargin at screen 0.9

set pm3d map
unset key

# set multiplot
set cbrange [2:35]
# plot the heatmap
set parametric
set isosamples 500

unset border
unset xtics
unset ytics

set angles degree
r = 3
r0 = 0.6
r1 = 1.8
set urange[0:r] # radius
set vrange[-45:315] # angle
set xrange[-r:r]
set yrange[-r:r]
set colorbox user origin 0.9,0.1 size 0.03,0.8



# Section 0
splot [0:r0][0:360] u*cos(v), u*sin(v), 11

splot [r0:r1][-45:45] u*cos(v), u*sin(v), 24
splot [r0:r1][45:135] u*cos(v), u*sin(v), 22
splot [r0:r1][135:225] u*cos(v), u*sin(v), 23
splot [r0:r1][225:315] u*cos(v), u*sin(v), 23

splot [r1:r][-45:45] u*cos(v), u*sin(v), 34
splot [r1:r][45:135] u*cos(v), u*sin(v), 34
splot [r1:r][135:225] u*cos(v), u*sin(v), 28
splot [r1:r][225:315] u*cos(v), u*sin(v), 31
unset parametric


set polar
# now plot the polar grid only
set style line 11 lc rgb 'black' lw 2
 
# 划分割线
# splot r0 ls 11
set arrow 1 from r0*cos(45), r0*sin(45) length r-r0 angle 45 ls 11 nohead
set arrow 2 from r0*cos(135), r0*sin(135) length r-r0 angle 135 ls 11 nohead
set arrow 3 from r0*cos(225), r0*sin(225) length r-r0 angle 225 ls 11 nohead
set arrow 4 from r0*cos(-45), r0*sin(-45) length r-r0 angle -45 ls 11 nohead


set rrange[0:3]
unset raxis
set rtics format '' scale 0
set rtics (0.6,1.8,3)
plot NaN w l
unset multiplot
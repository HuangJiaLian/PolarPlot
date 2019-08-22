reset
set terminal pngcairo size 800,800
set output '3d-heat-2.png'
set style line 11 lc rgb 'black' lw 2

set multiplot
set lmargin at screen 0.05
set rmargin at screen 0.85
set bmargin at screen 0.1
set tmargin at screen 0.9

set pm3d map
unset key
# 设置ColorBar 的范围
set cbrange [2:35]

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

# 划区域分割线
set arrow 1 from r0*cos(45), r0*sin(45) length r-r0 angle 45 ls 11 nohead
set arrow 2 from r0*cos(135), r0*sin(135) length r-r0 angle 135 ls 11 nohead
set arrow 3 from r0*cos(225), r0*sin(225) length r-r0 angle 225 ls 11 nohead
set arrow 4 from r0*cos(-45), r0*sin(-45) length r-r0 angle -45 ls 11 nohead

# 九个区域对应的数值
num0 = 11
num1 = 29
num2 = 20
num3 = 25
num4 = 25
num5 = 34
num6 = 34
num7 = 28
num8 = 31

# 标签
set label 1 "11" at graph 0.48,0.5
set label 2 "29" at graph 0.65,0.5

# 九个区域上色
splot [0:r0][0:360] u*cos(v), u*sin(v), num0
splot [r0:r1][-45:45] u*cos(v), u*sin(v), num1
splot [r0:r1][45:135] u*cos(v), u*sin(v), num2
splot [r0:r1][135:225] u*cos(v), u*sin(v), num3
splot [r0:r1][225:315] u*cos(v), u*sin(v), num4

splot [r1:r][-45:45] u*cos(v), u*sin(v), num5
splot [r1:r][45:135] u*cos(v), u*sin(v), num6
splot [r1:r][135:225] u*cos(v), u*sin(v), num7
splot [r1:r][225:315] u*cos(v), u*sin(v), num8


unset parametric
unset multiplot
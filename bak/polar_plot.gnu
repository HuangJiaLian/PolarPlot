set terminal pngcairo size 700,600 font ',10'
set output 'cardioid.png'

set style fill transparent solid 0.5
set size ratio 1
set tmargin 3
set bmargin 3

set style line 11 lc rgb 'gray80' lt -1
set style line 12 lc rgb '#ff0000' lt 1
set grid polar ls 11
#set angles degree

unset border
unset xtics
unset ytics

#set for [i=1:5] label at first r*0.02, first r*((i/6.0) + 0.03) sprintf("%d dB", -30+(i*5))
# unset raxis

set arrow 1 from 0.13,-0.13 length 0.81 angle -45 ls 12 nohead
set arrow 2 from 0.13, 0.13 length 0.81 angle 45 ls 12 nohead
set arrow 3 from -0.13,-0.13 length 0.81 angle -135 ls 12 nohead
set arrow 4 from -0.13, 0.13 length 0.81 angle 135 ls 12 nohead

# plot [-1./4.*pi : 1./4. *pi ] r with filledcurve above r=0.5 notitle, [-1./4.*pi : 1./4.*pi] r  linewidth 2 t ''
# plot [1./4.*pi : 3./4. *pi] r with filledcurve above r=0.5 notitle,  ''
# plot [3./4.*pi : 5./4.*pi] r1, [1./4.*pi : 3./4.*pi] r2 linewidth 4 t ''

r2 = 1
r1 = 0.5
r0=0.175
set polar
set size ratio 1 1,1
set trange [-1./4.*pi:7./4.*pi] noreverse nowriteback
f1(t)=(t>=-1./4.*pi && t < 1./4.*pi) ? r2 : 1/0
f2(t)=(t>=1./4.*pi && t < 3./4.*pi) ? r2 : 1/0
f3(t)=(t>=3./4.*pi && t < 5./4.*pi) ? r2 : 1/0 
f4(t)=(t>=5./4.*pi && t<=7./4.*pi) ? r2 : 1/0

f5(t)=(t>=-1./4.*pi && t < 1./4.*pi) ? r1 : 1/0
f6(t)=(t>=1./4.*pi && t < 3./4.*pi) ? r1 : 1/0
f7(t)=(t>=3./4.*pi && t < 5./4.*pi) ? r1 : 1/0 
f8(t)=(t>=5./4.*pi && t<=7./4.*pi) ? r1 : 1/0

f9(t)=(t>=-1./4.*pi && t < 1./4.*pi) ? r0 : 1/0
f10(t)=(t>=1./4.*pi && t < 3./4.*pi) ? r0 : 1/0
f11(t)=(t>=3./4.*pi && t < 5./4.*pi) ? r0 : 1/0 
f12(t)=(t>=5./4.*pi && t<=7./4.*pi) ? r0 : 1/0
plot f1(t) with lines ls 1 lw 2,\
     f1(t) with filledcurves notitle,\
     f2(t) with lines ls 1 lw 2 lc rgb 'red',\
     f2(t) with filledcurves notitle,\
     f3(t) with lines ls 1 lw 2 lc rgb 'blue',\
     f3(t) with filledcurves notitle,\
     f4(t) with lines ls 1 lw 2 lc rgb 'green',\
     f4(t) with filledcurves notitle,\
     f5(t) with lines ls 1 lw 2,\
     f5(t) with filledcurves notitle,\
     f6(t) with lines ls 1 lw 2 lc rgb 'red',\
     f6(t) with filledcurves notitle,\
     f7(t) with lines ls 1 lw 2 lc rgb 'blue',\
     f7(t) with filledcurves notitle,\
     f8(t) with lines ls 1 lw 2 lc rgb 'green',\
     f8(t) with filledcurves notitle,\
     f9(t) with lines ls 1 lw 2,\
     f9(t) with filledcurves notitle,\
     f10(t) with lines ls 1 lw 2 lc rgb 'red',\
     f10(t) with filledcurves notitle,\
     f11(t) with lines ls 1 lw 2 lc rgb 'blue',\
     f11(t) with filledcurves notitle,\
     f12(t) with lines ls 1 lw 2 lc rgb 'green',\
     f12(t) with filledcurves notitle
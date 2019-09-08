set terminal pngcairo size 700,600 font ',10'
set output 'cardioid2.png'

set style line 100 lc rgb '#000000' lt 1
set style line 1 lc rgb '#8f0000' lt 1
set style line 2 lc rgb '#af0000' lt 1
set style line 3 lc rgb '#cf0000' lt 1
set style line 4 lc rgb '#ef0000' lt 1
set style line 5 lc rgb '#ff1000' lt 1
set style line 6 lc rgb '#ff3000' lt 1
set style line 7 lc rgb '#ff5000' lt 1
set style line 8 lc rgb '#ff7000' lt 1
set style line 9 lc rgb '#ff9000' lt 1
set style line 10 lc rgb '#ffb000' lt 1
set style line 11 lc rgb '#ffd000' lt 1


set palette defined ( 0 '#000090',\
                      1 '#000fff',\
                      2 '#0090ff',\
                      3 '#0fffee',\
                      4 '#90ff70',\
                      5 '#ffee00',\
                      6 '#ff7000',\
                      7 '#ee0000',\
                      8 '#7f0000')

set cbrange [MIN:MAX]

unset border
unset xtics
unset ytics

#reset    
r2 = 1
r1 = 0.5
r0=0.175
r_=0

set polar
set grid polar ls 11
unset ttics
unset rtics
set rrange [0:r2]
set size ratio 1 1,1
set trange [-1./4.*pi:7./4.*pi] 
set style fill solid 

plot [-1./4.*pi: 1./4.*pi] '+' using 1:(r1):(r2) with filledcurves ls 1 notitle,\
     [1./4.*pi: 3./4.*pi] '+' using 1:(r1):(r2) with filledcurves ls 2 notitle,\
     [3./4.*pi: 5./4.*pi] '+' using 1:(r1):(r2) with filledcurves ls 3 notitle,\
     [5./4.*pi: 7./4.*pi] '+' using 1:(r1):(r2) with filledcurves ls 4 notitle,\
     [-1./4.*pi: 1./4.*pi] '+' using 1:(r0):(r1) with filledcurves ls 5 notitle,\
     [1./4.*pi: 3./4.*pi] '+' using 1:(r0):(r1) with filledcurves ls 6 notitle,\
     [3./4.*pi: 5./4.*pi] '+' using 1:(r0):(r1) with filledcurves ls 7 notitle,\
     [5./4.*pi: 7./4.*pi] '+' using 1:(r0):(r1) with filledcurves ls 8 notitle,\
     [-1./4.*pi: 7./4.*pi] '+' using 1:(r_):(r0) with filledcurves ls 9 notitle,\
     
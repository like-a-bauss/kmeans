#! /usr/bin/gnuplot

set style line 1 lt 1 lw 1 lc rgb '#ff0000' pt -1

set terminal jpeg font arial 12 size 1280,720
set output "/mnt/c/Users/glotu/OneDrive/Super/performance.jpg"

set title '' font ",26"
set xlabel "Number of clusters"
set ylabel "Processes number"
set zlabel "Performance (GFLOPS)" offset graph 0,0.1,0.6

set xrange [384:128]
set yrange [0:512]

set ticslevel 0
set grid back lt 0 linewidth 0.500, lt 0 linewidth 0.500

set pm3d implicit at s
set pm3d scansforward
set pm3d interpolate 10,10 flush begin ftriangles corners2color mean
#set pm3d interpolate 5,5 flush begin ftriangles noborder corners2color mean

set pal maxcolors 0
set palette defined

splot "/mnt/c/Users/glotu/OneDrive/Super/performance.csv" title '' with lines ls 1
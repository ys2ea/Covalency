set terminal postscript eps color enhanced size 3.25,1.75 font 'Helvetica,16'
set output 'toc_ir.eps'
#set terminal png transparent enhanced size 3.25,1.75 font 'Helvetica,12'
#set output 'toc_ir.png'

set xlabel 'Wavenumber (cm^{-1})'
set yrange [0:670]
set xrange [0:4000]
#set xtics 0,500,3500
set xtics nomirror 
unset ytics
set key at first 2800, 460 right

set label "Intermolecular\ncovalency:" at first 2710, 600 right

p 'ir_spectrum_H2O_realistic.csv' w l lw 4 lc 'blue' ti ' ON', \
  'ir_spectrum_H2O_devalent.csv' w l lw 4 lc 'red' ti 'OFF'
#p 'ir_spectrum_H2O_realistic.csv' w l lw 4 lc 'blue' ti 'H_{2}O{/Symbol \256}H_{2}O     ON', \
#  'ir_spectrum_H2O_devalent.csv' w l lw 4 lc 'red' ti 'OFF'

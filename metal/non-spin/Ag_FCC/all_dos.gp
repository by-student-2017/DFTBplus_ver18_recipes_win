# plot
set terminal png
set output "all_dos.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
plot "tdos_spin.plot" u 1:2 w l t "total dos", "dos_ag.s.plot" u 1:2 w l t "Ag s", "dos_ag.p.plot" u 1:2 w l t "Ag p", "dos_ag.d.plot" u 1:2 w l t "Ag d"

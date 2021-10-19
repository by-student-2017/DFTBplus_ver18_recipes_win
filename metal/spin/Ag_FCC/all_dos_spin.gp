# plot
set terminal png
set output "all_dos_up.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
set yrange[0:*]
plot "tdos_spin.plot" u 1:2 w l t "total dos", "dos_ag.s.plot" u 1:2 w l t "Ag s", "dos_ag.p.plot" u 1:2 w l t "Ag p", "dos_ag.d.plot" u 1:2 w l t "Ag d"


# plot
set terminal png
set output "all_dos_down.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
set yrange[0:*]
plot "tdos_spin.plot" u 1:3 w l t "total dos", "dos_ag.s.plot" u 1:3 w l t "Ag s", "dos_ag.p.plot" u 1:3 w l t "Ag p", "dos_ag.d.plot" u 1:3 w l t "Ag d"

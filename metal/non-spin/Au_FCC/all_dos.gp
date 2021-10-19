# plot
set terminal png
set output "all_dos.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
plot "tdos_spin.plot" u 1:2 w l t "total dos", "dos_au.s.plot" u 1:2 w l t "Au s", "dos_au.p.plot" u 1:2 w l t "Au p", "dos_au.d.plot" u 1:2 w l t "Au d"

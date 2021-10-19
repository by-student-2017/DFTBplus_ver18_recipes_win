# plot
set terminal png
set output "all_dos_up.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
set yrange[0:*]
plot "tdos_spin.plot" u 1:2 w l t "total dos", "dos_pt.s.plot" u 1:2 w l t "Pt s", "dos_pt.p.plot" u 1:2 w l t "Pt p", "dos_pt.d.plot" u 1:2 w l t "Pt d"


# plot
set terminal png
set output "all_dos_down.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
set yrange[0:*]
plot "tdos_spin.plot" u 1:3 w l t "total dos", "dos_pt.s.plot" u 1:3 w l t "Pt s", "dos_pt.p.plot" u 1:3 w l t "Pt p", "dos_pt.d.plot" u 1:3 w l t "Pt d"

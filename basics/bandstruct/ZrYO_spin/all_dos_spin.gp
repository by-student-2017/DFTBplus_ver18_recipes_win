# plot
set terminal png
set output "all_dos_up.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
set yrange[0:*]
plot "tdos_spin.plot" u 1:2 w l t "total dos", "dos_o.s.plot" u 1:2 w l t "O s", "dos_o.p.plot" u 1:2 w l t "O p", "dos_zr.s.plot" u 1:2 w l t "Zr s", "dos_zr.p.plot" u 1:2 w l t "Zr p", "dos_zr.d.plot" u 1:2 w l t "Zr d", "dos_y.s.plot" u 1:2 w l t "Y s", "dos_y.p.plot" u 1:2 w l t "Y p", "dos_y.d.plot" u 1:2 w l t "Y d"


# plot
set terminal png
set output "all_dos_down.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
set yrange[0:*]
plot "tdos_spin.plot" u 1:3 w l t "total dos", "dos_o.s.plot" u 1:3 w l t "O s", "dos_o.p.plot" u 1:3 w l t "O p", "dos_zr.s.plot" u 1:3 w l t "Zr s", "dos_zr.p.plot" u 1:3 w l t "Zr p", "dos_zr.d.plot" u 1:3 w l t "Zr d", "dos_y.s.plot" u 1:3 w l t "Y s", "dos_y.p.plot" u 1:3 w l t "Y p", "dos_y.d.plot" u 1:3 w l t "Y d"

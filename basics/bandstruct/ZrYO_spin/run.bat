copy dftb_in_scf.hsd dftb_in.hsd 
C:\DFTBplus18.2Windows10-CygWin_Netlib\dftb+.exe


copy dftb_in_dos.hsd dftb_in.hsd 
C:\DFTBplus18.2Windows10-CygWin_Netlib\dftb+.exe

find "Total energy:" <detailed.out> total_energy.dat
find "Fermi level:" <detailed.out> fermi_energy.dat

find "Fermi level:" <detailed.out> info.dat
find "Total energy:" <detailed.out>> info.dat
REM C:\jmol-14.30.2\jmol.jar geo_end.xyz

mkdir plot

find /v "KPT" <band.out> tdos.dat
gnuplot tdos_spin.gp
move tdos_spin.plot .\plot\tdos_spin.plot
move tdos_spin.png .\plot\tdos_spin.png
copy info_gnu.dat .\plot\info_gnu.dat

find /v "KPT" <dos_o.1.out> dos.dat
gnuplot pdos_spin.gp
move dos_spin.png .\plot\dos_o.s.png
move dos_spin.plot .\plot\dos_o.s.plot

find /v "KPT" <dos_o.2.out> dos.dat
gnuplot pdos_spin.gp
move dos_spin.png .\plot\dos_o.p.png
move dos_spin.plot .\plot\dos_o.p.plot

find /v "KPT" <dos_y.1.out> dos.dat
gnuplot pdos_spin.gp
move dos_spin.png .\plot\dos_y.s.png
move dos_spin.plot .\plot\dos_y.s.plot

find /v "KPT" <dos_y.2.out> dos.dat
gnuplot pdos_spin.gp
move dos_spin.png .\plot\dos_y.p.png
move dos_spin.plot .\plot\dos_y.p.plot

find /v "KPT" <dos_y.3.out> dos.dat
gnuplot pdos_spin.gp
move dos_spin.png .\plot\dos_y.d.png
move dos_spin.plot .\plot\dos_y.d.plot

find /v "KPT" <dos_zr.1.out> dos.dat
gnuplot pdos_spin.gp
move dos_spin.png .\plot\dos_zr.s.png
move dos_spin.plot .\plot\dos_zr.s.plot

find /v "KPT" <dos_zr.2.out> dos.dat
gnuplot pdos_spin.gp
move dos_spin.png .\plot\dos_zr.p.png
move dos_spin.plot .\plot\dos_zr.p.plot

find /v "KPT" <dos_zr.3.out> dos.dat
gnuplot pdos_spin.gp
move dos_spin.png .\plot\dos_zr.d.png
move dos_spin.plot .\plot\dos_zr.d.plot

cd plot
gnuplot ..\all_dos_spin.gp
copy all_dos_up.png ..\all_dos_up.png
copy all_dos_down.png ..\all_dos_down.png
cd ..


copy dftb_in_band.hsd dftb_in.hsd 
C:\DFTBplus18.2Windows10-CygWin_Netlib\dftb+.exe

del dftb_in.hsd 

find /v "KPT" <band.out> band.dat
gnuplot band_spin.gp
copy band_spin.plot .\plot\band_spin.plot
copy band_spin.png .\plot\band_spin.png
copy band_wide_spin.png .\plot\band_wide_spin.png

cd plot
gnuplot ..\layout_spin.gp
copy band_tdos_spin.png ..\band_tdos_spin.png
copy band_tdos_spin_BE.png ..\band_tdos_spin_BE.png
cd ..

del band.dat
del tdos.dat
del info_gnu.dat
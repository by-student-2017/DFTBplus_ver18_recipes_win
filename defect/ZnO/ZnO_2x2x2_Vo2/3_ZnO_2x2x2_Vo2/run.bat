copy dftb_in_scf.hsd dftb_in.hsd 
C:\DFTBplus_15May2020\dftb+.exe

find "Total energy:" <detailed.out> total_energy.dat
REM find "Fermi level:" <detailed.out> fermi_energy.dat
C:\jmol-14.30.2\jmol.jar geo_end.xyz

REM copy dftb_in_dos.hsd dftb_in.hsd 
REM C:\DFTBplus_15May2020\dftb+.exe

copy dftb_in_band.hsd dftb_in.hsd 
C:\DFTBplus_15May2020\dftb+.exe

del dftb_in.hsd 

mkdir plot

find /v "KPT" <band.out> band.dat
gnuplot band_spin.gp
copy band.plot .\plot\band.plot
copy band.png .\plot\band.png
copy band_wide.png .\plot\band_wide.png

del band.dat
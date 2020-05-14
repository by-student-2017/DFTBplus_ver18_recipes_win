copy dftb_in_scf.hsd dftb_in.hsd 
C:\DFTBplus18.2Windows10-CygWin_Netlib\dftb+.exe

copy dftb_in_dos.hsd dftb_in.hsd 
C:\DFTBplus18.2Windows10-CygWin_Netlib\dftb+.exe

copy dftb_in_band.hsd dftb_in.hsd 
C:\DFTBplus18.2Windows10-CygWin_Netlib\dftb+.exe

del dftb_in.hsd 

mkdir plot

find /v "KPT" <band.out> band.dat
gnuplot band_spin.gp
copy band.plot .\plot\band.plot
copy band.png .\plot\band.png
copy band_wide.png .\plot\band_wide.png

del band.dat
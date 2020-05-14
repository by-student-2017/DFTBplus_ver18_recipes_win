copy dftb_in_scf.hsd dftb_in.hsd 
C:\DFTBplus18.2Windows10-CygWin_Netlib\dftb+.exe

find "Total energy:" <detailed.out> total_energy.dat

REM copy dftb_in_dos.hsd dftb_in.hsd 
REM C:\DFTBplus18.2Windows10-CygWin_Netlib\dftb+.exe

REM copy dftb_in_band.hsd dftb_in.hsd 
REM C:\DFTBplus18.2Windows10-CygWin_Netlib\dftb+.exe

REM del dftb_in.hsd 

REM mkdir plot

REM find /v "KPT" <band.out> band.dat
REM gnuplot band_spin.gp
REM copy band.plot .\plot\band.plot
REM copy band.png .\plot\band.png
REM copy band_wide.png .\plot\band_wide.png

REM del band.dat
This program will run the 3D-FDTD simulation of a differentiated gaussian pulse over a rectangular PEC Cavity with different input parameters.

These parameters are assigned as case studies 1,2 and 3. 
% 1:ncells=6  for nx=ny=nz; fft_size= 4096
% 2:ncells=11 for nx=ny=nz; fft_size= 32768
% 3:ncells=21 for nx=ny=nz; fft_size= 262144

When running the main script, it will be prompted to choose a case study from 0-3. The command window will display all values pertinent to the case input by the user. That is the 3 exact lowest resonant frequencies, as well as it peaks, the frequency discretization "df" and the 3 lowest computed frequencies.

The FFT plot will be also ploted after chosing each case.

Lastly, after a case study is analyzed, the following message will be prompted:
"Would you like to choose another case? (1 = Yes, 0 = No)"

If 1 is chosen, then only chose another case study to be analyzed.
If 0 is chosen, then you will exit simulation, and the convergence error will be plotted.

Keep in mind, if variables in the workspace want to be checked, the whole simulation need to be ended first 
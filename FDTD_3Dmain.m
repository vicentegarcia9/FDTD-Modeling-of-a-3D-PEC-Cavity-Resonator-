clc, close all, clear all

%Read Input Data
InputCases;

%Initialization of parameters,fields, and update-coefficients
FDTDSetup;

for n=1:nt 
    
    EFieldUpdate;
    ESourceInjection;
    HFieldUpdate;
    Output; 
end

figure;
plot(time, Ez_out);
xlabel('Time');
ylabel('Electric Field (V/m)');
title('Transient Ez Field');
grid on

%Post Process of FFT
PostProcess;

% Restart Option
restart_choice = input("Would you like to choose another case?" + ...
    " (1 = Yes, 0 = No): ");
    if restart_choice == 0
        disp('Calculating Relative Error...');
        RelativeError;
        disp('Exiting Simulation...')
    elseif restart_choice==1
        disp('Restarting simulation...')
        FDTD_3Dmain;
    end

    
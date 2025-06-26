% Input script for different cases for  a 3D FDTD simulation over a PEC...
% Cavity
% 1:ncells=6  for nx=ny=nz; fft_size= 4096
% 2:ncells=11 for nx=ny=nz; fft_size= 32768
% 3:ncells=21 for nx=ny=nz; fft_size= 262144

    case_study = input("Choose a case number between 1-3 \nCase study= ");
    
    if case_study == 1
        clfn = 0.99;
        simtime = 4e-7;
        tw = 1e-9; to = 5 * tw;
        distancex = 1; distancey = 1; distancez = 1;
        nx = 6; ny = nx; nz = nx;
        fft_size = 4096;
        width=20;
        height=3.5e-9;

        i_src1 = 2; j_src1 = 2; k_src1 = 2;
        i_src2 = 2; j_src2 = 2; k_src2 = 3;

        i_fld1 = 4; j_fld1 = 4; k_fld1 = 4;
        i_fld2 = 4; j_fld2 = 4; k_fld2 = 5;
        disp('Running simulation...');
    
    elseif case_study == 2
        clfn = 0.99;
        simtime = 4e-7;
        tw = 1e-9; to = 5 * tw;
        distancex = 1; distancey = 1; distancez = 1;
        nx = 11; ny = nx; nz = nx;
        fft_size = 32768;
        width=80;
        height=1.5e-9;

        i_src1 = 4; j_src1 = 4; k_src1 = 4;
        i_src2 = 4; j_src2 = 4; k_src2 = 6;

        i_fld1 = 8; j_fld1 = 8; k_fld1 = 8;
        i_fld2 = 8; j_fld2 = 8; k_fld2 = 9;
        disp('Running simulation...');

    elseif case_study == 3
        clfn = 0.99;
        simtime = 4e-7;
        tw = 1e-9; to = 5 * tw;
        distancex = 1; distancey = 1; distancez = 1;
        nx = 21; ny = nx; nz = nx;
        fft_size = 262144;
        width=320;
        height=3.9e-10;

        i_src1 = 8; j_src1 = 8; k_src1 = 8;
        i_src2 = 8; j_src2 = 8; k_src2 = 12;

        i_fld1 = 16; j_fld1 = 16; k_fld1 = 16;
        i_fld2 = 16; j_fld2 = 16; k_fld2 = 17;
        disp('Running simulation...');
    end   
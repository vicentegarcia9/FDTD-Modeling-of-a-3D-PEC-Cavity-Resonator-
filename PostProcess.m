% Post processing FFT of Ez_out(t)
maxSteps=nt;
nfft=fft_size;
T=nfft*dt;
df=1/(T);

ftEz=abs(fft(Ez_out,nfft));
fmax=600e6;
numfSamps=floor(fmax/df);
fr=(0:numfSamps-1)*df;

figure;
plot(fr,ftEz(1:numfSamps));
title('Fourier Transform of Ez-out')
ylabel('Amplitude (V/m)')
xlabel('Frequency (Hz)');
hold on
grid on

%Resonant frequencies for lowest 3 modes
% TM (1,1,0); (1,1,1); (2,1,0)
f110=co/2/pi*sqrt(2*pi^2);
f111=co/2/pi*sqrt(3*pi^2);
f210=co/2/pi*sqrt(5*pi^2);
disp(['The TM(1,1,0) resonant frequency will equal to ' ...
    num2str(f110,'%.4e') ' Hz']);
disp(['The TM(1,1,1) resonant frequency will equal to ' ...
    num2str(f111,'%.4e') ' Hz']);
disp(['The TM(2,1,0) resonant frequency will equal to ' ...
    num2str(f210,'%.4e') ' Hz']);

nf110=floor(f110/df);
nf111=floor(f111/df);
nf210=floor(f210/df);

fex=[f110,f111,f210];
aex=[ftEz(nf110),ftEz(nf111),ftEz(nf210)];
plot(fex,aex,'ro');
legend('FDTD Sim', 'Exact','location','northwest');

%Finding Peaks
P1=ftEz(1:numfSamps);
[peaks,locs]=findpeaks(P1,'MinPeakDistance',width,'MinPeakHeight', height);

fprintf('Peaks are the following: ');
fprintf('%.4e ', peaks);
fprintf('\n');

fq_peaks=fr(locs);
fprintf('Computed frequencies are the following: ');
fprintf('%d ', fq_peaks);
fprintf('\n');

disp(['The frequency discretization, df, equals to ' ...
    num2str(df,'%.4e')]);
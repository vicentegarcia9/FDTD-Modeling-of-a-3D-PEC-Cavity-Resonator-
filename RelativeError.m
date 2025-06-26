% In line script for convergence plot on relative error on 3 lowest modes
fcomputed=[fq_peaks(1),fq_peaks(3)];
fanalytical= [fex(1),fex(3)];

%Relative Error for TM(1,1,0), and TM(2,1,0)
RelError1= abs((fcomputed(1)-fanalytical(1))/fanalytical(1));
RelError2= abs((fcomputed(2)-fanalytical(2))/fanalytical(2));

%Dx values are stored from every case 
dx_values=[0.2,0.1,0.05];

%Relative error stored from every case 
TotalError1=[0.0063,0.0010,2.7977e-04];
TotalError2=[0.0296,0.0072,0.0018];

figure;
loglog(dx_values,TotalError1,'LineWidth',2);
hold on ; grid on
loglog(dx_values,TotalError2,'LineWidth',2)
ylabel('Relative Error')
xlabel('\Delta X ')
title('Error convergence Plot')
legend('TM(1,1,0)', 'TM(2,1,0)','Location','northwest');
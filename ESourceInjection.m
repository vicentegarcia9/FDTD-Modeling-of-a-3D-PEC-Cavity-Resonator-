% In line script for defining Source Injection
% Source signature = Differentiated Gaussian Pulse
% Source is implemented as a z-directed current source
% ESource coordinates for case 1 are: (2,2,2); (2,2,3) for i, j, and k 
% ESource coordinates for case 2 are: (4,4,4); (4,4,6) for i, j, and k
% ESource coordinates for case 3 are: (8,8,8); (8,8,12) for i, j, and k

% Discrete time
t=(n-0.5)*dt;
% Differential Gaussian Pulse
Jz= (-2/tw)*(t-to)*exp((-(t-to)^2)/tw^2);

for k=k_src1:k_src2-1
    for j=j_src1:j_src2
        for i=i_src1:i_src2
            Ez(i,j,k)= Ez(i,j,k)+ (dt)*Jz;
        end
    end
end


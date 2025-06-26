% In line script for defining Output fields 
% EOutput coordinates for case 1 are: (4,4,4); (4,4,5) for i, j, and k 
% EOutput coordinates for case 2 are: (8,8,8); (8,8,9) for i, j, and k
% EOutput coordinates for case 3 are: (16,16,16); (16,16,17) for i,j,and k

Ez_out(n)=0;

for k=k_fld1:k_fld2-1
    for j=j_fld1:j_fld2
        for i=i_fld1:i_fld2

            Ez_out(n)= Ez_out(n)+Ez(i,j,k);
            
        end
    end
end
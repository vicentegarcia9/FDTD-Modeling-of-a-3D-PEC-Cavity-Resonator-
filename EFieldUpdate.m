%In line script for electric field update

for k=2:nz-1
    for j=2:ny-1
        for i=1:nx-1
            Ex(i,j,k)=Ex(i,j,k)+cExy*(Hz(i,j,k)-Hz(i,j-1,k))-...
                cExz*(Hy(i,j,k)-Hy(i,j,k-1));
        end
    end
end

for k=2:nz-1
    for j=1:ny-1
        for i=2:nx-1
            Ey(i,j,k)=Ey(i,j,k)+cEyz*(Hx(i,j,k)-Hx(i,j,k-1))-...
                cEyx*(Hz(i,j,k)-Hz(i-1,j,k));
        end
    end
end

for k=1:nz-1
    for j=2:ny-1
        for i=2:nx-1
            Ez(i,j,k)=Ez(i,j,k)+cEzx*(Hy(i,j,k)-Hy(i-1,j,k))-...
                cEzy*(Hx(i,j,k)-Hx(i,j-1,k));
        end
    end
end





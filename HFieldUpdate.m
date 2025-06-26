%In line script for magnetic field update

for k=1:nz-1
    for j=1:ny-1
        for i=1:nx
            Hx(i,j,k)=Hx(i,j,k)-cHxy*(Ez(i,j+1,k)-Ez(i,j,k))+...
                cHxz*(Ey(i,j,k+1)-Ey(i,j,k));
        end
    end
end

for k=1:nz-1
    for j=1:ny
        for i=1:nx-1
            Hy(i,j,k)=Hy(i,j,k)-cHyz*(Ex(i,j,k+1)-Ex(i,j,k))+...
                cHyx*(Ez(i+1,j,k)-Ez(i,j,k));
        end
    end
end

for k=1:nz
    for j=1:ny-1
        for i=1:nx-1
            Hz(i,j,k)=Hz(i,j,k)-cHzx*(Ey(i+1,j,k)-Ey(i,j,k))+...
                cHzy*(Ex(i,j+1,k)-Ex(i,j,k));
        end
    end
end
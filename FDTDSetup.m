%Initial Constants
epso= 8.854187817620389850544e-12;
muo=4*pi*1e-7;
co=1/sqrt(muo*epso);
etao=sqrt(muo/epso);

%Discretization and # Time Steps
dx=distancex/(nx-1);
dy=distancey/(ny-1);
dz=distancez/(nz-1);

denominator=(1/dx^2)+(1/dy^2)+(1/dz^2);
dt=clfn*((1/co)*1/sqrt(denominator));
nt=floor(simtime/dt);

%Update Coefficients for E and H
cExy=dt/(dy*epso);
cExz=dt/(dz*epso);
cEyx=dt/(dx*epso);
cEyz=dt/(dz*epso);
cEzx=dt/(dx*epso);
cEzy=dt/(dy*epso);

cHxz=dt/(dz*muo);
cHxy=dt/(dy*muo);
cHyx=dt/(dx*muo);
cHyz=dt/(dz*muo);
cHzy=dt/(dy*muo);
cHzx=dt/(dx*muo);

%Initialize fields and time array
Ex = zeros(nx - 1,ny , nz);  
Ey = zeros(nx, ny - 1, nz); 
Ez = zeros(nx, ny, nz - 1); 

Hx = zeros(nx, ny -1, nz - 1);  
Hy = zeros(nx - 1, ny, nz - 1); 
Hz = zeros(nx - 1, ny - 1, nz); 

Ez_out=zeros(nt,1);

time=(linspace(0,simtime,nt))';
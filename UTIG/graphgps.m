function gpsfig = graphgps(datapath)
% Paths for GPS data.
gpspath1 = strcat(datapath,'/GPS_UBHa/syn_itim');
gpspath2 = strcat(datapath,'/GPS_UBHa/vert_cor');
gpspath3 = strcat(datapath,'/GPS_UBHa/NS_vel');
gpspath4 = strcat(datapath,'/GPS_UBHa/EW_vel');
laspath1 = strcat(datapath,'/LAS_UBHa/las_rng');
laspath2 = strcat(datapath,'/LAS_UBHa/syn_itim');

% varibles for GPS data.
syn_itim_gps = load(gpspath1);
load(gpspath2);
load(gpspath3);
load(gpspath4);
load(laspath1);
syn_itim_las = load(laspath2);

xlas = (syn_itim_las/10000)/60;

int_gps = interp1(syn_itim_gps,vert_cor,syn_itim_las);

vert_mean = mean(vert_cor);

int_gps_minus_lr = (int_gps)-(las_rng);
hor_vel = (EW_vel)+(NS_vel);

xgps = (syn_itim_gps/10000)/60;
ygps = [hor_vel,vert_cor;];
surf = int_gps_minus_lr;

gpsfig = figure;
hold on

subplot(2,1,1)
plot(xgps,ygps(:,1))
xlabel('Time (minutes)')
ylabel('Horizontal Velocity (m/s)')
title('Horizontal Velocity Over Time')
    
subplot(2,1,2)
hold on
%plot(xgps,ygps(:,2))
plot(xlas,surf)
xlabel('Time (minutes)')
ylabel('Elevation (meters)')
title('Surface Elevation Over Time')
%legend('GPS Elevation Over Time','Surface Elevation')
hold off



end

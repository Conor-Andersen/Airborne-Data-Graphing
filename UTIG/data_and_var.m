

% Paths for magnetometer data.
magpath1 = strcat(datapath,'/MAG_UBHa/syn_itim');
magpath2 = strcat(datapath,'/MAG_UBHa/mag_fld');

% variables for magnetometer data.
syn_itim_mag = load(magpath1);
load(magpath2);

xmag = (syn_itim_mag/10000)/60;
ymag = mag_fld;


% Paths for GPS data.
gpspath1 = strcat(datapath,'/GPS_UBHa/syn_itim');
gpspath2 = strcat(datapath,'/GPS_UBHa/vert_cor');
gpspath3 = strcat(datapath,'/GPS_UBHa/NS_vel');
gpspath4 = strcat(datapath,'/GPS_UBHa/EW_vel');


% varibles for GPS data.
syn_itim_gps = load(gpspath1);
load(gpspath2);
load(gpspath3);
load(gpspath4);

int_gps = interp1(syn_itim_gps,vert_cor,syn_itim_las);

vert_mean = mean(vert_cor);

int_gps_minus_lr = (int_gps)-(las_rng);
hor_vel = (EW_vel)+(NS_vel);

xgps = (syn_itim_gps/10000)/60;
ygps = [hor_vel,vert_cor;];
surf = int_gps_minus_lr;




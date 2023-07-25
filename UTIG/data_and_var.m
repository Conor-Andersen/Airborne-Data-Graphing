% Paths for laser data
laspath1 = strcat(datapath,'/LAS_UBHa/las_rng');
laspath2 = strcat(datapath,'/LAS_UBHa/syn_itim');
laspath3 = strcat(datapath,'/LAS_UBHa/las_rng_mean');
laspath4 = strcat(datapath,'/LAS_UBHa/deviation');
laspath5 = strcat(datapath,'/LAS_UBHa/deviation_mean');
bf1path = strcat(datapath,'/BF1_UBHa/vmaxpos_tim');
bf1path2 = strcat(datapath,'/BF1_UBHa/syn_itim');
bf2path = strcat(datapath,'/BF2_UBHa/vmaxpos_tim');
bf2path2 = strcat(datapath,'/BF2_UBHa/syn_itim');
%variables for laser
load(laspath1);
syn_itim_las = load(laspath2);
load(laspath3);
load(laspath4);
load(laspath5);
bf1 = load(bf1path);
bf2 = load(bf2path);
syn_itim_bf1 = load(bf1path2);
syn_itim_bf2 = load(bf2path2);

% x and y variables must contain the same number of rows. 
% This can be found by using the length() command in the command window.
xlas = (syn_itim_las/10000)/60;
ylas = [las_rng,las_rng_mean,deviation,deviation_mean];
time_bf1 = (syn_itim_bf1/10000)/60;
time_bf2 = (syn_itim_bf2/10000)/60;

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




function magfig = graphmag(datapath)
% Paths for magnetometer data.
magpath1 = strcat(datapath,'/MAG_UBHa/syn_itim');
magpath2 = strcat(datapath,'/MAG_UBHa/mag_fld');

% variables for magnetometer data.
syn_itim_mag = load(magpath1);
load(magpath2);

xmag = (syn_itim_mag/10000)/60;
ymag = mag_fld;

magfig = figure;
hold on

plot(xmag,ymag)
xlabel('Time (minutes)')
ylabel('Magnetic Field Strength (nano Teslas)')
title('Magnetic Field Strength Over Time')

hold off

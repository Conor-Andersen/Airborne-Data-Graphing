function radarfig =graphradar(datapath)

laspath1 = strcat(datapath,'/LAS_UBHa/las_rng');
laspath2 = strcat(datapath,'/LAS_UBHa/syn_itim');
bf1path = strcat(datapath,'/BF1_UBHa/vmaxpos_tim');
bf1path2 = strcat(datapath,'/BF1_UBHa/syn_itim');
bf2path = strcat(datapath,'/BF2_UBHa/vmaxpos_tim');
bf2path2 = strcat(datapath,'/BF2_UBHa/syn_itim');

bf1_vmaxpos_tim = load(bf1path);
bf2_vmaxpos_tim = load(bf2path);
syn_itim_bf1 = load(bf1path2);
syn_itim_bf2 = load(bf2path2);
load(laspath1);
syn_itim_las = load(laspath2);

time_bf1 = (syn_itim_bf1/10000)/60;
time_bf2 = (syn_itim_bf2/10000)/60;
bf1_two_way_travel_time = (bf1_vmaxpos_tim).*(1*10^6);
bf2_two_way_travel_time = (bf2_vmaxpos_tim).*(1*10^6);
bf1_travel_time = ((bf1_vmaxpos_tim).*(1*10^6))/2;
bf2_travel_time = ((bf2_vmaxpos_tim).*(1*10^6))/2;
xlas = (syn_itim_las/10000)/60;
ylas = las_rng;

las_travel_time = ((las_rng)/(3*10^8))*(1*10^6);
bf1_radar_distance = (bf1_vmaxpos_tim)*(3*10^8);
bf2_radar_distance = (bf2_vmaxpos_tim)*(3*10^8);

radarfig = figure
       
       subplot(3,1,1)
       hold on
       plot(time_bf1,bf1_two_way_travel_time)
       plot(time_bf2,bf2_two_way_travel_time)
       ax = gca;
       set(ax,'YDir','reverse');
       xlabel('Time (minutes)')
       ylabel('Travel Time (micro seconds)')
       title('Radar Two Way Travel Time')
       legend('BF1 Radar Time','BF2 Radar Time','location','northeastoutside')
       hold off

       subplot(3,1,2)
       hold on
       plot(xlas,las_travel_time)
       plot(time_bf1,bf1_two_way_travel_time)
       plot(time_bf2,bf2_two_way_travel_time)
       ax2 = gca;
       set(ax2,'YDir','reverse');
       xlabel('Time(minutes)')
       ylabel('Travel Time(micro seconds)')
       title('Radar Travel Time vs Laser Travel Two Way Time')
       legend('Laser Time','BF1 Radar Time','BF2 Radar Time','location','northeastoutside')
       hold off

       subplot(3,1,3)
       hold on
       plot(xlas,ylas)
       plot(time_bf1,bf1_radar_distance)
       plot(time_bf2,bf2_radar_distance)
       ax3 = gca;
       set(ax3,'YDir','reverse');
       xlabel('Time(minutes)')
       ylabel('Distance (meters)')
       title('Laser Distance vs Radar Distance')
       legend('Laser Distnce','BF1 Radar Distance','BF2 Radar Distance','location','northeastoutside')
       hold off


end


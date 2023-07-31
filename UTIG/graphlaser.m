function myfig = graphlaser(datapath)
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
bf1_vmaxpos_tim = load(bf1path);
bf2_vmaxpos_tim = load(bf2path);
syn_itim_bf1 = load(bf1path2);
syn_itim_bf2 = load(bf2path2);

% x and y variables must contain the same number of rows. 
% This can be found by using the length() command in the command window.
xlas = (syn_itim_las/10000)/60;
ylas = [las_rng,las_rng_mean,deviation,deviation_mean];
time_bf1 = (syn_itim_bf1/10000)/60;
time_bf2 = (syn_itim_bf2/10000)/60;
bf1 = (bf1_vmaxpos_tim).*(1*10^6);
bf2 = (bf2_vmaxpos_tim).*(1*10^6);
    myfig=figure;
    
 hold on
       subplot(5,1,1)
       plot(xlas,ylas(:,1))
       xlabel('Time (minutes)')
       ylabel('Laser Range (meters)')
       title('Laser Range Over Time')
   
       subplot(5,1,2)
       plot(xlas,ylas(:,2))
       xlabel('Time (minutes)')
       ylabel('Laser Range Mean')
       title('Laser Range Mean Over Time')
   
       subplot(5,1,3)
       plot(xlas,ylas(:,3))
       xlabel('Time (minutes)')
       ylabel('Deviation (meters)')
       title('Deviation Over Time')
  
       subplot(5,1,4)
       plot(xlas,ylas(:,4))
       xlabel('Time (minutes)')
       ylabel('Deviation Mean (meters)')
       title('Deviation Mean Over Time')

       subplot(5,1,5)
       hold on
       plot(time_bf1,bf1)
       plot(time_bf2,bf2)
       ax = gca;
       set(ax,'YDir','reverse');
       xlabel('Time (minutes)')
       ylabel('Travel Time (seconds)')
       title('Two Way Travel Time')
       hold off

 hold off
 
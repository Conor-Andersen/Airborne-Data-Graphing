function myfig = graphlaser(datapath)
% Paths for laser data
laspath1 = strcat(datapath,'/LAS_UBHa/las_rng');
laspath2 = strcat(datapath,'/LAS_UBHa/syn_itim');
laspath3 = strcat(datapath,'/LAS_UBHa/las_rng_mean');
laspath4 = strcat(datapath,'/LAS_UBHa/deviation');
laspath5 = strcat(datapath,'/LAS_UBHa/deviation_mean');

%variables for laser
load(laspath1);
syn_itim_las = load(laspath2);
load(laspath3);
load(laspath4);
load(laspath5);


% x and y variables must contain the same number of rows. 
% This can be found by using the length() command in the command window.
xlas = (syn_itim_las/10000)/60;
ylas = [las_rng,las_rng_mean,deviation,deviation_mean];

    myfig=figure;
    
 hold on
       subplot(4,1,1)
       plot(xlas,ylas(:,1))
       xlabel('Time (minutes)')
       ylabel('Laser Range (meters)')
       title('Laser Range Over Time')
   
       subplot(4,1,2)
       plot(xlas,ylas(:,2))
       xlabel('Time (minutes)')
       ylabel('Laser Range Mean')
       title('Laser Range Mean Over Time')
   
       subplot(4,1,3)
       plot(xlas,ylas(:,3))
       xlabel('Time (minutes)')
       ylabel('Deviation (meters)')
       title('Deviation Over Time')
  
       subplot(4,1,4)
       plot(xlas,ylas(:,4))
       xlabel('Time (minutes)')
       ylabel('Deviation Mean (meters)')
       title('Deviation Mean Over Time')


 hold off
 
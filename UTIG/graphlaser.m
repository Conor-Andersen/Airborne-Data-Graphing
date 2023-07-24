function myfig = graphlaser(xlas,ylas,bf1,time_bf1,bf2,time_bf2)

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
       ylabel('')
       title('')
       hold off

 hold off
 
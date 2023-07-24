function gpsfig = graphgps(xgps,ygps,surf,xlas)

gpsfig = figure;
hold on

subplot(2,1,1)
plot(xgps,ygps(:,1))
xlabel('Time (minutes)')
ylabel('Horizontal Velocity (m/s)')
title('Horizontal Velocity Over Time')
    
subplot(2,1,2)
hold on
plot(xgps,ygps(:,2))
plot(xlas,surf)
xlabel('Time (minutes)')
ylabel('GPS Altitude (meters)')
title('GPS Altitude Over Time')
legend('GPS Elevation Over Time','Surface Elevation')
hold off



end

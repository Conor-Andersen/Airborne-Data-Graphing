% Alter only datapath value i.e.(the transect file name).
datapath = 'MAG01b';

% call to graphing function for laser data.
% edit variable names (laserfig1,magfig1,gpsfig1...) as needed.
% change file path and name (laserfig1) as desired for all print functions.
laserfig1 = graphlaser(datapath);
set(gcf,'position',[400,100,1000,1000]);
%print('/Users/conorandersen/Desktop/UTIG_Project/UTIG/Figures/MAG01a_laserfig','-dpng');

% call to graphmag function.
magfig1 = graphmag(datapath);
set(gcf,'position',[400,100,1000,1000]);
print('/Users/conorandersen/Desktop/UTIG_Project/UTIG/Figures/MAG01b_magfig','-dpng');

%call to graphgps function.
gpsfig1 = graphgps(datapath);
set(gcf,'position',[400,100,1000,1000]);
%print('/Users/conorandersen/Desktop/UTIG_Project/UTIG/Figures/MAG01a_gpsfig','-dpng');

%call to radar graphing function.
radarfig1= graphradar(datapath);
set(gcf,'position',[400,100,1000,1000]);
%print('/Users/conorandersen/Desktop/UTIG_Project/UTIG/Figures/MAG01a_radarfig','-dpng');
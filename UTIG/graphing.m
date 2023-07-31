% Alter only datapath value i.e.(the transect file name).
datapath = 'MAG01a';

% run command for script that loads data and variables.


% call to graphing function for laser data.
% edit variable names (laserfig1,magfig1,gpsfig1...) as needed.
laserfig1 = graphlaser(datapath);
set(gcf,'position',[400,100,1000,1000]);
% change file path and name (laserfig1) as desired .
%print('/Users/conorandersen/Desktop/UTIG_Project/UTIG/Figures/laserfig1','-dpng');

% call to graphmag function.
magfig1 = graphmag(datapath);
set(gcf,'position',[400,100,1000,1000]);
%print('/Users/conorandersen/Desktop/UTIG_Project/UTIG/Figures/magfig1','-dpng');
%call to graphgps function
gpsfig1 = graphgps(datapath);
set(gcf,'position',[400,100,1000,1000]);
%print('/Users/conorandersen/Desktop/UTIG_Project/UTIG/Figures/gpsfig1','-dpng');


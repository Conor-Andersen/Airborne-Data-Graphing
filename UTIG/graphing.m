% Alter only datapath value i.e.(the transect file name).
datapath = 'MAG01b';

% run command for script that loads data and variables.
run("data_and_var.m")

% call to graphing function for laser data.
% edit variable names (laserfig1,magfig1,gpsfig1...) as needed.
laserfig1 = graphlaser(xlas,ylas,bf1,time_bf1,bf2,time_bf2);

% change file name as desired.
%saveas(laserfig1,'/Figures/laserfig1.png');

% call to graphmag function.
magfig1 = graphmag(xmag,ymag);

%saveas(magfig1,'/Figures/magfig1.png');

%call to graphgps function
gpsfig1 = graphgps(xgps,ygps,surf,xlas);

%saveas(gpsfig1,'/Figures/gpsfig1.png');




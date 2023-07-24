function magfig = graphmag(xmag,ymag)
magfig = figure;
hold on

plot(xmag,ymag)
xlabel('Time (minutes)')
ylabel('Magnetic Field Strength (nano Teslas)')
title('Magnetic Field Strength Over Time')

hold off

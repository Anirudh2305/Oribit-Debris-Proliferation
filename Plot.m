function Plot(t,y)
    
ax = gca;
h0 = get(ax,'children'); % This is the handle to the plotted line
x1 = get(h0,'xdata');    % Get data for line
y1 = get(h0,'ydata');
[ax, p1, p2] = plotyy(ax,t,y(:,1),t,y(:,2));

set(ax(1),"linewidth", 1.5,"fontsize", 16)
set(ax(2),"linewidth", 1.5,"fontsize", 16)
ylabel(ax(1),"Satellistes")
ylabel(ax(2), 'Debris')
xlabel("years","fontsize", 16)
set(p1,"linewidth",1.2)
set(p2,"linewidth",1.2)

legend("sattelites","debris")

end 
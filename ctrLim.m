function outVal = ctrLim(axType)

h = findobj(gca,'type','line');

theSum = 0;
theCt = 0;
mx = nan;
mn = nan;
for i=1:length(h)
    switch lower(axType)
        case 'x', data = get(h(i),'XData');
        case 'y', data = get(h(i),'YData');
    end
    theSum = theSum + sum(data);
    theCt  = theCt  + length(data);
    mx = max(mx,max(data));
    mn = min(mn,min(data));
end

ctr = theSum/theCt;
rng = mx-mn;

outVal = [-1.25 1.25]*rng/2 + ctr;

function varargout = bigText(varargin)

helpString = 'bigText \t auto-formats plots\n';

if nargin>=1
    if ischar(varargin{1})
        if strcmp(varargin{1},'-h')
            varargout{1} = helpString;
            return
        end
    end
end

GRID = 0;
BLACK = 0;
AXIS_DRAWN = 0;
for i = 1:nargin
    if strcmp(varargin{i},'g')
        GRID = 1;
    elseif strcmp(varargin{i},'k')
        BLACK = 1;
    elseif strcmp(varargin{i},'a')
        AXIS_DRAWN = 1;
    end
end

haxes = findobj(gcf,'type','axes','-and','-not','tag','legend');
axValsX = zeros(length(haxes),2);
axValsY = zeros(length(haxes),2);
for i = 1:length(haxes)
    ax = haxes(i);
    axValsX(i,:) = xlim(ax);
    axValsY(i,:) = ylim(ax);
end
set(haxes,'fontsize',14,'fontweight','bold');
set(haxes,'gridlinestyle','--');
if GRID
    set(haxes,'xgrid','on');
    set(haxes,'ygrid','on');
end

if AXIS_DRAWN
    for h = haxes'
        axes(h);
        line(get(h,'xlim'),[0 0],[-1 -1],'color','k','tag','not_thick');
        line([0 0],get(h,'ylim'),[-1 -1],'color','k','tag','not_thick');
    end
end

h2 = unique(findall(haxes,'type','text'));
set(h2,'fontsize',14,'fontweight','bold');

h = findobj(gcf , 'type', 'line','-and','-not','tag','not_thick');
set(h,'linewidth',2);

for hh = reshape(h,1,[]);
   if ~strcmp(get(hh,'marker'),'none') && ~strcmp(get(hh,'marker'),'o')
       if BLACK, cc = [0 0 0];
       else cc = get(hh,'color'); end
       set(hh,'markeredgecolor',cc);
       set(hh,'markerfacecolor',cc);
   end
end

if BLACK
    h = findobj(gcf , 'type', 'line');
    set(h,'color','k');
end

for i = 1:length(haxes)
    ax = haxes(i);
    xlim(ax,axValsX(i,:));
    ylim(ax,axValsY(i,:));
end



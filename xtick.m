function varargout = xtick(varargin)
% XTICK
%   XTICK(tix) sets xticks to tix;
%   xt = XTICK retrieves current xtick locations

helpString = 'xtick \t\t sets the xtick values\n';

if nargin == 1
    if strcmp(varargin{1},'-h')
        varargout{1} = helpString;
    else
        tix = unique(varargin{1});
        set(gca,'xtick',tix);
        
        if nargout == 1
            varargout{1} = get(gca,'xtick');
        end
        
    end
    
elseif nargin == 0
    varargout{1} = get(gca,'xtick');
end


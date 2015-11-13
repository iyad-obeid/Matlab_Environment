function varargout = ytick(varargin)

helpString = 'ytick \t\t sets the ytick values\n';

if nargin == 1
    if strcmp(varargin{1},'-h')
        varargout{1} = helpString;
    else
        tix = varargin{1};
        set(gca,'ytick',tix);
        if nargout == 1
            varargout{1} = get(gca,'ytick');
        end
    end
end
    
  

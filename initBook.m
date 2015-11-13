function varargout = initBook(varargin)

helpString = 'initBook \t initializes std fcns for book formatting\n';

if nargin>=1
    if ischar(varargin{1})
        if strcmp(varargin{1},'-h')
            varargout{1} = helpString;
            return
        end
    end
end

blue = [0 0 .75];

assignin('base','blue',   blue);
assignin('base','red',    [.75 0 0]);
assignin('base','green',  [0 .75 0]);
assignin('base','yellow', [.75 .75 0]);
assignin('base','purple', [.75 0 .75]);
assignin('base','cyan',   [0 .75 .75]);

assignin('base','TIMESTR','time (s)');
assignin('base','FREQSTR','freq (rads/sec)');
assignin('base','FREQSTRHZ','freq (Hz)');

assignin('base','allBlue', @()set(findobj(gcf,'type','line'),'color',blue));

    

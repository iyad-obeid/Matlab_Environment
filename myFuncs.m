function varargout = myFuncs(varargin)

helpString = 'myFuncs \t lists all of my custom functions\n';

if nargin>=1
    if ischar(varargin{1})
        if strcmp(varargin{1},'-h')
            varargout{1} = helpString;
            return
        end
    end
end

d = dir('~/gDrive/MATLAB/*.m');
for i = 1:length(d)
    try
        fprintf(feval(d(i).name(1:end-2),'-h'));
    catch
        fprintf('error: %s\n',d(i).name);
    end
end



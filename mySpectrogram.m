function varargout = mySpectrogram(s,win,fs,varargin)
% mySpectrogram(s,win,fs) plots the spectrogram of the signal s
%   s   is a signal
%   win is the window width (in seconds)
%   fs  is the sampling rate of signal s

FLAG = 0;
if nargin==4;
    if varargin{1} == 0 % default hamming window
        FLAG = 0;
    elseif varargin{1} == 1 % gaussian window
        FLAG = 1;
    elseif varargin{1} == 2 % rectangular window
        FLAG = 2;
    end
end

SURF =0;
if nargin==5;
    if varargin{2} == 's'
        SURF = 1;
    end
end


winNsamp = round(win*fs);
ovlNsamp = round(winNsamp/2);
nfft     = 2^(1+nextpow2(winNsamp));
if FLAG == 0
    [S,F,T]=spectrogram(s,winNsamp,ovlNsamp,nfft,fs);
elseif FLAG == 1
    [S,F,T]=spectrogram(s,window(@gausswin,winNsamp),ovlNsamp,nfft,fs);
elseif FLAG == 2
    [S,F,T]=spectrogram(s,window(@rectwin,winNsamp),ovlNsamp,nfft,fs);
end

if SURF==0
    mesh(T,F,db(S));
else
    surf(T,F,db(S));
end

view([0,90]);
xlim([min(T) max(T)]);
ylim([min(F) max(F)]);
xlabel('time (s)');
ylabel('freq (Hz)');

if (nargout>=1)
    varargout{1} = S;
end
if (nargout>=2)
    varargout{2} = F;
end
if (nargout>=3)
    varargout{3} = T;
end



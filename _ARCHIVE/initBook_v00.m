clear;clf;

blue   = [0 0 .75];
red    = [.75 0 0];
green  = [0 .75 0];
yellow = [.75 .75 0];
purple = [.75 0 .75];
cyan   = [0 .75 .75];

TIMESTR = 'time (s)';
FREQSTR = 'freq (rads/sec)';
FREQSTRHZ = 'freq (Hz)';

allBlue = @()set(findobj(gcf,'type','line'),'color',blue);

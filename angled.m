function d = angled(x)

helpString = 'angled(x) \t returns phase angle of x in degrees\n';

if ischar(x)
    if strcmp(x,'-h')
        d = helpString;
        return
    end
end

d = angle(x)*180/pi;
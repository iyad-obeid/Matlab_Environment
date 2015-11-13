function type = myType(x)

% make this work on arrays too
helpString = 'myType(x) \t returns variable x''s type\n';

type = 'none';
if isstr(x)
    if strcmp(x,'-h');
        type = helpString;
        return
    end
end
if isnumeric(x), type='numeric';
elseif ischar(x), type ='string';
elseif islogical(x),  type = 'logical';
end
function addXtick(tix)

currTix = xtick;
newTix = unique([currTix(:) ; tix(:)]); % uniques AND sorts
xtick(newTix);

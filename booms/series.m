function series(popsize)
global fitValue;
global fitTable;
for i=1:popsize
    fitTable(i)=0;
end
clear i;
for i=1:popsize
    min=fitValue(i);
    for j=i+1:popsize
        if fitValue(j)<min
            temp=min;
            min=fitValue(j);
            fitValue(j)=temp;
        end
    end
    fitTable(i)=min;
end
clear i;
clear j;
            
            
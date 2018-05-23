global h numbsOfBooms;
for i=1:size(numbsOfBooms,1)
    for j=1:size(numbsOfBooms,2)
        set(h(i,j),'style','text','backgroundcolor','white','string',num2str(numbsOfBooms(i,j)));
    end
end
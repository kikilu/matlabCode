global h numbsOfBooms;
for i=1:size(numbsOfBooms,1)
    for j=1:size(numbsOfBooms,2)
        set(h(i,j),'backgroundcolor','white','string',num2str(numbsOfBooms(i,j)));
    end
end
msgbox('-1ÎªµØÀ×');
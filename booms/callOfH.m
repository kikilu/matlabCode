function callOfH
global h numbsOfBooms;
h1=gcbo;
[boomrow,boomcol]=find(h==h1);
clik1(boomrow,boomcol,numbsOfBooms);
end
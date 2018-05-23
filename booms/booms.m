close all;
clear all;
global numbsOfBooms row col hardlevel k checked h n;
row=30;
col=30;
k=1;
checked=[];
hardlevel=1.2;
boomsarray=fix(rand(row,col)*hardlevel);
boomsarray=(boomsarray>=1);
n=find(boomsarray==1);
numbsOfBooms=zeros(row,col);
for i=1:row
    for j=1:col
        dow=[i-1,j-1];
        up=[i+1,j+1];
        if i==1
            dow(1)=dow(1)+1;
        end
        if i==row
            up(1)=up(1)-1;
        end
        if j==1
            dow(2)=dow(2)+1;
        end
        if j==col
            up(2)=up(2)-1;
        end
        if boomsarray(i,j)==1
            numbsOfBooms(i,j)=-1;
        else
        numbsOfBooms(i,j)=sum(sum(boomsarray(dow(1):up(1),dow(2):up(2))));
        end
    end
end

gameUI=figure('NumberTitle','off','Name','扫雷','menubar','none');
menuUI1=uimenu('label','游戏');
uimenu(menuUI1,'label','开始新的游戏','callback','booms');
menuUI2=uimenu('label','帮助');
uimenu(menuUI2,'label','自动','callback','callOfmenu');
h=zeros(row,col);
for i=1:row
    for j=1:col
        h(i,j)=uicontrol(gcf,'position',[25*(j-1)+1,25*(i-1)+1,25,25]);
    end
end
p=get(0,'screensize');
set(gcf,'position',[(p(3)-25*j)/2,(p(4)-25*i)/2,25*j,25*i])
set(h,'callback','clik');



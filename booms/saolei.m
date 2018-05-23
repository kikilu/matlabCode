clear all;
row=10;
col=10;
num=20;
jieshu=0;
%global flag;
flag=zeros(row,col);
flag1=ones(row,col);
minenum=zeros(row,col);
minefield=rand(row,col);
[temp,index]=sort(minefield(:));
minefield=(minefield<=minefield(index(num)));

count=0;
for i=1:row
    for j=1:col
        x1=i-1;y1=j-1;
        x2=i-1;y2=j;
        x3=i-1;y3=j+1;
        x4=i;  y4=j-1;
        x5=i;  y5=j+1;
        x6=i+1;y6=j-1;
        x7=i+1;y7=j;
        x8=i+1;y8=j+1;
        if x1>0&&y1>0
            if minefield(x1,y1)==1
                count=count+1;
            end
        end
        if x2>0
            if minefield(x2,y2)==1
                count=count+1;
            end
        end
        if x3>0&&y3<11
            if minefield(x3,y3)==1
                count=count+1;
            end
        end
        if y4>0
            if minefield(x4,y4)==1
                count=count+1;
            end
        end
        if y5<11
            if minefield(x5,y5)==1
                count=count+1;
            end
        end
        if x6<11&&y6>0
            if minefield(x6,y6)==1
                count=count+1;
            end
        end
        if x7<11
            if minefield(x7,y7)==1
                count=count+1;
            end
        end
        if x8<11&&y8<11
            if minefield(x8,y8)==1
                count=count+1;
            end
        end
        minenum(i,j)=count;
        count=0;
    end
end

hf=figure('NumberTitle','off','Name','ɨ��','menubar','none');
uh1=uimenu('label','��Ϸ');
uimenu(uh1,'label','������ɫѡ��','callback','c=uisetcolor([0 0 1],''ѡ����ɫ'');set(hf,''color'',c);');
uh2=uimenu('label','����');
uimenu(uh2,'label','��Ϸ����','callback',['text(-0.05,0,''��window�Դ���ɨ�ײ�ͬ���ǣ����ú�ɫ��ǣ��һ�ʱ�ú�ɫ���Ǻţ�'',''fontsize'',12,''fontname'',''����'');',...
    'hold on; text(-0.12,-0.07,''���˺󣬻������ֺ�������ʾ��Ӯ�˺󣬻���������ʾ��'',''fontsize'',12,''fontname'',''����'') ; axis off ']);
uimenu(uh2,'label','������Ϣ','callback','msgbox(''copyright:Wteng  Thanks for using!'')');

for m=1:row
    for n=1:col
        h(m,n)=uicontrol(gcf,'style','push',...
            'foregroundColor',0.7*[1,1,1],...
            'string',strcat(num2str(m),num2str(n)),...
            'unit','normalized','position',[0.16+0.053*n,0.9-0.073*m,0.05,0.07],...
            'BackgroundColor',0.7*[1,1,1],'fontsize',17,...
            'fontname','times new roman',...
            'ButtonDownFcn',['if isequal(get(gcf,''SelectionType''),''alt'')',...
            ' if ~get(gco,''Value'') if isequal(get(gco,''Tag''),''y'') ',...
            'set(gco,''style'',''push'',''string'','''',''backgroundcolor'',0.7*[1 1 1]);',...
            'set(gco,''Tag'',''n''); else set(gco,''style'',''text'',''string'','''',''backgroundcolor'',[1 0 0]);',...
            'set(gco,''Tag'',''y'');end;end;end'],...
            'Callback',['h1=gcbo;[mf,nf]=find(h==h1);search(mf,nf,minenum,h,minefield,flag,jieshu);'...
            'for i=1:10 for j=1:10  hcomp(i,j)=get(h(i,j),''value'');  end;end;comp=(~hcomp==minefield);',...
            'if  all(comp(:))  mh=msgbox(''�������Ӵ!��'',''��ʾ'');sp=actxserver(''SAPI.SpVoice'');sp.Speak(''�������Ӵ!''); end;']);
    end
end
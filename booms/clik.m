global h numbsOfBooms k checked n;
h1=gcbo;
[boomrow,boomcol]=find(h==h1);
if numbsOfBooms(boomrow,boomcol)==-1
    msgbox('你失败了,-1为地雷');
    fail;
    set(gcbo,'backgroundcolor','red')
else
    
    check=[boomrow,boomcol];
    ready2check=[];
    while ~isempty(check)
        a=1;
        for i=1:size(check,1)
            if numbsOfBooms(check(i,1),check(i,2))==0
                set(h(check(i,1),check(i,2)),'style','text','fontsize',15,'fontname','times new roman','backgroundcolor','white')
                checked(k,:)=check(i,:);
                k=k+1;
                if check(i,:)==[size(numbsOfBooms,1),1]                    %左上顶点
                    if isempty(intersect(checked,[check(i,1),check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)+1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)]+1,'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)+1];
                        a=a+1;
                    end
                    
                elseif check(i,:)==size(numbsOfBooms)%右上顶点
                    if isempty(intersect(checked,[check(i,1),check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)-1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)-1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)];
                        a=a+1;
                    end
                elseif check(i,1)==size(numbsOfBooms,1)&&check(i,2)~=1&&check(i,2)~=size(numbsOfBooms,2)%顶行
                    if isempty(intersect(checked,[check(i,1),check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)-1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1),check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)+1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)-1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)+1];
                        a=a+1;
                    end
                elseif check(i,:)==[1,1]%左下顶点
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i)+1,check(i+1)+1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1),check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i),check(i+1)+1];
                        a=a+1;
                    end
                elseif check(i,2)==1&&check(i,1)~=1&&check(i,1)~=size(numbsOfBooms,1)%左行
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)+1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1),check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)+1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)+1];
                        a=a+1;
                    end
                elseif check(i,:)==[1,size(numbsOfBooms,2)]%右下顶点
                    if isempty(intersect(checked,[check(i,1),check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)-1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)-1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)];
                        a=a+1;
                    end
                elseif check(i,1)==1&&check(i,2)~=1&&check(i,2)~=size(numbsOfBooms,2)%底行
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)-1];
                        a=a+1;
                    end
                    
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)+1];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1),check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)-1];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1),check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)+1];
                        a=a+1;
                    end
                elseif check(i,1)~=1&&check(i,1)~=size(numbsOfBooms,1)&&check(i,2)==size(numbsOfBooms,2)%右行
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)-1];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1),check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)-1];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)-1];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)];
                        a=a+1;
                    end
                else                                %中间
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)-1];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1)-1,check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1)-1,check(i,2)+1];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1),check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)-1];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1),check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1),check(i,2)+1];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)-1],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)-1];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)];
                        a=a+1;
                    end
                    if isempty(intersect(checked,[check(i,1)+1,check(i,2)+1],'rows'))
                        ready2check(a,:)=[check(i,1)+1,check(i,2)+1];
                        a=a+1;
                    end
                end
                
            elseif numbsOfBooms(check(i,1),check(i,2))~=0&&numbsOfBooms(check(i,1),check(i,2))~=-1
                set(h(check(i,1),check(i,2)),'style','text','fontsize',17,'fontname','times new roman'...
                    ,'backgroundcolor','white','string',num2str(numbsOfBooms(check(i,1),check(i,2))));
                checked(k,:)=check(i,:);
                k=k+1;
            else
                checked(k,:)=check(i,:);
                k=k+1;
            end
        end
        for cuti=1:size(ready2check,1)
            for cutj=cuti+1:size(ready2check,1)
                if ready2check(cuti,:)==ready2check(cutj,:)
                    ready2check(cutj,:)=0;
                end
            end
        end
        ready2check(ready2check==0)=[];
        s=size(ready2check);
        if s(1)==1
            ready2check=reshape(ready2check,s(2)/2,2);
        end
        
        for cuti=1:size(checked,1)
            for cutj=cuti+1:size(checked,1)
                if checked(cuti,:)==checked(cutj,:)
                    checked(cutj,:)=0;
                end
            end
        end
        checked(checked==0)=[];
        s=size(checked);
        if s(1)==1
            checked=reshape(checked,s(2)/2,2);
        end
        k=size(checked,1)+1;
        check=ready2check;
        ready2check=[];
    end
    if length(n)+size(checked,1)==size(numbsOfBooms,1)*size(numbsOfBooms,2)
        
        for b=1:size(numbsOfBooms,1)
            for c=1:size(numbsOfBooms,2)
                if numbsOfBooms(b,c)==-1
                set(h(b,c),'style','text','backgroundcolor','green','string','雷','fontsize',17);
                end
            end
        end
        msgbox('恭喜，赢得游戏');
    end
end
function clik1(boomrow,boomcol,numbsOfBooms)
global h;

if numbsOfBooms(boomrow,boomcol)==-1
    set(gcbo,'backgroundcolor','red')
else
    ready2check=[boomrow,boomcol];
    
    k=1;
    check=ready2check;
    while ~isempty(check)
        a=1;
        for i=1:2:length(check)
            if numbsOfBooms(check(i),check(i+1))==0
                set(h(check(i),check(i+1)),'style','text','fontsize',15,'fontname','times nnew roma','backgroundcolor','white')
                if check(i)==1&&check(i+1)==1
                    ready2check(a:a+1)=[check(i),check(i+1)+1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)+1];
                    a=a+2;
                elseif check(i)==1&&check(i+1)==size(numbsOfBooms,2)
                    ready2check(a:a+1)=[check(i),check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)];
                    a=a+2;
                elseif check(i)==1&&check(i+1)~=1&&check(i+1)~=size(numbsOfBooms,2)
                    ready2check(a:a+1)=[check(i),check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i),check(i+1)+1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)+1];
                    a=a+2;
                elseif check(i)==size(numbsOfBooms,1)&&check(i+1)==1
                    ready2check(a:a+1)=[check(i)-1,check(i+1)];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)-1,check(i+1)+1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i),check(i+1)+1];
                    a=a+2;
                elseif check(i)~=1&&check(i)~=size(numbsOfBooms,1)&&check(i+1)==1
                    ready2check(a:a+1)=[check(i)-1,check(i+1)];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)-1,check(i+1)+1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i),check(i+1)+1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)+1];
                    a=a+2;
                elseif check(i)==size(numbsOfBooms,1)&&check(i+1)==size(numbsOfBooms,2)
                    ready2check(a:a+1)=[check(i)-1,check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)-1,check(i+1)];
                    a=a+2;
                    ready2check(a:a+1)=[check(i),check(i+1)-1];
                    a=a+2;
                elseif check(i)==size(numbsOfBooms,1)&&check(i+1)~=1&&check(i+1)~=size(numbsOfBooms,2)
                    ready2check(a:a+1)=[check(i)-1,check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)-1,check(i+1)];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)-1,check(i+1)+1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i),check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i),check(i+1)+1];
                    a=a+2;
                elseif check(i)~=1&&check(i)~=size(numbsOfBooms,1)&&check(i+1)==size(numbsOfBooms,2)
                    ready2check(a:a+1)=[check(i)-1,check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)-1,check(i+1)];
                    a=a+2;
                    ready2check(a:a+1)=[check(i),check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)];
                    a=a+2;
                else
                    ready2check(a:a+1)=[check(i)-1,check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)-1,check(i+1)];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)-1,check(i+1)+1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i),check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i),check(i+1)+1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)-1];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)];
                    a=a+2;
                    ready2check(a:a+1)=[check(i)+1,check(i+1)+1];
                    a=a+2;
                end
                
            else
                set(h(check(i),check(i+1)),'style','text','fontsize',17,'fontname','times nnew roma'...
                    ,'backgroundcolor','white','string',num2str(numbsOfBooms(check(i),check(i+1))));
            end
            
            checked(k:k+1)=check(i:i+1);
            k=k+2;
        end
        
        for cuti=1:2:length(ready2check)
            for cutj=cuti+2:2:length(ready2check)
                if ready2check(cuti:cuti+1)==ready2check(cutj:cutj+1)
                    ready2check(cutj:cutj+1)=0;
                end
            end
        end
        
        cut=find(ready2check==0);
        ready2check(cut)=[];
        for chki=1:2:length(checked)
            for chkj=1:2:length(ready2check)
                if checked(chki:chki+1)==ready2check(chkj:chkj+1)
                    ready2check(chkj:chkj+1)=0;
                end
            end
        end
        cut=find(ready2check==0);
        ready2check(cut)=[];
        check=[];
        l=1;
        for m=1:2:length(ready2check)
            for n=1:2:length(checked)
                if ready2check(m)~=checked(n)||ready2check(m+1)~=checked(n+1)
                    check(l:l+1)=ready2check(m:m+1);
                    l=l+2;
                end
            end
        end
        ready2check=[];
    end
end
%     ËÑË÷£¬ÏÔÊ¾
% set(gcbo,'backgroundcolor','white')
% set(gcbo,'backgroundcolor','white','string',num2str(numbsOfBooms(boomrow,boomcol)));
end
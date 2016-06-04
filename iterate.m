clc; clear;

erase = 1;
x = rand(1);

h1 = figure;
hold all;

s1 = subplot(1,2,1)
title("f(f(x)),f(x)")
plot([0:0.01:1],tent([0:0.01:1]))
axis square;
hold on;
plot([0,1],[0,1],'Color',[0,0.4,0.2])


s2 = subplot(1,2,2)
title("x,f(x)");
plot(x(1:end-1),x(2:end),'+')
xlim([0,1])
ylim([0,1])
axis square;
hold on;

k=0;
for i = 1:100
  if mod(i,2)
    x = [x, tent(x(end))];
    hxy = dplot(x,s2,"xyplot",'mo');
    hmh = dplot(x,s1,"rmapv","k--o");
  else
    hmv = dplot(x,s1,"rmaph","k--o");
  end
  pause(0.5)
  if k == 0
    k = waitforbuttonpress;
  endif
end
%
%oa1 = 0;
%oa2 = 0;
%ob = 0;
%k = 0;
%for i = 1:1000
%  x = [x, tent(x(end))];
%  [oa1, oa2, ob] = dplot(x,erase,s1,s2,oa1,oa2,ob);
%  
%  if k == 0
%    k = waitforbuttonpress;
%  endif
%  
%end
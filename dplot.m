function [a1,a2,b] = dplot (tmap, erase, s1, s2, oa1, oa2, ob)
  
  subplot(s1);
  if length(tmap)>2
    if oa2 ~= 0 && erase == 1
      delete(oa2);
    endif
    a2 = plot([tmap(end-2),tmap(end-1)],[tmap(end-1),tmap(end-1)],'k--o');
    pause(0.5);
  endif
  
  if oa1 ~= 0 && erase == 1
    delete(oa1);
  endif
  a1 = plot([tmap(end-1),tmap(end-1)],[tmap(end-1),tmap(end)],'k--o');
  pause(0.5);
  
  subplot(s2);
  if ob ~= 0
    set(ob,'Color','b');
  endif
  b = plot(tmap(end-1),tmap(end),'mo');
  
endfunction
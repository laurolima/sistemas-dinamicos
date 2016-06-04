function ho = dplot (vetor, sp, tipo, parg)
  subplot(sp)
  
  switch tipo
    case "rmapv"
      ho = plot([vetor(end-1),vetor(end-1)],[vetor(end-1),vetor(end)],parg)
    case "rmaph"
      ho = plot([vetor(end-1),vetor(end)],[vetor(end),vetor(end)],parg)
    case "xyplot"
      ho = plot(vetor(end-1),vetor(end),parg)
  end
end
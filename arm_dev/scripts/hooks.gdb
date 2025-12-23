define hook-stop
  info registers x0 x1 x2
  disas $pc-8,$pc+16
end



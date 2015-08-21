local
   A D C RR Pi
   proc {Circle R}
      RR = {IntToFloat R}
      Pi = 3.14159
      A = Pi*RR*RR
      D=2.0*RR
      C=Pi*D
   end
in
   {Circle 5}
   {Browse A}
   {Browse D}
   {Browse C}
end
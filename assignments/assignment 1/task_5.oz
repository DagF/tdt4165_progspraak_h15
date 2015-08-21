declare
fun {SumTo FirstInteger LastInteger}
   if LastInteger > FirstInteger then
      LastInteger + {SumTo FirstInteger LastInteger-1}
   else
      FirstInteger
   end
end

{Browse {SumTo 0 2}}
{Browse {SumTo 3 5}}
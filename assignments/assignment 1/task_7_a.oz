declare
fun {Length List}
   case List of Head|Tail then
      1 + {Length Tail}
   else
      0
   end
end

{Browse {Length [1 2 3 4 5]}}
declare
fun {Length Xs}
   case Xs of Head|Tail then
      1 + {Length Tail}
   else
      0
   end
end

fun {Take Xs N}
   case Xs of Head|Tail then
      if N-1 > 0 then
	 {Append [Head ] {Take Tail N-1}}
      elseif N > 0 then
         [Head]
      else
         nil
      end
   else
      nil
   end
end

fun {Drop Xs N}
   if {List.is Xs} then
      if N-1 > 0 then
	 {Drop Xs.2 N-1}
      elseif N == 1 then
	 Xs.2
      else
	 Xs
      end
   else
      nil
   end
end

fun {Position Xs Y}
   case Xs of Head|Tail then
      if Head == Y then
	 0
      else
	 1 + {Position Tail Y}
      end
   else
      0
   end
end
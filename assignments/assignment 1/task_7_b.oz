declare
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

{Browse {Take [1 2 3 4 5 ] 0}}
{Browse {Take [1 2 3 4 5 ] 1}}
{Browse {Take [1 2 3 4 5 ] 3}}
{Browse {Take [1 2 3 4 5 ] 6}}
{Browse {Take [1 2 3 4 5 ] 8}}

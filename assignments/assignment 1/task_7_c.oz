% {Drop Xs N} returns Xs without the first N elements. If N is greater that
% the number of elements in Xs, it instead returns nil.

declare
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

{Browse {Drop [1 2 3] 0}}
{Browse {Drop [1 2 3] 2}}
{Browse {Drop [1 2 3] 4}}
{Browse {Drop [1] 0}}
{Browse {Drop [1] 1}}
{Browse {Drop [1] 2}}
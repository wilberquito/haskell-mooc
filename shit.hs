import Data.List

shorten n s = take n s

substringOfLen n string = map (shorten n) (tails string)



largest ls = foldr (\xs x -> if x < length xs then (length xs) else x) 0 ls


smallestStart (x:xs) = foldr (\next@(x:_) prev@(y:_) -> if x < y then next else prev) x xs 

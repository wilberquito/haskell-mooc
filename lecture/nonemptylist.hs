data NonEmpty a = a :| [a] 
    deriving Show

nonEmpty :: [a] -> Maybe (NonEmpty a)
nonEmpty [] = Nothing
nonEmpty (x:xs) = Just(x :| xs)

toList :: NonEmpty a -> [a]
toList (x :| xs) = x:xs


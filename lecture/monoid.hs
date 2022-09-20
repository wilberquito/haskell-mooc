-- monoids: idea - combining things


-- key concepts
-- associative operations
--      fancy way of saying that operators don't need parentheses. Ex:
--          (1 +  3) + (5 + 7)
--          1 + (3  + (5 + 7))
--          1  + 3  +  5 + 7
-- semigroup
--      types that has an associative function. Ex:
--          min 2 (min 1 3) ==> 1
--          min (min 2 1) 3 ==> 1
-- monoid  
--      a monoid is semigroup with a neutral element. Ex:
--          0 is the neutral element of (+)
--              3 + 0        ==>  3
--              0 + 3        ==>  3

--          1 is the neutral element of (*)
--              1 * 5        ==>  5
--              5 * 1        ==>  5

--          [] is the neutral element of (++)
--              [] ++ [1,2]  ==>  [1,2]
--              [1,2] ++ []  ==>  [1,2]

data Sum a = Sum a
    deriving Show
instance Num a => Semigroup (Sum a) where
    Sum a <> Sum b = Sum(a + b)

data Product a = Product a
    deriving Show
instance Num a => Semigroup (Product a) where
    Product a <> Product b = Product(a * b)


instance Monoid (Sum a) where
    mempty = Sum 0

instance Monoid (Product a) where
    mempty = Product 1


import Control.Monad

produceThree :: IO Int
produceThree = return 3

printThree :: IO ()
printThree =
  do
    three <- produceThree
    print three

-- note: return DOES NOT stop execution of an operation
-- this produces 2
produceTwo :: IO Int
produceTwo =
  do
    return 3
    return 2

-- do something for every list element
printList :: [Int] -> IO ()
printList = mapM_ print

-- do something n times, collect the result
readAndSum :: Int -> IO Int
readAndSum n =
  do
    xxs <- replicateM n readLn
    return $ sum xxs

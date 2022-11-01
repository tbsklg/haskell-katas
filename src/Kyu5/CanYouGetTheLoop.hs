module Kyu5.CanYouGetTheLoop where

data Node a = Node a (Node a)

instance Eq a => Eq (Node a) where
  (Node a _) == (Node b _) = a == b

instance Show a => Show (Node a) where
  show (Node a _) = "(Node " ++ show a ++ " _)"

next :: Node a -> Node a
next (Node _ n) = n

loopSize :: Eq a => Node a -> Int
loopSize node = find [node]
  where
    find nodes
      | (`elem` nodes) . next . head $ nodes = (+) 1 . length . takeWhile (/= nextNode) $ nodes
      | otherwise = find (nextNode : nodes)
      where
        nextNode = next . head $ nodes

-- see https://en.wikipedia.org/wiki/Cycle_detection

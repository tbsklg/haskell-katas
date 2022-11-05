module Kyu7.TableGameSpec where

import Control.Monad (when)
import Kyu7.TableGame
import Test.HUnit (assertEqual)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

myTest arg exp = do
  assertEqual msg exp actual
  where
    actual = tableGame arg
    msg = "Failed at: " ++ showArgs
    showArgs = show arg

spec :: Spec
spec = do
  it "Fixed tests " $ do
    myTest
      [ [1, 2, 1],
        [2, 4, 2],
        [1, 2, 1]
      ]
      (Just [1, 1, 1, 1])
    myTest
      [ [3, 7, 4],
        [5, 16, 11],
        [2, 9, 7]
      ]
      (Just [3, 4, 2, 7])
    myTest
      [ [1, 4, 2],
        [5, 10, 5],
        [4, 7, 3]
      ]
      Nothing
    myTest
      [ [2, 4, 2],
        [4, 6, 4],
        [2, 4, 2]
      ]
      Nothing
    myTest
      [ [2, 4, 2],
        [4, 8, 4],
        [2, 4, 2]
      ]
      (Just [2, 2, 2, 2])
    myTest
      [ [1, 2, 1],
        [1, 2, 1],
        [1, 2, 1]
      ]
      Nothing
  modifyMaxSuccess (const 1000) $
    it "Random tests " $
      property $
        forAll getArg $ \t -> do
          --      when (tableGame t /= Nothing) $ print t
          tableGame t `shouldBe` sol t

getArg :: Gen [[Int]]
getArg = do
  a <- choose (1, 10)
  b <- choose (1, 10)
  c <- choose (1, 10)
  d <- choose (1, 10)
  let table = mkTable a b c d
  oneof [return table, vectorOf 3 $ vectorOf 3 $ choose (1, 10)]

sol :: [[Int]] -> Maybe [Int]
sol t
  | valid = Just [a, b, c, d]
  | otherwise = Nothing
  where
    a = t !! 0 !! 0
    b = t !! 0 !! 2
    c = t !! 2 !! 0
    d = t !! 2 !! 2
    valid = t == mkTable a b c d

mkTable a b c d =
  [ [a, a + b, b],
    [a + c, a + b + c + d, b + d],
    [c, c + d, d]
  ]

-- the following line is optional for 8.2
main = hspec spec

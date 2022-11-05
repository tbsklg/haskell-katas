module Kyu7.DropWhileSpec where

import Kyu7.DropWhile (dropWhile)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck
import Prelude as P hiding (dropWhile)
import qualified Prelude as P

spec :: Spec
spec = do
  describe "dropWhile" $ do
    it "should work for empty lists" $
      dropWhile [] even `shouldBe` []

    it "should work for some static lists" $ do
      dropWhile [1 .. 10] even `shouldBe` [1 .. 10]
      dropWhile [1 .. 10] odd `shouldBe` [2 .. 10]
      dropWhile [1 .. 10] (< 5) `shouldBe` [5 .. 10]
      dropWhile [1 .. 10] (> 0) `shouldBe` []

    it "should work like Prelude.dropWhile" $ do
      conjoin
        [ property $ \xs -> isSame even (xs :: [Int]),
          property $ \n xs -> isSame (< n) (xs :: [Integer]),
          property $ \c xs -> isSame (/= c) (xs :: String),
          property $ \xs -> isSame (> 0) (xs :: [Double])
        ]
  where
    isSame :: (Eq a, Show a) => (a -> Bool) -> [a] -> Expectation
    isSame p xs = dropWhile xs p `shouldBe` P.dropWhile p xs

module Kyu7.SumSpec where

import Kyu7.Sum (sumTimesTables)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "sumTimesTables" $ do
    it "works for some examples" $ do
      sumTimesTables [2,3]   1 3  `shouldBe`  30
      sumTimesTables [1,3,5] 1 1  `shouldBe`   9
      sumTimesTables [1,3,5] 1 10 `shouldBe` 495
    
    it "works if the range consists of only one element" $ property $ \xs n ->
      sumTimesTables xs n n `shouldBe` n * sum xs

module Kyu6.AdjacentPairsSpec (spec, main) where

import Test.Hspec
import Test.QuickCheck
import Kyu6.AdjacentPairs (countAdjacentPairs)

main = hspec spec
spec = do
  describe "mistakes" $ do
    it "should work for several examples" $ do
      countAdjacentPairs "dog cat" `shouldBe` 0      
      countAdjacentPairs "dog cat" `shouldBe` 0
      countAdjacentPairs "dog dog cat" `shouldBe` 1
      countAdjacentPairs "apple dog cat" `shouldBe` 0
      countAdjacentPairs "pineapple apple dog cat" `shouldBe` 0
      countAdjacentPairs "apple     apple dog cat" `shouldBe` 1
      countAdjacentPairs "apple dog apple dog cat" `shouldBe` 0
      countAdjacentPairs "dog dog dog dog dog dog" `shouldBe` 1
      countAdjacentPairs "dog dog dog dog cat cat" `shouldBe` 2
      countAdjacentPairs "cat cat dog dog cat cat" `shouldBe` 3
      countAdjacentPairs "As as aS you can see, it's not easy to spot those errors, especially if words differ in case, like *\"as\"* at the beginning of the sentence." `shouldBe` 1

module Kyu7.BackronymSpec where

import Kyu7.Backronym (makeBackronym)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "makeBackronym" $ do
    it "works on an empty string" $ makeBackronym "" `shouldBe` ""

    it "works on examples" $ do
      makeBackronym "dgm"
        `shouldBe` "disturbing gregarious mustache"
      makeBackronym "lkj"
        `shouldBe` "literal klingon joke"
      makeBackronym "interesting"
        `shouldBe` "ingestable newtonian turn eager rant eager stylish turn ingestable newtonian gregarious"
      makeBackronym "codewars"
        `shouldBe` "confident oscillating disturbing eager weird awesome rant stylish"

    prop "returns the correct number of words" $
      forAll (listOf (choose ('a', 'z'))) $ \word ->
        makeBackronym word `shouldSatisfy` (length word ==) . length . words

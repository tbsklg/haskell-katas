module Kyu7.ConsecutiveVowelsinaStringSpec (spec) where

import Kyu7.ConsecutiveVowelsinaString (getTheVowels)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    getTheVowels "agrtertyfikfmroyrntbvsukldkfa" `shouldBe` 6
    getTheVowels "erfaiekjudhyfimngukduo" `shouldBe` 4

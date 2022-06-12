module Kyu7.Remove5Spec (spec) where

import Kyu7.Remove5 (remove)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    remove "Hi!"               `shouldBe` ""
    remove "Hi! Hi!"           `shouldBe` ""
    remove "Hi! Hi! Hi!"       `shouldBe` ""
    remove "Hi Hi! Hi!"        `shouldBe` "Hi"
    remove "Hi! !Hi Hi!"       `shouldBe` ""
    remove "Hi Hi"             `shouldBe` "Hi Hi"
    remove "Hi! Hi!! Hi!"      `shouldBe` "Hi!!"
    remove "Hi! !Hi! Hi!"      `shouldBe` "!Hi!"

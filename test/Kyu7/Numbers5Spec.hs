module Kyu7.Numbers5Spec where

import Kyu7.Numbers5 (isPerfect)
import Test.Hspec

spec :: Spec
spec = do
  describe "isPerfect" $ do
    it "works for some examples" $ do
      isPerfect 6 `shouldBe` True
      isPerfect 2 `shouldBe` False
      isPerfect 28 `shouldBe` True
      isPerfect 496 `shouldBe` True
      isPerfect 1234 `shouldBe` False
      isPerfect 8128 `shouldBe` True
      isPerfect 33550336 `shouldBe` True
      isPerfect 4198576123 `shouldBe` False
      isPerfect 8589869056 `shouldBe` True
      isPerfect 137438691328 `shouldBe` True
      isPerfect 439125769184 `shouldBe` False

module Kyu7.WomansAgeSpec (spec) where

import Test.Hspec
import Kyu7.WomansAge (womensAge)

spec :: Spec
spec = do
  it "Basic tests" $ do
    womensAge 32 `shouldBe` "32? That's just 20, in base 16!"
    womensAge 39 `shouldBe` "39? That's just 21, in base 19!"
    womensAge 22 `shouldBe` "22? That's just 20, in base 11!"
    womensAge 65 `shouldBe` "65? That's just 21, in base 32!"
    womensAge 83 `shouldBe` "83? That's just 21, in base 41!"

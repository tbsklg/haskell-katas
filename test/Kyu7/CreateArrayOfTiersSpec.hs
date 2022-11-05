module Kyu7.CreateArrayOfTiersSpec (spec) where

import Kyu7.CreateArrayOfTiers (createArrayOfTiers)
import Test.Hspec

spec :: Spec
spec = do
  it "fixed tests" $ do
    createArrayOfTiers 0 `shouldBe` ["0"]
    createArrayOfTiers 6 `shouldBe` ["6"]
    createArrayOfTiers 420 `shouldBe` ["4", "42", "420"]
    createArrayOfTiers 2017 `shouldBe` ["2", "20", "201", "2017"]
    createArrayOfTiers 2010 `shouldBe` ["2", "20", "201", "2010"]
    createArrayOfTiers 4020 `shouldBe` ["4", "40", "402", "4020"]
    createArrayOfTiers 80200 `shouldBe` ["8", "80", "802", "8020", "80200"]

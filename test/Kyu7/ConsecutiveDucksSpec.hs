module Kyu7.ConsecutiveDucksSpec (spec) where

import Test.Hspec
import Kyu7.ConsecutiveDucks (consecutiveDucks)

spec :: Spec
spec = do
  it "Check Small Values" $ do
    consecutiveDucks 69 `shouldBe` True
    consecutiveDucks 8 `shouldBe` False
    consecutiveDucks 57 `shouldBe` True
    consecutiveDucks 6 `shouldBe` True
    consecutiveDucks 13 `shouldBe` True
    consecutiveDucks 16 `shouldBe` False
    consecutiveDucks 91 `shouldBe` True
    consecutiveDucks 75 `shouldBe` True
    consecutiveDucks 38 `shouldBe` True
    consecutiveDucks 25 `shouldBe` True
    consecutiveDucks 32 `shouldBe` False
    consecutiveDucks 65 `shouldBe` True
    consecutiveDucks 13 `shouldBe` True
    consecutiveDucks 16 `shouldBe` False
    consecutiveDucks 99 `shouldBe` True
  it "Check Medium Values" $ do
    consecutiveDucks 522 `shouldBe` True
    consecutiveDucks 974 `shouldBe` True
    consecutiveDucks 755 `shouldBe` True
    consecutiveDucks 512 `shouldBe` False
    consecutiveDucks 739 `shouldBe` True
    consecutiveDucks 1006 `shouldBe` True
    consecutiveDucks 838 `shouldBe` True
    consecutiveDucks 1092 `shouldBe` True
    consecutiveDucks 727 `shouldBe` True
    consecutiveDucks 648 `shouldBe` True
    consecutiveDucks 1024 `shouldBe` False
    consecutiveDucks 851 `shouldBe` True
    consecutiveDucks 541 `shouldBe` True
    consecutiveDucks 1011 `shouldBe` True
    consecutiveDucks 822 `shouldBe` True
  it "Check Large Values" $ do
    consecutiveDucks 382131 `shouldBe` True
    consecutiveDucks 118070 `shouldBe` True
    consecutiveDucks 17209 `shouldBe` True
    consecutiveDucks 32768 `shouldBe` False
    consecutiveDucks 161997 `shouldBe` True
    consecutiveDucks 400779 `shouldBe` True
    consecutiveDucks 198331 `shouldBe` True
    consecutiveDucks 325482 `shouldBe` True
    consecutiveDucks 88441 `shouldBe` True
    consecutiveDucks 648 `shouldBe` True
    consecutiveDucks 65536 `shouldBe` False
    consecutiveDucks 323744 `shouldBe` True
    consecutiveDucks 183540 `shouldBe` True
    consecutiveDucks 65271 `shouldBe` True
    consecutiveDucks 5263987 `shouldBe` True

module Kyu7.EliminateTheIntrudersSpec (spec) where

import Test.Hspec
import Kyu7.EliminateTheIntruders (eliminateUnsetBits)

spec :: Spec
spec = do
  it "example tests" $ do
    eliminateUnsetBits "11010101010101" `shouldBe` 255
    eliminateUnsetBits "111" `shouldBe` 7
    eliminateUnsetBits "1000000" `shouldBe` 1
    eliminateUnsetBits "000" `shouldBe` 0

module Kyu7.SpacifySpec (spec) where

import Kyu7.Spacify (spacify)
import Test.Hspec

spec :: Spec
spec = do
  it "basic tests" $ do
    spacify "abc" `shouldBe` "a b c"
    spacify "a" `shouldBe` "a"
    spacify "a b" `shouldBe` "a   b"

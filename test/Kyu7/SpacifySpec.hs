module Kyu7.SpacifySpec (spec) where

import Test.Hspec
import Kyu7.Spacify (spacify)

spec :: Spec
spec = do
  it "basic tests" $ do
    spacify "abc" `shouldBe` "a b c"
    spacify "a"   `shouldBe` "a"
    spacify "a b" `shouldBe` "a   b"

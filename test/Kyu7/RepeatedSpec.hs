module Kyu7.RepeatedSpec (spec) where

import Kyu7.Repeated (isConsecutive)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    isConsecutive "112200" `shouldBe` True
    isConsecutive "1222334556667" `shouldBe` True
    isConsecutive "001234400522" `shouldBe` False

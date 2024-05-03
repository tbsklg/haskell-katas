module Kyu6.YourOrderPleaseSpec (spec) where

import Kyu6.YourOrderPlease (yourOrderPlease)
import Test.Hspec

spec :: Spec
spec = do
  it "should work for some examples" $ do
    yourOrderPlease "is2 Thi1s T4est 3a" `shouldBe` "Thi1s is2 3a T4est"
    yourOrderPlease "4of Fo1r pe6ople g3ood th5e the2" `shouldBe` "Fo1r the2 g3ood 4of th5e pe6ople"
    yourOrderPlease "" `shouldBe` ""
    yourOrderPlease "3 2 1 6 7 4 5 9 8" `shouldBe` "1 2 3 4 5 6 7 8 9"

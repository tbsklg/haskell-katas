module Kyu6.CollatzSpec where
import Kyu6.Collatz (collatz)

import Test.Hspec

spec :: Spec
spec = do
  describe "collatz" $ do
    it "should work on some examples" $ do
      collatz 1 `shouldBe` "1"
      collatz 2 `shouldBe` "2->1"
      collatz 3 `shouldBe` "3->10->5->16->8->4->2->1"
      collatz 4 `shouldBe` "4->2->1"

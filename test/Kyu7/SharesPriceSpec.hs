module Kyu7.SharesPriceSpec where

import Kyu7.SharesPrice (sharePrice)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

spec :: Spec
spec = do
  describe "sharePrice" $ do
    it "returns the correct amount on some static examples" $ do
      sharePrice 100 [-50, 50] `shouldBe` "75.00"
      sharePrice 100 [-50, 100] `shouldBe` "100.00"
      sharePrice 100 [-20, 30] `shouldBe` "104.00"
      sharePrice 1000 [0, 2, 3, 6] `shouldBe` "1113.64"

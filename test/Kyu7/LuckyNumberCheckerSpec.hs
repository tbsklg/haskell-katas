module Kyu7.LuckyNumberCheckerSpec where

import Kyu7.LuckyNumberChecker (isLucky)
import Test.Hspec

spec :: Spec
spec = do
  describe "isLucky" $ do
    it "works for some examples" $ do
      isLucky 1892376 `shouldBe` True
      isLucky 189237 `shouldBe` False
      isLucky 18922314324324234423437 `shouldBe` False
      isLucky 189223141324324234423437 `shouldBe` True
      isLucky 1892231413243242344321432142343423437 `shouldBe` True
      isLucky 0 `shouldBe` True

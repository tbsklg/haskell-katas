module Kyu6.BalanceSpec where

import Kyu6.Balance (Comparison (..), balance)
import Test.Hspec
import Prelude hiding (Either (..))

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      balance "" "" `shouldBe` Balance
      balance "!!" "??" `shouldBe` Right
      balance "!??" "?!!" `shouldBe` Left
      balance "!?!!" "?!?" `shouldBe` Left
      balance "!!???!????" "??!!?!!!!!!!" `shouldBe` Balance

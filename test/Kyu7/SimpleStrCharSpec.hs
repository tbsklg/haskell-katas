module Kyu7.SimpleStrCharSpec where

import Kyu7.SimpleStrChar
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple String Characters" $ do
    it "Basic tests" $ do
      solve "Codewars@codewars123.com" `shouldBe` [1,18,3,2]
      solve "bgA5<1d-tOwUZTS8yQ" `shouldBe` [7,6,3,2]
      solve "P*K4%>mQUDaG$h=cx2?.Czt7!Zn16p@5H" `shouldBe` [9,9,6,9]
      solve "RYT'>s&gO-.CM9AKeH?,5317tWGpS<*x2ukXZD" `shouldBe` [15,8,6,9]
      solve "$Cnl)Sr<7bBW-&qLHI!mY41ODe" `shouldBe` [10,7,3,6]
      solve "@mw>0=QD-iAx!rp9TaG?o&M%l$34L.nbft" `shouldBe` [7,13,4,10]

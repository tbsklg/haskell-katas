module Kyu7.OdditiesSpec where
    
import Kyu7.Oddities (noOdds)
import Test.Hspec

spec :: Spec
spec = do
  describe "noOdds" $ do
    it "should work for some examples" $ do
      noOdds []      `shouldBe` []
      noOdds [1..5]  `shouldBe` [2,4]
      noOdds [1,3,5] `shouldBe` []
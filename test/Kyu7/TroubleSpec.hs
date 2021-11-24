module Kyu7.TroubleSpec where
import Kyu7.Trouble
import Test.Hspec

spec = do
  describe "Double Trouble" $ do
    it "Basic tests" $ do
      trouble [1, 3, 5, 6, 7, 4, 3] 7 `shouldBe` [1, 3, 5, 6, 7, 4]
      trouble [4, 1, 1, 1, 4] 2 `shouldBe` [4, 1, 4]
      trouble [2, 2, 2, 2, 2, 2] 4 `shouldBe` [2] 

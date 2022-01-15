module Kyu7.Capitalize2Spec where
    
import Kyu7.Capitalize2
import Test.Hspec

spec :: Spec
spec = do
  describe "Indexed capitalization" $ do
    it "passes basic tests" $ do
      capitalize "abcdef" [1, 2, 5] `shouldBe` "aBCdeF"
      capitalize "abcdef" [1, 2, 5, 100] `shouldBe` "aBCdeF"
      capitalize "abcdef" [1, 100, 2, 5] `shouldBe` "aBCdeF"
      capitalize "codewars" [1, 3, 5, 50] `shouldBe` "cOdEwArs"
      capitalize "abracadabra" [2, 6, 9, 10] `shouldBe` "abRacaDabRA"
      capitalize "codewarriors" [5] `shouldBe` "codewArriors"
      capitalize "indexinglessons" [0] `shouldBe` "Indexinglessons"

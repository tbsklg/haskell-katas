module Kyu7.MaxProductSpec where
import Kyu7.MaxProduct
import Test.Hspec

spec = do
  describe "Arrays of cats and dogs" $ do
    it "Basic tests" $ do
      solve [[1, 2],[3, 4]] `shouldBe` 8
      solve [[10,-15],[-1,-3]] `shouldBe` 45
      solve [[-1,2,-3,4],[1,-2,3,-4]] `shouldBe` 12
      solve [[-11,-6],[-20,-20],[18,-4],[-20, 1]] `shouldBe` 17600
      solve [[14,2],[0,-16],[-12,-16]] `shouldBe` 3584
      solve [[-3,-4],[1,2,-3]] `shouldBe` 12

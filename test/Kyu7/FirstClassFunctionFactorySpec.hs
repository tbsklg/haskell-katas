module Kyu7.FirstClassFunctionFactorySpec where
import Kyu7.FirstClassFunctionFactory (factory)
import Test.Hspec

spec :: Spec
spec = do
  describe "factory" $ do
    it "should work for some basic tests" $ do
      threes [1, 2, 3] `shouldBe` [3, 6, 9]
      fives [1, 2, 3] `shouldBe` [5, 10, 15]
      where threes = factory 3
            fives = factory 5

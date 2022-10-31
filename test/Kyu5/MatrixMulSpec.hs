module Kyu5.MatrixMulSpec where

import Kyu5.MatrixMul
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "Running tests" $ do


      it "Example case" $ do
        (matMul [[1,2],[3,2]] [[3,2],[1,1]] ) `shouldBe` [[5,4],[11,8]]

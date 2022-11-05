module Kyu7.KatastropheSpec where

import Kyu7.Katastrophe
import Test.Hspec
import Text.Printf (printf)

spec :: Spec
spec = do
  describe "Basic cases" $ do
    it "1st" $ do strongEnough [[2, 3, 1], [3, 1, 1], [1, 1, 2]] 2 `shouldBe` "Safe!"
    it "2nd" $ do strongEnough [[5, 8, 7], [3, 3, 1], [4, 1, 2]] 2 `shouldBe` "Safe!"
    it "3rd" $ do strongEnough [[5, 8, 7], [3, 3, 1], [4, 1, 2]] 3 `shouldBe` "Needs Reinforcement!"
    it "3rd" $ do strongEnough [[5, 1, 7], [1, 1, 1], [4, 1, 2]] 100 `shouldBe` "Safe!"

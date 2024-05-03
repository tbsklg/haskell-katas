module Kyu6.FirstCharacterSpec where

import Kyu6.FirstCharacter (firstDup)
import Test.Hspec

spec :: Spec
spec = do
  describe "firstDub" $ do
    it "should work for some simple tests" $ do
      firstDup "tweet" `shouldBe` Just 't'
      firstDup (cycle [1, 2, 3]) `shouldBe` Just 1
      firstDup (repeat ()) `shouldBe` Just ()
      firstDup [] `shouldBe` (Nothing :: Maybe Integer)
      firstDup [1 .. 10] `shouldBe` Nothing
      firstDup [2, 46, 3, 1, 1, 2] `shouldBe` Just 2

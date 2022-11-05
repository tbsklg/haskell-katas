module Kyu7.LastSpec where

import qualified Kyu7.Last as Last
import Test.Hspec

spec :: Spec
spec = do
  describe "Last.last [1..10]" $ do
    it "should be 10" $ do
      Last.last [1 .. 10] `shouldBe` 10

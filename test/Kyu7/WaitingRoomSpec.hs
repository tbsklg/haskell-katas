module Kyu7.WaitingRoomSpec where

import Kyu7.WaitingRoom
import Test.Hspec

spec :: Spec
spec = do
  describe "lastChair" $ do
    it "should return the last patient's chair number" $ do
      lastChair 10 `shouldBe` 9

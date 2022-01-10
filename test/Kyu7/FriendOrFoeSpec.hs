module Kyu7.FriendOrFoeSpec where

import Test.Hspec
import Kyu7.FriendOrFoe

spec :: Spec
spec = do
    describe "basic" $ do
        it "basic tests" $ do
            friend ["Ryan", "Kieran", "Mark"] `shouldBe` ["Ryan", "Mark"]
            friend ["This", "IS", "enough", "TEst", "CaSe"] `shouldBe` ["This", "TEst", "CaSe"]

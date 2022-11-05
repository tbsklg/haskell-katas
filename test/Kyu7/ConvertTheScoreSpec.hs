module Kyu7.ConvertTheScoreSpec (spec) where

import Kyu7.ConvertTheScore (scoreboard)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    scoreboard "The score is four nil" `shouldBe` (4, 0)
    scoreboard "new score: two three" `shouldBe` (2, 3)
    scoreboard "two two" `shouldBe` (2, 2)
    scoreboard "Arsenal just conceded another goal, two nil" `shouldBe` (2, 0)

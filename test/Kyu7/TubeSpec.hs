module Kyu7.TubeSpec where

import Control.Monad (forM_, when)
import Kyu7.Tube (Decision (..), calculator)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "calculator" $ do
    forM_
      [ (5, 6, 1, Bus, "The bus should win this time!"),
        (4, 5, 1, Walk, "Come on, you can walk this!"),
        (5, 8, 0, Walk, "If the time is exactly the time, you should walk it!"),
        (5, 4, 3, Walk, "There's no point taking the bus if it drops you in the middle of nowhere!"),
        (11, 15, 2, Bus, "Don't be crazy! You'll destroy your lovely shoes!"),
        (0.6, 0.4, 0, Walk, "Wow. Seriously? How lazy are you?"),
        (10, 0.4, 0, Bus, "You wouldn't want to walk in this case!")
      ]
      $ \(d, b, w, s, f) ->
        it ("should return " ++ show s ++ " for " ++ show (d, b, w)) $
          when (calculator d b w /= s) $
            expectationFailure f

    it "returns Walk if the distance is small" $
      property $
        forAll (choose (1e-1, 0.83)) $ \d -> \(Positive b) (Positive w) ->
          calculator d b w `shouldBe` Walk

    it "returns Bus if the distance is huge" $
      property $
        forAll (choose (10, 10 ^ 100)) $ \d -> \(Positive b) (Positive w) ->
          calculator d b w `shouldBe` Bus

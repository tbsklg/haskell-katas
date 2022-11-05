module Kyu7.FindShortestSpec where

import Kyu7.FindShortest
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Prelude.head" $ do
    it "Example Tests" $ do
      map find_shortest [l1, l2, l3, l4, l5, l6] `shouldBe` ([3, 3, 3, 1, 2, 2] :: [Integer])

l1 = "bitcoin take over the world maybe who knows perhaps"

l2 = "turns out random test cases are easier than writing out basic ones"

l3 = "lets talk about javascript the best language"

l4 = "i want to travel the world writing code one day"

l5 = "Lets all go on holiday somewhere very cold"

l6 = "Let's travel abroad shall we"

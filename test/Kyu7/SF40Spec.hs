module Kyu7.SF40Spec where

import Kyu7.SF40
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "handles fixed cases" $ do
    timedReading 4 "The Fox asked the stork, 'How is the soup?'" `shouldBe` 7
    timedReading 1 "..." `shouldBe` 0
    timedReading 3 "This play was good for us." `shouldBe` 3
    timedReading 3 "Suddenly he stopped, and glanced up at the houses" `shouldBe` 5
    timedReading 6 "Zebras evolved among the Old World horses within the last four million years." `shouldBe` 11
    timedReading 5 "Although zebra species may have overlapping ranges, they do not interbreed." `shouldBe` 6
    timedReading 1 "Oh!" `shouldBe` 0

-- the following line is optional for 8.2
main = hspec spec

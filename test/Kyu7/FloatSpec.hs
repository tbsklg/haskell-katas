module Kyu7.FloatSpec where

import Kyu7.Float
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "rounds to 2 places" $ do
    solution 2.3445345 `shouldBe` 2.34
    solution 1.1356 `shouldBe` 1.14
    solution 11.4234 `shouldBe` 11.42
    solution 2.34545 `shouldBe` 2.35
    solution 445.234234 `shouldBe` 445.23

-- the following line is optional for 8.2
main = hspec spec

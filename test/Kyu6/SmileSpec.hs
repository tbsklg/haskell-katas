module Kyu6.SmileSpec where

import Test.Hspec
import Kyu6.Smile

spec :: Spec
spec = do
  it "Handles basic tests" $ do
    countSmileys []                               `shouldBe` 0
    countSmileys [":D",":~)",";~D",":)"]          `shouldBe` 4
    countSmileys [":)",":(",":D",":O",":;"]       `shouldBe` 2
    countSmileys [";]", ":[", ";*", ":$", ";-D"]  `shouldBe` 1
    countSmileys [";", ")", ";*", ":$", "8-D"]    `shouldBe` 0

-- the following line is optional for 8.2
main = hspec spec

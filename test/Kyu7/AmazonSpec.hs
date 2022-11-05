module Kyu7.AmazonSpec where

import Kyu7.Amazon
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "does the amazon counting" $ do
    countArara 1 `shouldBe` "anane"
    countArara 2 `shouldBe` "adak"
    countArara 3 `shouldBe` "adak anane"
    countArara 9 `shouldBe` "adak adak adak adak anane"

-- the following line is optional for 8.2
main = hspec spec

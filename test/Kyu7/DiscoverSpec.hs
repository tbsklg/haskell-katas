module Kyu7.DiscoverSpec where

import Kyu7.Discover
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the discount" $ do
    discoverOriginalPrice 75 25 `shouldBe` 100
    discoverOriginalPrice 25 75 `shouldBe` 100
    discoverOriginalPrice 75.75 25 `shouldBe` 101
    discoverOriginalPrice 373.85 11.2 `shouldBe` 421
    discoverOriginalPrice 458.2 17.13 `shouldBe` 552.91

-- the following line is optional for 8.2
main = hspec spec

-- 75.75 = 75
-- x == 100

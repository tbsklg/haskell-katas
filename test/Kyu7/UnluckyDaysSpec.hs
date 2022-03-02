module Kyu7.UnluckyDaysSpec where

import Test.Hspec
import Kyu7.UnluckyDays

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Testing unluckyDays" $ do
    it "2015" $ do unluckyDays 2015 `shouldBe` 3
    it "1986" $ do unluckyDays 1986 `shouldBe` 1

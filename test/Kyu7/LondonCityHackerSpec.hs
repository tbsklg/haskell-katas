module Kyu7.LondonCityHackerSpec (spec) where

import Kyu7.LondonCityHacker (Journey (..), londonCityHacker)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    londonCityHacker [Tube "Northern", Tube "Central", Bus 243, Bus 1, Tube "Victoria"] `shouldBe` "£8.70"
    londonCityHacker [Bus 12, Tube "Central", Tube "Circle", Bus 21] `shouldBe` "£7.80"
    londonCityHacker [Tube "Piccidilly", Bus 56] `shouldBe` "£3.90"
    londonCityHacker [Tube "Northern", Tube "Central", Tube "Circle"] `shouldBe` "£7.20"
    londonCityHacker [Tube "Piccidilly", Bus 56, Bus 93, Bus 243] `shouldBe` "£5.40"
    londonCityHacker [Bus 386, Bus 56, Bus 1, Bus 876] `shouldBe` "£3.00"
    londonCityHacker [] `shouldBe` "£0.00"

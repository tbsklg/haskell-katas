module Kyu7.ConferenceSpec where

import Kyu7.Conference (conferencePicker)
import Test.Hspec
import Test.QuickCheck

data Cities = Cities

spec :: Spec
spec = do
  describe "conferencePicker" $ do
    context "static tests" $ do
      it "works if there is one unvisited city" $ do
        conferencePicker ["Mexico City", "Johannesburg", "Stockholm", "Osaka", "Saint Petersburg", "London"] ["Stockholm", "Paris", "Melbourne"] `shouldBe` Just "Paris"

      it "returns Nothing if all cities have been visited" $ do
        conferencePicker ["Berlin", "Paris"] ["Paris", "Berlin"] `shouldBe` Nothing

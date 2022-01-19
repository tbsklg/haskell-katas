module Kyu7.MenBoysSpec where

import Test.Hspec
import Kyu7.MenBoys

spec :: Spec
spec = do
    describe "separate men from boys" $ do
        it "a few cases" $ do
          menFromBoys [7,3,14,17] `shouldBe` [14,17,7,3]
          menFromBoys [2,43,95,90,37] `shouldBe` [2,90,95,43,37]
          menFromBoys [20,33,50,34,43,46] `shouldBe` [20,34,46,50,43,33]
          menFromBoys [82,91,72,76,76,100,85] `shouldBe` [72,76,82,100,91,85]
          menFromBoys [2,15,17,15,2,10,10,17,1,1] `shouldBe` [2,10,17,15,1]
          menFromBoys [-32,-39,-35,-41] `shouldBe` [-32,-35,-39,-41]
          menFromBoys [-64,-71,-63,-66,-65] `shouldBe` [-66,-64,-63,-65,-71]
          menFromBoys [-94,-99,-100,-99,-96,-99] `shouldBe` [-100,-96,-94,-99]
          menFromBoys [-53,-26,-53,-27,-49,-51,-14] `shouldBe` [-26,-14,-27,-49,-51,-53]
          menFromBoys [-17,-45,-15,-33,-85,-56,-86,-30] `shouldBe` [-86,-56,-30,-15,-17,-33,-45,-85]
          menFromBoys [12,89,-38,-78] `shouldBe` [-78,-38,12,89]
          menFromBoys [2,-43,95,-90,37] `shouldBe` [-90,2,95,37,-43]
          menFromBoys [82,-61,-87,-12,21,1] `shouldBe` [-12,82,21,1,-61,-87]
          menFromBoys [63,-57,76,-85,88,2,-28] `shouldBe` [-28,2,76,88,63,-57,-85]
          menFromBoys [49,818,-282,900,928,281,-282,-1] `shouldBe` [-282,818,900,928,281,49,-1]

module Kyu6.BirdCodeSpec where

import Kyu6.BirdCode
import Test.HUnit (assertEqual)
import Test.Hspec

test s exp = do
  --  print $ "Looking for: " ++ show exp
  assertEqual msg exp actual
  where
    actual = birdCode s
    msg = "Failed at: " ++ showArgs
    showArgs = show s

spec :: Spec
spec = do
  it "Fixed Tests" $ do
    test ["American Redstart", "Northern Cardinal", "Pine Grosbeak", "Barred Owl", "Starling", "Cooper's Hawk", "Pigeon"] ["AMRE", "NOCA", "PIGR", "BAOW", "STAR", "COHA", "PIGE"]
    test ["Great Crested Flycatcher", "Bobolink", "American White Pelican", "Red-Tailed Hawk", "Eastern Screech Owl", "Blue Jay"] ["GCFL", "BOBO", "AWPE", "RTHA", "ESOW", "BLJA"]
    test ["Black-Crowned Night Heron", "Northern Mockingbird", "Eastern Meadowlark", "Dark-Eyed Junco", "Red-Bellied Woodpecker"] ["BCNH", "NOMO", "EAME", "DEJU", "RBWO"]
    test ["Scarlet Tanager", "Great Blue Heron", "Eastern Phoebe", "American Black Duck", "Mallard", "Canvasback", "Merlin", "Ovenbird"] ["SCTA", "GBHE", "EAPH", "ABDU", "MALL", "CANV", "MERL", "OVEN"]
    test ["Fox Sparrow", "White-Winged Crossbill", "Veery", "American Coot", "Sora", "Northern Rough-Winged Swallow", "Purple Martin"] ["FOSP", "WWCR", "VEER", "AMCO", "SORA", "NRWS", "PUMA"]

-- the following line is optional for 8.2
main = hspec spec

module Kyu7.WallpaperSpec where

import Kyu7.Wallpaper (wallpaper)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testWallpaper :: Double -> Double -> Double -> String -> Spec
testWallpaper l w h u =
  it (printf "should return wallpaper for l : %f w : %f h : %f " l w h) $
    wallpaper l w h `shouldBe` u

spec :: Spec
spec = do
  describe "wallpaper" $ do
    testWallpaper 6.3 4.5 3.29 "sixteen"
    testWallpaper 7.8 2.9 3.29 "sixteen"
    testWallpaper 6.3 5.8 3.13 "seventeen"
    testWallpaper 6.1 6.7 2.81 "sixteen"

module Kyu7.InvisibleCubesSpec where

import Test.Hspec
import Kyu7.InvisibleCubes ( notVisibleCubes )

spec :: Spec
spec = do
  describe "notVisibleCubes" $ do
    it "should return the correct answer for some basic tests" $ do
      notVisibleCubes 0 `shouldBe` 0
      notVisibleCubes 1 `shouldBe` 0
      notVisibleCubes 2 `shouldBe` 0
      notVisibleCubes 3 `shouldBe` 1
      notVisibleCubes 4 `shouldBe` 8
      notVisibleCubes 5 `shouldBe` 27
      notVisibleCubes 6 `shouldBe` 64
      notVisibleCubes 7 `shouldBe` 125
      notVisibleCubes 8 `shouldBe` 216
      notVisibleCubes 9 `shouldBe` 343
      notVisibleCubes 10 `shouldBe` 512
      notVisibleCubes 11 `shouldBe` 729
      notVisibleCubes 12 `shouldBe` 1000
      notVisibleCubes 13 `shouldBe` 1331
      notVisibleCubes 14 `shouldBe` 1728
      notVisibleCubes 15 `shouldBe` 2197
      notVisibleCubes 123456 `shouldBe` 1881548848380664
      notVisibleCubes 123457 `shouldBe` 1881594571421375
      notVisibleCubes 123458 `shouldBe` 1881640295202816
      notVisibleCubes 123459 `shouldBe` 1881686019724993
      notVisibleCubes 123460 `shouldBe` 1881731744987912
      
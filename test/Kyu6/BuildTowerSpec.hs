module Kyu6.BuildTowerSpec ( spec, main ) where

import Kyu6.BuildTower ( buildTower )
import Test.Hspec          ( Spec, describe, hspec, it, shouldBe )

main :: IO ()
main = hspec spec
spec :: Spec
spec = describe "buildTower" $ do
    it "tower with 1 floor"  $ buildTower 1 `shouldBe` [ "*"
                                                       ]
    it "tower with 2 floors" $ buildTower 2 `shouldBe` [ " * "
                                                       , "***"
                                                       ]
    it "tower with 3 floors" $ buildTower 3 `shouldBe` [ "  *  "
                                                       , " *** "
                                                       , "*****"
                                                       ]


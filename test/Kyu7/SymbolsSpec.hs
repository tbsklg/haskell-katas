module Kyu7.SymbolsSpec where

import Data.List (partition)
import Kyu7.Symbols
import Test.Hspec

spec :: Spec
spec = do
  it "Test cases" $ do
    transform "elevation" `shouldBe` "e2lvation"
    transform "transplantology" `shouldBe` "t2ra2n2spl2o2gy"
    transform "economics" `shouldBe` "ec2o2nmis"
    transform "embarrassed" `shouldBe` "e2mba2r2s2d"
    transform "impressive" `shouldBe` "i2mpre2s2v"

module Kyu7.DuckShootSpec where

import Kyu7.DuckShoot
import Test.Hspec

spec :: Spec
spec = do
  describe "shoots all the ducks" $ do
    it "fixed cases" $ do
      duckShoot 4 0.64 "|~~2~~~22~2~~22~2~~~~2~~~|" `shouldBe` "|~~X~~~X2~2~~22~2~~~~2~~~|"
      duckShoot 9 0.22 "|~~~~~~~2~2~~~|" `shouldBe` "|~~~~~~~X~2~~~|"
      duckShoot 6 0.41 "|~~~~~22~2~~~~~|" `shouldBe` "|~~~~~XX~2~~~~~|"
      duckShoot 8 0.05 "|2~~~~|" `shouldBe` "|2~~~~|"
      duckShoot 8 0.92 "|~~~~2~2~~~~~22~~2~~~~2~~~2|" `shouldBe` "|~~~~X~X~~~~~XX~~X~~~~X~~~X|"

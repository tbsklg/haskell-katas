module Kyu7.CharCodeSpec where

import Test.Hspec
import Test.QuickCheck
import Kyu7.CharCode

spec :: Spec
spec = do
    describe "Basic Tests" $ do
        it "should handle alphanumeric strings" $ do
            calc "abcdef" `shouldBe` 6
            calc "ifkhchlhfd" `shouldBe` 6 
            calc "aaaaaddddr" `shouldBe` 30 
            calc "jfmgklf8hglbe" `shouldBe` 6
            calc "jaam" `shouldBe` 12

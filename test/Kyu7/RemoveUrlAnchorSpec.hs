module Kyu7.RemoveUrlAnchorSpec where

import Test.Hspec
import Kyu7.RemoveUrlAnchor

spec :: Spec
spec = do
    describe "removeUrlAnchor" $ do
        it "should work for basic tests" $ do
           removeUrlAnchor "www.codewars.com#about" `shouldBe` "www.codewars.com"

-- the following line is optional for 8.2
main = hspec spec

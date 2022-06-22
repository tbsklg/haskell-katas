module Kyu7.CentreSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Kyu7.Centre

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "isInMiddle" $ do
        it "should test the examples" $ do
            (isInMiddle "AAabcBB") `shouldBe` True
            (isInMiddle "AabcBB") `shouldBe` True
            (isInMiddle "AabcBBB") `shouldBe` False

-- the following line is optional for 8.2
main = hspec spec

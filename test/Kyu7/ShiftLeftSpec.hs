module Kyu7.ShiftLeftSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Kyu7.ShiftLeft

assert a b c =
   (shiftLeft a b) `shouldBe` c
   
-- `spec` of type `Spec` must exist
spec = do
    describe "ShiftSolution" $ do
      it "Fixed tests" $ do
         assert "test" "west" 2
         assert "test" "yes" 7
         assert "b" "ab" 1
         assert "abacabadabacaba" "abacabadacaba" 18
         assert "aaabc" "bc" 3
         assert "dark" "d" 5
         assert "dadc" "dddc" 4
         assert "nogkvcdldfpvlbkpedsecl" "nogkvcdldfpvlbkpedsecl" 0

-- the following line is optional for 8.2
main = hspec spec

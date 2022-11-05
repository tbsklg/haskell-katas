module Kyu7.CommonSubsSpec (spec) where

import Kyu7.CommonSubs (substringTest)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testSub :: [Char] -> [Char] -> Bool -> Spec
testSub s1 s2 u =
  it (printf "should return substringTest for s1: %s s2: %s" s1 s2) $
    substringTest s1 s2 `shouldBe` u

main = hspec spec

spec = do
  describe "substringTest" $ do
    testSub "Something" "Home" True
    testSub "Something" "Fun" False
    testSub "Something" "" False
    testSub "BANANA" "banana" True
    testSub "Home" "Something" True
    testSub "test" "lllt" False
    testSub "" "" False
    testSub "1234567" "541265" True
    testSub "supercalifragilisticexpialidocious" "SoundOfItIsAtrocious" True

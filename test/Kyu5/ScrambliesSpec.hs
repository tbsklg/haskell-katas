module Kyu5.ScrambliesSpec where

import Kyu5.Scramblies (scramble)
import Test.Hspec

test :: [Char] -> [Char] -> Bool -> Spec
test s1 s2 expected = it ("scramble \"" ++ s1 ++ "\" \"" ++ s2 ++ "\"") $ do
  scramble s1 s2 `shouldBe` expected

spec :: Spec
spec = describe "scramble: Basic Tests" $ do
  test "rkqodlw" "world" True
  test "cedewaraaossoqqyt" "codewars" True
  test "katas" "steak" False
  test "scriptjavx" "javascript" False
  test "scriptingjava" "javascript" True
  test "scriptsjava" "javascripts" True
  test "javscripts" "javascript" False
  test "aabbcamaomsccdd" "commas" True
  test "commas" "commas" True
  test "sammoc" "commas" True

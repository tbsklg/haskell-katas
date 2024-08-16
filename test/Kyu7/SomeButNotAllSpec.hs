module Kyu7.SomeButNotAllSpec (spec) where

import Data.Char (isAlpha)
import Kyu7.SomeButNotAll (someButNotAll)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "someButNotAll isAlpha \"abcdefg&%$\"" True $ someButNotAll isAlpha "abcdefg&%$"
    assertEqual "someButNotAll isAlpha \"&%$=\"" False $ someButNotAll isAlpha "&%$="
    assertEqual "someButNotAll isAlpha \"abcdefg\"" False $ someButNotAll isAlpha "abcdefg"
    assertEqual "someButNotAll (> 3) [4, 1]" True $ someButNotAll (> 3) [4, 1]
    assertEqual "someButNotAll (> 3) [1, 1]" False $ someButNotAll (> 3) [1, 1]
    assertEqual "someButNotAll (> 3) [4, 4]" False $ someButNotAll (> 3) [4, 4]

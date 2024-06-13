module Kyu7.LettersBestFriendSpec (spec) where

import Kyu7.LettersBestFriend (bestFriend)
import Test.Hspec
import Test.HUnit (assertEqual)

spec :: Spec
spec = do
  it "description example tests" $ do
    assertEqual "bestFriend \"he headed to the store\" 'h' 'e'" True $ bestFriend "he headed to the store" 'h' 'e'
    assertEqual "bestFriend \"abcdee\" 'e' 'e'" False $ bestFriend "abcdee" 'e' 'e'
    assertEqual "bestFriend \"i found an ounce with my hound\" 'o' 'u'" True $ bestFriend "i found an ounce with my hound" 'o' 'u'
    assertEqual "bestFriend \"we found your dynamite\" 'd' 'y'" False $ bestFriend "we found your dynamite" 'd' 'y'
  it "more example tests" $ do
    assertEqual "bestFriend \"\" 'z' 'h'" True $ bestFriend "" 'z' 'h'
    assertEqual "bestFriend \"h\" 'z' 'h'" True $ bestFriend "h" 'z' 'h'
    assertEqual "bestFriend \"abhc\" 'z' 'h'" True $ bestFriend "abhc" 'z' 'h'
    assertEqual "bestFriend \"zh\" 'z' 'h'" True $ bestFriend "zh" 'z' 'h'
    assertEqual "bestFriend \"zoo wee mama\" 'm' 'a'" True $ bestFriend "zoo wee mama" 'm' 'a'
    assertEqual "bestFriend \"those were their thorns they said\" 't' 'h'" True $ bestFriend "those were their thorns they said" 't' 'h'
    assertEqual "bestFriend \"z\" 'z' 'h'" False $ bestFriend "z" 'z' 'h'
    assertEqual "bestFriend \"aza\" 'z' 'h'" False $ bestFriend "aza" 'z' 'h'
    assertEqual "bestFriend \"zh\" 'h' 'z'" False $ bestFriend "zh" 'h' 'z'
    assertEqual "bestFriend \"ll\" 'l' 'l'" False $ bestFriend "ll" 'l' 'l'
    assertEqual "bestFriend \"zoo wee mama\" 'a' 'm'" False $ bestFriend "zoo wee mama" 'a' 'm'
    assertEqual "bestFriend \"look they took the cookies\" 'o' 'o'" False $ bestFriend "look they took the cookies" 'o' 'o'
    assertEqual "bestFriend \"a test\" 't' 'e'" False $ bestFriend "a test" 't' 'e'
    assertEqual "bestFriend \"abcde\" 'e' 'e'" False $ bestFriend "abcde" 'e' 'e'

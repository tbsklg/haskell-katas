module Kyu6.TenMinuteWalkSpec where

import Control.Monad (when)
import Kyu6.TenMinuteWalk (isValidWalk)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isValidWalk" $ do
    it "should work for some examples" $ do
      isValidWalk ['n', 's', 'n', 's', 'n', 's', 'n', 's', 'n', 's'] ??? "should return True  on valid walk"
      isValidWalk ['n', 's', 'n', 's', 'n', 's', 'n', 's', 'n', 'n'] ??! "should return False on invalid walk"
      isValidWalk ['n', 's'] ??! "should return False on too short walk"
      isValidWalk (repeat 'n') ??! "should return False on infinite walk"
      isValidWalk ['n', 's', 'e', 'w', 'n', 's', 'e', 'w', 'n', 's'] ??? "should return True on valid walk"
    it "should reject short walks" $ do
      property $
        forAll (choose (1, 9)) $ \n ->
          forAll (listOf1 $ elements "nswe") $ \xs ->
            let walk = take n xs
             in isValidWalk walk ??! "the walk \"" ++ walk ++ "\" is too short and should be rejected"
    it "should work for semi-random valid walks" $ do
      property $
        forAll (choose (0, 3)) $ \n ->
          let k = 5 - n
              w = replicate n 's' ++ replicate n 'n' ++ replicate k 'w' ++ replicate k 'e'
           in isValidWalk w ??? "the walk \"" ++ w ++ "\" is valid short and should be accepted"
    it "should reject infinite lists" $ do
      property $ forAll infiniteList $ \walk ->
        isValidWalk walk ??! "this infinite walk should have been rejected"

-- | Additional helpers to provide better error messages
--   on boolean functions.
(???), (??!) :: Bool -> String -> Expectation
(??!) p = when p . expectationFailure
(???) p = when (not p) . expectationFailure

infix 0 ??!, ???

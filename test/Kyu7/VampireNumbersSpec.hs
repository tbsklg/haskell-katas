module Kyu7.VampireNumbersSpec where

import Kyu7.VampireNumbers (isVampire)
import Test.Hspec

spec :: Spec
spec = do
  describe "isVampire" $ do
    it "should work for some static tests" $ do
      isVampire 21 6              ??! "Basic: 21 * 6 = 126 should return True"
      isVampire 204 615           ??! "Basic: 204 * 615 = 125460 should return True"
      isVampire 30 (-51)          ??! "One Negative: 30 * -51 = -1530 should return True"
      not (isVampire (-246) (-510)) ??! "Double Negatives: -246 * -510 = 125460 should return False (The negative signs aren't present on the product)"
      isVampire 210 600           ??! "Trailing Zeroes: 210 * 600 = 126000 should return True"
  where (??!) :: Bool -> String -> Expectation
        True  ??! _ = return ()
        False ??! s = expectationFailure s

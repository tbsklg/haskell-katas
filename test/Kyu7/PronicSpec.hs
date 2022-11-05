module Kyu7.PronicSpec where

import Kyu7.Pronic (isPronic)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isPronic" $ do
    testIsPronic 0 True
    testIsPronic 1 False
    testIsPronic 2 True
    testIsPronic 3 False
    testIsPronic 4 False
    testIsPronic 5 False
    testIsPronic 6 True
    testIsPronic (-3) False
    testIsPronic (-27) False

    prop "returns True on pronic numbers" $ \(Positive x) ->
      isPronic $ x * (x + 1)

testIsPronic :: Integer -> Bool -> Spec
testIsPronic n t =
  it ("returns " ++ show t ++ " on " ++ show n) $ isPronic n === t

module Kyu7.LeapSpec where

import Control.Applicative
import Kyu7.Leap (isLeapYear)
import Test.Hspec
import Test.QuickCheck

spec = describe "isLeapYear" $ do
  it "returns True for years that are multiple of 400" $
    forAll (fmap (400 *) $ choose (1, 100)) $ \x ->
      isLeapYear x `shouldBe` True

  it "returns True for years that are multiple of 4, but not 100" $
    forAll (liftA2 (+) (fmap (* 100) $ choose (0, 200)) (elements [4, 8 .. 96])) $ \x ->
      isLeapYear x `shouldBe` True

  it "returns False for years that are multiple of 4 and 100, but not 400" $
    let add3 x y z = x + y + z
     in forAll (liftA2 (+) (fmap (* 400) $ choose (0, 200)) (elements [100, 200, 300])) $ \x ->
          isLeapYear x `shouldBe` False

  it "returns False for years that aren't multiple of four" $
    forAll (liftA2 (\n x -> n * 4 + x) (choose (0, 10000)) (choose (1, 3))) $ \x ->
      isLeapYear x `shouldBe` False

main = hspec spec

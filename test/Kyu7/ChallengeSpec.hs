module Kyu7.ChallengeSpec (spec) where

import Kyu7.Challenge (noRepeat)
import Test.Hspec
import Test.QuickCheck

main = hspec spec

spec = describe "noRepeat" $ do
  it "works for strings with a single character" $
    property $ \c ->
      noRepeat [c] `shouldBe` c

  it "works for some examples" $ do
    noRepeat "aabbccdde" `shouldBe` 'e'
    noRepeat "wxyz" `shouldBe` 'w'
    noRepeat "testing" `shouldBe` 'e'

  it "returns the first character for strings without duplicates" $
    property $
      forAll (sublistOf ['a' .. 'z']) $ \xs ->
        noRepeat xs `shouldBe` head xs

  it "finds the single non-duplicates character" $
    property $
      forAll (sublistOf ['a' .. 'z'] >>= shuffle >>= duplicatify) $ \(x, xs) ->
        noRepeat xs `shouldBe` x

  it "returns a character that has no duplicate" $
    property $
      forAll (sublistOf ['a' .. 'z'] >>= shuffle >>= multiDuplicatify) $ \(ys, xs) ->
        noRepeat xs `shouldSatisfy` (`elem` ys)

-- it "returns the _first_ non-duplicate character" $
--   pendingWith "well, a random test would spoil the fun, right?"

-- Helper functions below.
--

-- | Takes a string without duplicates, duplicates all elements (but the first),
--   shuffles all elements (including the first), and returns a pair of the
--   non duplicated element and the shuffled string.
duplicatify :: String -> Gen (Char, String)
duplicatify (x : xs) = do
  str <- shuffle (x : concatMap (replicate 2) xs)
  return (x, str)

-- | Takes a string without duplicates, and arbitrarily replicates all elements
--   (but the first) up to ten times.
--   It returns the non-duplicated characters, as well as shuffled string with
--   the repeated characters.
--
--   The head will never get duplicated, so there is at least one character
--   guaranteed to be non-duplicated
--
--   NOTE: This functions is a lot more complicated that it should be, but other
--         variants would spoil the fun, since the give some hints for a solution.
multiDuplicatify :: String -> Gen ([Char], String)
multiDuplicatify (x : xs) = do
  let forM = flip mapM -- too lazy for "import Control.Monad (forM)"
  r <- fmap (([x], [x]) :) $
    forM xs $ \c -> do
      n <- choose (1, 10)
      return $
        if n == 1
          then ([c], [c])
          else ([], replicate n c)

  let (uniques, str) = unzip r
  str <- shuffle $ concat str

  return (concat uniques, str)

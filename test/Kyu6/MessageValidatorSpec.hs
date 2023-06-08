module Kyu6.MessageValidatorSpec (spec) where

import           Control.Monad
import           Test.Hspec

import           Kyu6.MessageValidator (isAValidMessage)

fixedTests :: [([Char], Bool)]
fixedTests =
  [ ("3hey5hello2hi"       , True)
  , ("4code13hellocodewars", True)
  , ("3hey5hello2hi5"      , False)
  , ("code4hello5"         , False)
  , ("1a2bb3ccc4dddd5eeeee", True)
  , (""                    , True)
  ]

spec :: Spec
spec = do
  describe "Sample tests" $ do
    forM_ fixedTests $ \(input, expected) -> do
      it ("isAValidMessage " <> show input) $ do
        isAValidMessage input `shouldBe` expected


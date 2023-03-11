module Kyu6.DeadfishSpec (spec) where

import Kyu6.Deadfish (parse)
import Test.Hspec

spec = do
  it "Example test" $ do
    parse "iiisdoso" `shouldBe` [ 8, 64 ]

module Kyu5.SimpleAssemblerSpec where

import Data.Map.Strict as M
import Kyu5.SimpleAssembler
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Sample tests" $ do
    it "works with sample1" $ do
      ["mov a 5", "inc a", "dec a", "dec a", "jnz a -1", "inc a"] ===> [("a", 1)]

    it "works with sample2" $ do
      ["mov a -10", "mov b a", "inc a", "dec b", "jnz a -2"] ===> [("a", 0), ("b", (-20))]

prog ===> regs = (simpleAssembler prog) `shouldBe` (M.fromList regs)

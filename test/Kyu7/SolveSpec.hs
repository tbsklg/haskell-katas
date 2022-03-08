module Kyu7.SolveSpec (spec) where

import Kyu7.Solve (solve)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    solve "Chicago" `shouldBe` "c:**,h:*,i:*,a:*,g:*,o:*"
    solve "Bangkok" `shouldBe` "b:*,a:*,n:*,g:*,k:**,o:*"
    solve "Las Vegas" `shouldBe` "l:*,a:**,s:**,v:*,e:*,g:*"

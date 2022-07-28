module Kyu7.ArachSpec where

import Test.Hspec
import Kyu7.Arach

import Test.HUnit (assertEqual)
test l b m e exp= do
  print $ "Looking for spiders ... " ++ exp
  assertEqual ("Failed at: " ++ show (l,b,m,e) ) exp (drawSpider l b m e)
  
spec :: Spec
spec = do
  it "Fixed tests" $ do
    test 1 1 'W' 'o' "^(oWo)^"
    test 2 2 'w' 'O' "/\\((OOwOO))/\\"
    test 3 3 'w' '0' "/╲(((0000w0000)))╱\\"

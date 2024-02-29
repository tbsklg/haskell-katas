module Kyu5.SierpinskySpec where
import Test.Hspec
import Kyu5.Sierpinsky (sierpinsky)
import Data.List (intercalate)
import Text.Printf (printf)

spec :: Spec
spec = do
  describe "Basic Tests" $ do
    basicTest 0 sierpinsky0
    basicTest 1 sierpinsky1
    basicTest 2 sierpinsky2
    basicTest 3 sierpinsky3
--    basicTest 4 sierpinsky4
 
basicTest n expected = 
  it (printf "<pre>%s</pre>" expected) $
      (sierpinsky n) `shouldBe` expected

sierpinsky0 = intercalate "\n"
  ["L"]

sierpinsky1 = intercalate "\n"
  ["L"
  ,"L L"]

sierpinsky2 = intercalate "\n"
  ["L"
  ,"L L"
  ,"L   L"
  ,"L L L L"]

sierpinsky3 = intercalate "\n"
  ["L"
  ,"L L"
  ,"L   L"
  ,"L L L L"
  ,"L       L"
  ,"L L     L L"
  ,"L   L   L   L"
  ,"L L L L L L L L"]

sierpinsky4 = intercalate "\n"
  ["L"
  ,"L L"
  ,"L   L"
  ,"L L L L"
  ,"L       L"
  ,"L L     L L"
  ,"L   L   L   L"
  ,"L L L L L L L L"
  ,"L               L"
  ,"L L             L L"
  ,"L   L           L   L"
  ,"L L L L         L L L L"
  ,"L       L       L       L"
  ,"L L     L L     L L     L L"
  ,"L   L   L   L   L   L   L   L"
  ,"L L L L L L L L L L L L L L L L"]

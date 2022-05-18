module Kyu7.FearSpec where
import Kyu7.Fear {- of the dark -}
import Test.Hspec
import Test.QuickCheck
import Test.Hspec.QuickCheck

spec :: Spec
spec = do
  describe "amIAfraid" $ 
    -- I am a man who walks alone
    -- And when I'm walking a dark road
    -- At night or strolling through the park
    it "works on some examples" $ do
      amIAfraid "Monday"    13 `shouldBe` False
      amIAfraid "Sunday" (-666)`shouldBe` True
      amIAfraid "Tuesday"    2 `shouldBe` False
      amIAfraid "Tuesday"  965 `shouldBe` True
      amIAfraid "Friday"     2 `shouldBe` True

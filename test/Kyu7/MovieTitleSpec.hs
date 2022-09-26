module Kyu7.MovieTitleSpec where

import Kyu7.MovieTitle
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The correctMovieTitle function" $ do
    it "should work for some examples" $ do      
      correctMovieTitle "platoon" `shouldBe` "Platoon"
      correctMovieTitle "GOODFELLAS" `shouldBe` "Goodfellas"
      correctMovieTitle "se7en" `shouldBe` "Se7en"
      correctMovieTitle "forrest Gump" `shouldBe` "Forrest Gump"
      correctMovieTitle "pulp fiction" `shouldBe` "Pulp Fiction"

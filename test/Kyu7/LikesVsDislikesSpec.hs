module Kyu7.LikesVsDislikesSpec (spec) where

import Kyu7.LikesVsDislikes (likeOrDislike, Like(..))
import Test.Hspec

spec :: Spec
spec = do
  it "description example tests" $ do
    likeOrDislike [Dislike] `shouldBe` Just Dislike
    likeOrDislike [Like, Like] `shouldBe` Nothing
    likeOrDislike [Dislike, Like] `shouldBe` Just Like
    likeOrDislike [Like, Dislike, Dislike] `shouldBe` Nothing
  it "more example tests" $ do
    likeOrDislike [Dislike, Dislike] `shouldBe` Nothing
    likeOrDislike [Like, Like, Like] `shouldBe` Just Like
    likeOrDislike [Like, Dislike] `shouldBe` Just Dislike
    likeOrDislike [Dislike, Like, Dislike] `shouldBe` Just Dislike
    likeOrDislike [Like, Like, Dislike, Like, Like, Like, Like, Dislike] `shouldBe` Just Dislike
    likeOrDislike [] `shouldBe` Nothing

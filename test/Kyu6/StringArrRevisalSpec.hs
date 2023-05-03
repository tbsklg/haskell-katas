module Kyu6.StringArrRevisalSpec where

import Kyu6.StringArrRevisal
import Test.Hspec

spec :: Spec
spec = do
  describe "String array revisal" $ do
    it "Basic tests" $ do
      dup ["ccooddddddewwwaaaaarrrrsssss", "piccaninny", "hubbubbubboo"] `shouldBe` ["codewars", "picaniny", "hubububo"]
      dup ["abracadabra", "allottee", "assessee"] `shouldBe` ["abracadabra", "alote", "asese"]
      dup ["kelless", "keenness"] `shouldBe` ["keles", "kenes"]
      dup ["Woolloomooloo", "flooddoorroommoonlighters", "chuchchi"] `shouldBe` ["Wolomolo", "flodoromonlighters", "chuchchi"]
      dup ["adanac", "soonness", "toolless", "ppellee"] `shouldBe` ["adanac", "sones", "toles", "pele"]
      dup ["callalloo", "feelless", "heelless"] `shouldBe` ["calalo", "feles", "heles"]
      dup ["putteellinen", "keenness"] `shouldBe` ["putelinen", "kenes"]
      dup ["kelless", "voorraaddoosspullen", "achcha"] `shouldBe` ["keles", "voradospulen", "achcha"]

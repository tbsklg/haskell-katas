module Kyu6.ISBNSpec (spec) where

import Kyu6.ISBN (toISBN13)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    toISBN13 "1-85326-158-0" `shouldBe` "978-1-85326-158-9"
    toISBN13 "0-14-143951-3" `shouldBe` "978-0-14-143951-8"
    toISBN13 "0-02-346450-X" `shouldBe` "978-0-02-346450-8"
    toISBN13 "963-14-2164-3" `shouldBe` "978-963-14-2164-4"
    toISBN13 "1-7982-0894-6" `shouldBe` "978-1-7982-0894-6"

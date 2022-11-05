module Kyu7.FixSpec where

import Kyu7.Fix
import Test.HUnit
import Test.Hspec

myTest s exp = do
  assertEqual msg exp actual
  where
    actual = fix' s
    msg = "Failed at: " ++ showArgs
    showArgs = s

spec :: Spec
spec = do
  describe "Fixed tests" $ do
    it "Empty String" $ do
      myTest "" ""
    it "Single letter" $ do
      myTest "a." "A."
      myTest "b." "B."
      myTest "c." "C."
      myTest "hi." "Hi."
    it "Single Word" $ do
      myTest "inconceivable." "Inconceivable."
      myTest "aaahhhh." "Aaahhhh."
    it "Single sentence" $ do
      myTest "as you wish." "As you wish."
      myTest "i love you." "I love you."
      myTest "just because youre beautiful and perfect its made you conceited." "Just because youre beautiful and perfect its made you conceited."
    it "Two sentences" $ do
      myTest "q. x." "Q. X."
      myTest "hi. how are you." "Hi. How are you."
      myTest "no more rhymes now i mean it. anybody want a peanut." "No more rhymes now i mean it. Anybody want a peanut."
    it "Longer tests" $ do
      myTest "a. b. c. d. e. f. g. h. i. j. k. l. m. n. o. p. q. r. s. t. u. v. w. x. y. z." "A. B. C. D. E. F. G. H. I. J. K. L. M. N. O. P. Q. R. S. T. U. V. W. X. Y. Z."
      myTest "i am your Prince and you will marry me. humperdinck said. buttercup whispered. i am your servant and i refuse. i am your prince and you cannot refuse. i am your loyal servant and i just did. refusal means death. kill me then." "I am your Prince and you will marry me. Humperdinck said. Buttercup whispered. I am your servant and i refuse. I am your prince and you cannot refuse. I am your loyal servant and i just did. Refusal means death. Kill me then."
      myTest "hello. my name is inigo montoya. you killed my father. prepare to die." "Hello. My name is inigo montoya. You killed my father. Prepare to die."
      myTest "i love you. buttercup said. i know this must come as something of a surprise to you since all ive ever done is scorn you and degrade you and taunt you. but i have loved you for several hours now. and every second more." "I love you. Buttercup said. I know this must come as something of a surprise to you since all ive ever done is scorn you and degrade you and taunt you. But i have loved you for several hours now. And every second more."
      myTest "inconceivable. you keep using that word. i do not think it means what you think it means." "Inconceivable. You keep using that word. I do not think it means what you think it means."
      myTest "im good. thanks. how about you." "Im good. Thanks. How about you."
      myTest "rodents of unusual size. i dont think they exist. agdhsfjhjsdf." "Rodents of unusual size. I dont think they exist. Agdhsfjhjsdf."

-- the following line is optional for 8.2
main = hspec spec

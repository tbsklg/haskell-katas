module Kyu7.DrawRectangleSpec where

import Control.Monad
import Kyu7.DrawRectangle
import Test.HUnit (assertEqual)
import Test.Hspec

testData :: [(Canvas, Rectangle, Canvas)]
testData =
  [ ( [ ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['b', 'b', 'b', 'b', 'b', 'b', 'b', 'b'],
        ['b', 'b', 'b', 'b', 'b', 'b', 'b', 'b']
      ],
      ((1, 1), (4, 3)),
      [ ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['a', '*', '-', '-', '*', 'a', 'a', 'a'],
        ['a', '|', 'a', 'a', '|', 'a', 'a', 'a'],
        ['b', '*', '-', '-', '*', 'b', 'b', 'b'],
        ['b', 'b', 'b', 'b', 'b', 'b', 'b', 'b']
      ]
    ),
    ( [ ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['b', 'b', 'b', 'b', 'b', 'b', 'b', 'b']
      ],
      ((0, 0), (1, 1)),
      [ ['*', '*', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['*', '*', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['b', 'b', 'b', 'b', 'b', 'b', 'b', 'b']
      ]
    ),
    ( [ ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['b', 'b', 'b', 'b', 'b', 'b', 'b', 'b']
      ],
      ((0, 2), (7, 3)),
      [ ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'],
        ['*', '-', '-', '-', '-', '-', '-', '*'],
        ['*', '-', '-', '-', '-', '-', '-', '*']
      ]
    ),
    ( [ ['a', 'a', 'a'],
        ['a', 'a', 'a'],
        ['a', 'a', 'a'],
        ['b', 'b', 'b']
      ],
      ((0, 0), (2, 3)),
      [ ['*', '-', '*'],
        ['|', 'a', '|'],
        ['|', 'a', '|'],
        ['*', '-', '*']
      ]
    )
  ]

myTest canvas rect exp = do
  assertEqual msg exp actual
  where
    actual = drawRectangle canvas rect
    msg = "Failed at: " ++ showArgs
    showArgs = show (canvas, rect)

spec :: Spec
spec = do
  it "Fixed Cases" $ do
    forM_ testData (\(canvas, rect, exp) -> drawRectangle canvas rect `shouldBe` exp)

-- the following line is optional for 8.2
main = hspec spec

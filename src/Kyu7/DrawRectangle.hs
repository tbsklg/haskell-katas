module Kyu7.DrawRectangle where

type Pixel = Char
type Canvas = [[Pixel]]
type Point = (Int, Int)
type Rectangle = (Point, Point)

drawRectangle :: Canvas -> Rectangle -> Canvas
drawRectangle c r = paintRectangle . zip [0 ..] $ c
  where
    paintRectangle [] = []
    paintRectangle (x : xs) = column (fst x, zip [0 ..] (snd x)) : paintRectangle xs
    column (r, []) = []
    column (r, (c, v) : vs)
      | isCorner = '*' : column (r, vs)
      | isHorizontalEdge = '-' : column (r, vs)
      | isVerticalEdge = '|' : column (r, vs)
      | otherwise = v : column (r, vs)
      where
        isCorner = isSameRow && isSameColumn
        isHorizontalEdge = isSameRow && isBetweenColumns
        isVerticalEdge = isSameColumn && isBetweenRows
        isSameRow = snd pointA == r || snd pointB == r
        isBetweenRows = r > snd pointA && r < snd pointB
        isSameColumn = c == fst pointA || c == fst pointB
        isBetweenColumns = c > fst pointA && c < fst pointB
    pointA = fst r
    pointB = snd r

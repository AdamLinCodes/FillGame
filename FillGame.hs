import Debug.Trace
type Board = [[Char]]

level1Board :: Board
level1Board = ["&&&&&&%%%&&&###", "&&&&&&%%%&&&###", "&&&&&&%%%&&&###", "&&&$$$%%%&&&###"]

displayBoard :: Board -> Board
displayBoard [] = ["End"]
displayBoard (h:t) = trace h displayBoard t

fillRight :: [Char] -> Char -> Char -> [Char]
fillRight [] _ _ = []
fillRight (h:t) c1 c2
  | h == c1 = c2 : (fillRight t c1 c2)
  | otherwise = (h:t)

fill :: Board -> Char -> Char -> Board
fill [] _ _ = []
fill (h:t) c1 c2
  | (head h) == c1 = (fillRight h c1 c2) : (fill t c1 c2)
  | otherwise = (h:t)
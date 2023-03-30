type Board = [[Char]]

level1Board :: Board
level1Board = ["&&&&&&%%%&&&###", "&&&&&&%%%&&&###", "&&&&&&%%%&&&###", "&&&&&&%%%&&&###"]

displayBoard :: Board -> IO ()
displayBoard [] = putStrLn ""
displayBoard (h:t) = do
  putStrLn h
  displayBoard t

fillRight :: [Char] -> Char -> Char -> [Char]
fillRight [] _ _ = []
fillRight (h:t) c1 c2
  | h == c1 = c2 : (fillRight t c1 c2)
  | otherwise = (h:t)

fillLeft :: [Char] -> Char -> Char -> [Char]
fillLeft [] _ _ = []
fillLeft (h:t) c1 c2
  | h == c1 = c2 : (fillLeft t c1 c2)
  | otherwise = (h:t)

fill :: Board -> Char -> Char -> Board
fill [] _ _ = []
fill (h:t) c1 c2
  | (head h) == c1 = (fillRight h c1 c2) : (fill t c1 c2)
  | otherwise = (h:t)

isFull :: Board -> Bool
isFull [] = True
isFull (h:t)
  | isFullRight h = isFull t
  | otherwise = False

isFullRight :: [Char] -> Bool
isFullRight (h:[s]) = h == s
isFullRight (h:t)
  | h == (head t) = isFullRight t
  | otherwise = False

loop :: Int -> Board -> IO ()
loop n board = do
  if isFull board then do 
    displayBoard board

    putStrLn "You win!"
    return () 

  else do
    displayBoard board

    putStrLn  "Fill with:"
    c <- getChar
    getChar

    if n == 10
      then do
        putStrLn "Game over"
        return () 
    else loop (n + 1) (fill board (head (head board)) c)

main :: IO ()
main = do
  loop 1 level1Board
  

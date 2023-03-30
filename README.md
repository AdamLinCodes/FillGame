# Fill Game
### Inspiration:
A while ago, on my BlackBerry Play book I had a game that was big grid of colours, and to win, you had to change the top left corner square's colour to grow your space.
For example...

**C** R G G R ` ` **R** **R** G G R `  ` **B** **B** G G R\
R R G R B `  `**R** **R** G R B `  ` **B** **B** G R R\
B B B B B `  `B B B B B `   ` **B** **B** **B** **B** **B**

... and so on, until the entire grid is a single colour. Since learning about other programming paradigms outside of OOP and imparative, I decided to recreate this game
using a functional programming language. I've been using Haskell a fair amount in the past couple months, and I strongly recommend trying to learn it if you struggle with
recursion as a topic. After having learned Haskell, I'll never be confused by recursion again!

### Steps to run:
1. Download and install Stack GHCI `https://docs.haskellstack.org/en/stable/install_and_upgrade/`

2. Navigate to the directory containing `FillGame.hs`

3. Type `stack ghci` in your terminal

4. Type `:l FillGame.hs` to load the file

5. Type `main` to run the main method

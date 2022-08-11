data Suit = Clubs | Diamonds | Spades | Hearts
    deriving (Show)
data Number = Ace
    | Two
    | Three
    | Four
    | Five
    | Six
    | Seven
    | Eight
    | Nine
    | Ten
    | Jack
    | Queen
    | King
    deriving (Show)

data Card = Card Suit Number deriving (Show)
type Hand = [Card]

hasWon :: Hand -> Bool
hasWon h = undefined

value :: Card -> Int
value (Card _ num) = case num of
    Ace -> 1
    Two -> 2
    Three -> 3
    Four -> 4
    Five -> 5
    Six -> 6
    Seven -> 7
    Eight -> 8
    Nine -> 9
    Ten -> 10
    Jack -> 11
    Queen -> 11
    King -> 11

drawCard :: Card -> Hand -> Hand
drawCard c h = c : h

playgame :: Hand -> IO ()
playgame h = do
    -- WHY DOES print $ sum (map value h) NOT WORK
    print $ sum (map value h)

main = do
    let h1 = [ Card Clubs Two, Card Diamonds Ten ]
    playgame h1
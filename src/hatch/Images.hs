--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lab: Getting started                                                       --
--------------------------------------------------------------------------------

module Images where

--------------------------------------------------------------------------------

import qualified Graphics.Gloss as Gloss 
    (blank, text, scale, 
        color, white, pictures
        , translate)
import Graphics.Gloss.Juicy
import System.IO.Unsafe
import Paths_hatch
import Layout
import Transforms

import Data.Maybe (fromMaybe)

--------------------------------------------------------------------------------

loadImage :: String -> Image
loadImage name = scale 0.1 $ Leaf $ png 
            $ unsafePerformIO 
            $ getDataFileName $ name ++ ".png"

png fname = fromMaybe (Gloss.text "PNG ERROR")
            $ unsafePerformIO 
            $ loadJuicyPNG fname

cat :: Image
cat = loadImage "cat"

dog :: Image
dog = loadImage "dog"

duck :: Image
duck = loadImage "duck"

goose :: Image
goose = loadImage "goose"

gale1 :: Image
gale1 = loadImage "gale1"

matt1 :: Image
matt1 = loadImage "matt1"

galeface :: Image
galeface = loadImage "galeface"

mattface :: Image
mattface = loadImage "mattface"

pentagram1 :: Image
pentagram1 = loadImage "pentagram"

pentagram2 :: Image
pentagram2 = loadImage "pentagram2"

white1 :: Image
white1 = loadImage "white"

godimg :: Image
godimg = loadImage "god"

blank :: Image
blank = Leaf $ Gloss.blank

text :: String -> Image
text t = Leaf $ Gloss.pictures [
            Gloss.translate x y 
                $ Gloss.color Gloss.white 
                $ Gloss.scale 0.2 0.2 
                $ Gloss.text t
            | x <- [-2..2]
            , y <- [-2..2]
        ]

--------------------------------------------------------------------------------
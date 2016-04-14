module Block where

import Basics exposing (..)
import Color exposing (Color)
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)

type alias Block = { color : Color }

size : Float
size = 25

toForm : Block -> Form
toForm block =
  let shape = square size
      border = outlined (solid Color.black) shape
  in group [filled block.color shape, border]

main : Element
main = collage 400 400 [toForm (Block Color.blue)]

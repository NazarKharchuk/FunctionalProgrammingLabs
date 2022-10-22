module Main where

import Prelude

import Data.List (List(..))
import Effect (Effect)
import Effect.Console (log)
import Lab1 as Lab1

main :: Effect Unit
main = do
  log "Lab 1(PureScript)\n"

  log "\tFunction #1"
  log "With arguments: 1"
  log $ show $ Lab1.singleton 1
  log "With arguments: 9"
  log $ show $ Lab1.singleton 9

  log "\tFunction #2"
  log "With arguments: empty list"
  log $ show $ Lab1.null Nil
  log "With arguments: [1]"
  log $ show $ Lab1.null (Cons 1 Nil)

  log "\tFunction #3"
  log "With arguments: empty list, 1"
  log $ show $ Lab1.snoc Nil 1
  log "With arguments: [1, 2], 3"
  log $ show $ Lab1.snoc (Cons 1 (Cons 2 Nil)) 3

  log "\tFunction #4"
  log "With arguments: empty list"
  log $ show $ Lab1.length Nil
  log "With arguments: [1, 2, 3]"
  log $ show $ Lab1.length (Cons 1 (Cons 2 (Cons 3 Nil)))


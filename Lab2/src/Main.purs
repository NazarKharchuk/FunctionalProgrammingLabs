module Main where

import Prelude

import Data.List (List(..), (:))
import Effect (Effect)
import Effect.Console (log)
import Lab2 as Lab2

main :: Effect Unit
main = do
  log "Lab 2\n"

  log "\tFunction #1"
  log "Function \"findIndex\" with arguments: (\\x -> x >= 2) (1 : 2 : 3 : 4 : Nil)"
  log $ show $ Lab2.findIndex (\x -> x >= 2) (1 : 2 : 3 : 4 : Nil)
  log "Function \"findIndex\" with arguments: (\\x -> x > 5) (1 : 2 : 3 : 4 : 5 : Nil)"
  log $ show $ Lab2.findIndex (\x -> x > 5) (1 : 2 : 3 : 4 : 5 : Nil)

  log "\tFunction #2"
  log "Function \"findLastIndex\" with arguments: (\\x -> x >= 2) (1 : 2 : 3 : 4 : Nil)"
  log $ show $ Lab2.findLastIndex (\x -> x >= 2) (1 : 2 : 3 : 4 : Nil)
  log "Function \"findLastIndex\" with arguments: (\\x -> x > 5) (1 : 2 : 3 : 4 : 5 : Nil)"
  log $ show $ Lab2.findLastIndex (\x -> x > 5) (1 : 2 : 3 : 4 : 5 : Nil)

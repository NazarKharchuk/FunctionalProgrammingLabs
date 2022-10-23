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

  log "\tFunction #3"
  log "Function \"zip\" with arguments: (\"one\" : \"two\" : \"three\" : Nil) (1 : 2 : 3 : Nil)"
  log $ show $ Lab2.zip ("one" : "two" : "three" : Nil) (1 : 2 : 3 : Nil)
  log "Function \"zip\" with arguments: (\"one\" : \"two\" : \"three\" : Nil) (1 : 2 : 3 : 4 : 5 : Nil)"
  log $ show $ Lab2.zip ("one" : "two" : "three" : Nil) (1 : 2 : 3 : 4 : 5 : Nil)

  log "\tFunction #4"
  log "Function \"unzip\" with arguments: zip((\"one\" : \"two\" : \"three\" : Nil) (1 : 2 : 3 : Nil))"
  log $ show $ Lab2.unzip (Lab2.zip ("one" : "two" : "three" : Nil) (1 : 2 : 3 : Nil))

  log "\tFunction #5"
  log "Function \"filter\" with arguments: (_ <= 4) (1 : 2 : 3 : 4 : 5 : 6 : Nil)"
  log $ show $ Lab2.filter (_ <= 4) (1 : 2 : 3 : 4 : 5 : 6 : Nil)

  log "\tFunction #6"
  log "Function \"filter2\" with arguments: (_ <= 4) (1 : 2 : 3 : 4 : 5 : 6 : Nil)"
  log $ show $ Lab2.filter (_ <= 4) (1 : 2 : 3 : 4 : 5 : 6 : Nil)

  log "\tFunction #7"
  log "Function \"take\" with arguments: 3 (1 : 2 : 3 : 4 : 5 : 6 : Nil)"
  log $ show $ Lab2.take 3 (1 : 2 : 3 : 4 : 5 : 6 : Nil)

  log "\tFunction #8"
  log "Function \"take\" with arguments: 3 (1 : 2 : 3 : 4 : 5 : 6 : Nil)"
  log $ show $ Lab2.take2 3 (1 : 2 : 3 : 4 : 5 : 6 : Nil)
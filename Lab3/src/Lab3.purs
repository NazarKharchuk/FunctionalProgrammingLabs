module Lab3 where

import Prelude (Unit, show, discard, (==), ($), (<), (>), (<=), (>=), (<>))
import Data.Eq (class Eq)
import Effect (Effect)
import Effect.Console (log)
import Data.Ord (class Ord, Ordering(..), compare)
import Data.Show (class Show)

data Maybe a = Nothing | Just a

instance eqMaybe :: Eq a => Eq (Maybe a) where
  eq Nothing Nothing = true
  eq (Just x) (Just y) = x == y
  eq _ _ = false

instance compareMaybe :: Ord a => Ord (Maybe a) where
  compare Nothing Nothing = EQ
  compare (Just a) (Just b) = compare a b
  compare _ Nothing = GT
  compare _ _ = LT

instance showMaybe :: Show a => Show (Maybe a) where
  show (Just a) = "(Just " <> (show a) <> ")"
  show _ = "Nothing"
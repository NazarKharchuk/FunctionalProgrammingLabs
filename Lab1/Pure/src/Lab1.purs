module Lab1 where

import Prelude
import Data.List (List(..))

singleton :: forall a. a -> List a
singleton a = (Cons a Nil)

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

snoc :: forall a. List a -> a -> List a
snoc Nil element = (Cons element Nil)
snoc (Cons first other) element = (Cons first (snoc other element))

length :: forall a. List a -> Int
length Nil = 0
length (Cons _ other) = 1 + length other
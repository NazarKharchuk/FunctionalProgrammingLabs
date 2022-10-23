module Lab2 where

import Prelude
import Data.List (List(..), (:))
import Data.Maybe (Maybe(..))

findIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findIndex f list = recursiveFindIndex f list 0
    where 
        recursiveFindIndex :: (a -> Boolean) -> List a -> Int -> Maybe Int
        recursiveFindIndex function (x : xs) integer
            | (function x) = (Just integer)
            | otherwise = recursiveFindIndex f xs (integer + 1)
        recursiveFindIndex function Nil integer = Nothing
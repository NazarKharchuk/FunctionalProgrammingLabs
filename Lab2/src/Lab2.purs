module Lab2 where

import Prelude
import Data.List (List(..), (:), reverse, length)
import Data.Maybe (Maybe(..), isNothing, fromMaybe)
import Data.Tuple (Tuple(..))

findIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findIndex f list = recursiveFindIndex f list 0
    where 
        recursiveFindIndex :: (a -> Boolean) -> List a -> Int -> Maybe Int
        recursiveFindIndex function (x : xs) integer
            | (function x) = (Just integer)
            | otherwise = recursiveFindIndex f xs (integer + 1)
        recursiveFindIndex function Nil integer = Nothing

findLastIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findLastIndex f list = 
    let findedIndex = (findIndex f (reverse list)) in
    if (isNothing findedIndex) then Nothing else Just ((length list) - 1 - (fromMaybe 0 findedIndex))

zip :: forall a b. List a -> List b -> List (Tuple a b)
zip _ Nil = Nil
zip Nil _ = Nil
zip (a : as) (b : bs) = ((Tuple a b) : (zip as bs))
zip Nil Nil = Nil

unzip :: forall a b. List (Tuple a b) -> Tuple (List a) (List b)
unzip tupleList = (Tuple (createList tupleList (\(Tuple one _) -> one)) (createList tupleList (\(Tuple _ two) -> two)))
    where 
        createList :: forall a_or_b. List (Tuple a b) -> ((Tuple a b) -> a_or_b) -> List a_or_b
        createList (x : xs) f = ((f x) : (createList xs f))
        createList Nil _ = Nil

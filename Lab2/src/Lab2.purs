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

filter :: forall a. (a -> Boolean) -> List a -> List a
filter f (x : xs) = if (f x) then (x : (filter f xs)) else (filter f xs)
filter _ Nil = Nil

filter2 :: forall a. (a -> Boolean) -> List a -> List a
filter2 f list = (reverse (listBeforeRevers f list Nil))
    where
        listBeforeRevers :: forall a. (a -> Boolean) -> List a -> List a -> List a
        listBeforeRevers f (x : xs) newList =  if (f x) then (listBeforeRevers f xs (x : newList)) else (listBeforeRevers f xs newList)
        listBeforeRevers _ _ newList = newList

take :: forall a. Int -> List a -> List a
take 0 _ = Nil 
take _ Nil = Nil 
take digit (x : xs) = if (digit > 0) then (x : (take (digit - 1) xs)) else Nil

take2 :: forall a. Int -> List a -> List a
take2 d list = (reverse (listBeforeRevers d list Nil))
    where
        listBeforeRevers :: forall a. Int -> List a -> List a -> List a
        listBeforeRevers 0 _ newList = newList 
        listBeforeRevers _ Nil newList = newList 
        listBeforeRevers digit (x : xs) newList = if (digit > 0) then (listBeforeRevers (digit - 1) xs (x : newList)) else newList

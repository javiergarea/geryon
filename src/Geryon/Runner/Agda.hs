module Geryon.Runner.Agda where

data TypeCheckResult a = Success
                        | Error a
                        deriving (Eq, Show)

typeCheck :: a -> TypeCheckResult a
typeCheck _a = undefined

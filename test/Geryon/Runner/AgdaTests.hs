module Geryon.Runner.AgdaTests (agdaTests) where

import           Geryon.Runner.Agda

import           Test.Tasty
import           Test.Tasty.HUnit


agdaTests :: TestTree
agdaTests = testGroup "Agda"
    [
        successTypeCheck
        , errorTypeCheck
    ]

successTypeCheck :: TestTree
successTypeCheck = testCase "correct type-check" $
    assertEqual "should return Success" Success (typeCheck 1)

errorTypeCheck :: TestTree
errorTypeCheck = testCase "wrong type-check" $
    assertEqual "should return Error" (Error 0) (typeCheck 0)

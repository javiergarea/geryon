import Test.Tasty

import Geryon.Runner.AgdaTests

main :: IO ()
main = defaultMain testSuite

testSuite :: TestTree
testSuite = testGroup "allTests"
    [
        agdaTests
    ]

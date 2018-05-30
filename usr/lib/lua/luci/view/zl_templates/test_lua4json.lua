json = require("json")
testString = [[ { "one":1 , "two":2, "primes":[2,3,5,7] } ]]
decoded = json.decode(testString)
table.foreach(decoded, print)
print ("Primes are:")
table.foreach(decoded.primes,print)


print("the type of this string is: " .. type("hey"))

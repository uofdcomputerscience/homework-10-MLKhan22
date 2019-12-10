import Foundation

// Implement an Error type. Make sure it has at least two values.
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

// Implement a function that returns a Result of string or your error type

func stockedOrNot(value: Int) -> Result<String, Error> {
    if (value < 5) {
        return .success("We Are Stocked")
    }
    return .failure(VendingMachineError.outOfStock)
}

// Call your function in a way that will return an error result, and handle that error.

let result = stockedOrNot(value: 6)
switch result {
case .success(let string):
    print("string: \(string)")
case .failure(let error):
    print("err0r: \(error)")
}


// Call your function in a way that will return a success result, and handle the value.

let result2 = stockedOrNot(value: 4)
switch result2 {
case .success(let string):
    print("string: \(string)")
case .failure(let error):
    print("err0r: \(error)")
}

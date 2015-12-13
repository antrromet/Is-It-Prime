//: Playground - noun: a place where people can play

import UIKit

var num = 12

var isPrime = true

for var i=2;i<=num/2;i++ {
    if num%i == 0 {
        isPrime = false
        break
    }
}
print(isPrime)

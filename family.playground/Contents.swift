import UIKit

let family = ["Ahmed", "Ikrami", "Heba", "Aml"]
print(family.count)
var evenNumber = [2,4,6,8,10,12]

evenNumber.remove(at: 1)
evenNumber += [16,18,20,22]

print(evenNumber.randomElement())
evenNumber.removeAll()

var numbers = [1,2,3,4,5]

for i in numbers{
    print(i)
}

numbers.append(6)
numbers.append(7)
numbers.append(8)
numbers.append(9)
numbers.append(10)

for i in numbers{
    print(i)
}

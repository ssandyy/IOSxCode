import Foundation


//inout  and <T>


func SwappingUsingVariable(a: inout Int, b: inout Int) {
    var temp = a
    a = b
    b = temp
}
var num1 = 100
var num2 = 200

print("Number before swapping num1 = \(num1)  num2=\(num2)")

SwappingUsingVariable(a: &num1, b: &num2)
print("Number before swapping num1 = \(num1)  num2=\(num2)")

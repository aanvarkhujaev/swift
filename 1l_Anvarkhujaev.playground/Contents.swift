
import Cocoa

let E = "x^2+14x+45=0"
let a = 2
let b = 14
let c = 45
let D = b * b - 4 * a * c
let x1 = (-Double(b) + sqrt((Double)(D)))/(Double)(2 * a)
let x2 = (-Double(b) - sqrt((Double)(D)))/(Double)(2 * a)
print("У уравнения ",E," два корня ",x1, " и ",x2)



let a1 : Double = 3
let b1 : Double = 4
let s = (a * b) / 2
let c1 = sqrt(a1*a1+b1*b1)
let p = a1 + b1 + c1
print("")




var deposit : Double = 1180
var percent : Double = 2

for _ in 1...5{
    deposit = deposit * (1 + percent / 100);
}
print(Double(round(deposit)))

import Cocoa
var deposit : Double = 1180
var percent : Double = 2

for _ in 1...5{
    deposit = deposit * (1 + percent / 100);
}
print(Double(round(deposit)))

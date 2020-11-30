import Cocoa

var str = "Hello, playground"
//1 - задание
let a = 22
if (a%2==0) {
    print(a, "это число четное")
}else{
    print(a, "число нечетное")
}
func isEven(a:Int){
    if (a%2==0) {
        print(a, "это число четное")
    }else{
        print(a, "число нечетное")
    }
}
isEven(a : a)


//2 - задание
let b = 16
if (b%3==0){
    print(b, "число делится на 3 без остатка")
} else{
    print(b, "число не делится на 3 без остатка")
}
func isTriple(b:Int){
    if (b%3==0){
        print(b, "число делится на 3 без остатка")
    } else{
        print(b, "число не делится на 3 без остатка")
    }
}
isTriple(b: b)

//3 - 4 - задание
var numbers : [Int] = []

for i in 20...120 {
    numbers.append(i)
}
for value in numbers
{
    if ((value % 2) == 0 || (value % 3) != 0)
    {
        numbers.remove(at: numbers.firstIndex(of: value)!)
    }
}
print(numbers)


//5 - задание
var fibonachi = [1,1]
func Fibon(arr:Array<Int>) -> Int{
    let posled = arr.count - 1
    let predposled = arr.count - 2
    let item = arr[posled] + arr[predposled]
    return item
}

for _ in 1...50{
    fibonachi.append(Fibon(arr: fibonachi))
}
print(fibonachi)

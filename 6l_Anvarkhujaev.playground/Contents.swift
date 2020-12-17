import Cocoa
import Foundation

var stringArray = ["a","b","c","d","e"]
var DoubleArray = [20.5, 42.7, 12.8]
var intArray = [32,23,3,90]

protocol Sortable{
    var name: String { get set }
}

class Girei: Sortable{
    var name: String
    init(name: String) {
        self.name = name
    }
    
}

class Queue<P: Sortable>{
    private var items: [P] = []
    
    func enQueue (_ item: P){
        items.append(item)
    }
    func deQueue () -> P?{
        if items.isEmpty{
            return nil
        }
        else{
            let templeItem = items.first
            items.remove(at: 0)
            return templeItem
        }
    }
    
    func Filter(){
        let jName = items.filter {$0.name.hasPrefix("J")}
        for index in jName {
            print(index.name)
        }
    }
    
    subscript(index: Int) -> Int?{
        if(index > items.count || index < 0){
            return nil
        }else{
            return index
        }
    }
}

let object1 = Queue<Girei>()
object1.enQueue(Girei(name: "Jasur"));
object1.enQueue(Girei(name: "Juraiya"));
object1.enQueue(Girei(name: "Azamat"));
object1.Filter();
print(object1[4] as Any)
print(object1[-2] as Any)
print(object1[0] as Any)

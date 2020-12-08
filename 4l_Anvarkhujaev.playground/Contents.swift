import Cocoa
import SwiftUI

enum door{
    case open, close
}
enum window{
    case open, close
}
enum engine{
    case star, stop
}
enum carcase{
    case open, close, special
}
enum luke{
    case open, close
}

class car {
    let brand : String
    let color : Color
    var door: door
    var window : window
    var engine: engine
    var km: Double
    var currentspeed: Double
    init(brand: String, door: door, window: window, engine: engine, km: Double, currentspeed: Double, color: Color){
        self.brand = brand
        self.color = color
        self.door = door
        self.window = window
        self.engine = engine
        self.km = km
        self.currentspeed = currentspeed
    }
    func printElements(){
        print(
            self.brand, "=",
            self.color, ",",
            self.currentspeed, ",",
            self.door, ",",
            self.engine, ",",
            self.km, ",",
            self.window
        )
    }
}

class trunkCar: car{
    var cargo: Int
    var carcase: carcase
    init(brand: String, door: door, window: window, engine: engine, km: Double, currentspeed : Double, color: Color, cargo : Int, carcase : carcase) {
        
        self.cargo = cargo
        self.carcase = carcase
        
        super.init(brand: brand, door: door, window: window, engine: engine, km: km, currentspeed: currentspeed, color: color)
    }
    override func printElements(){
        print(
            self.brand, "=",
            self.carcase, ",",
            self.cargo, ",",
            self.color, ",",
            self.currentspeed, ",",
            self.door, ",",
            self.engine, ",",
            self.km, ",",
            self.window
        )
    }
}

let gazel = trunkCar(brand: "Газель", door: .close, window: .open, engine: .star, km: 305, currentspeed: 70, color: .green, cargo: 150, carcase: .special)
gazel.printElements()


class sportCar: car{
    var seats: Int
    var luke: luke
    init(brand: String, door: door, window: window, engine: engine, km: Double, currentspeed: Double, color: Color, seats: Int, luke: luke) {
        self.seats = seats
        self.luke = luke
        
        super.init(brand: brand, door: door, window: window, engine: engine, km: km, currentspeed: currentspeed, color: color)
    }
    override func printElements(){
        print(
            self.brand, "=",
            self.seats, ",",
            self.luke, ",",
            self.color, ",",
            self.currentspeed, ",",
            self.door, ",",
            self.engine, ",",
            self.km, ",",
            self.window
        )
    }
}
let cobalt = sportCar(brand: "Кобальт", door: .open, window: .close, engine: .star, km: 30500, currentspeed: 100, color: .gray, seats: 5, luke: .open)
cobalt.printElements()

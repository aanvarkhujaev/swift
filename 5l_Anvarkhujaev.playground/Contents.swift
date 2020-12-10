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



protocol car {
    var brand: String {get set}
    var color: Color {get set}
    var door: door {get set}
    var window: window {get set}
    var engine: engine {get set}
    var km: Double {get set}
    var speed: Double { get set}
}
extension car{
    mutating func doorState(doorState: door){
        self.door = doorState
        print(self.door)
    }
    mutating func windowState(windowState: window){
        self.window = windowState
        print(self.window)
    }
    mutating func engineState(engineState: engine){
        self.engine = engineState
        print(self.engine)
    }
}

class trunkCar: car{
    
    var brand: String
    
    var color: Color
    
    var door: door
    
    var window: window
    
    var engine: engine
    
    var km: Double
    
    var speed: Double
    
    var cargo: Int
    
    var carcase: carcase
    
    init(brand: String, door: door, window: window, engine: engine, km: Double, speed: Double, color: Color, cargo: Int, carcase: carcase) {
        self.brand = brand
        self.color = color
        self.door = door
        self.window = window
        self.engine = engine
        self.km = km
        self.speed = speed
        self.cargo = cargo
        self.carcase = carcase
    }
}

extension trunkCar: CustomStringConvertible{
    var description: String {
        return "\(brand), \(color),\(door),\(window),\(engine),\(km),\(speed),\(cargo),\(carcase)"
    }
    
    func changeCarcase(newCarcase: carcase){
        self.carcase = newCarcase
        print(self.carcase)
    }
    
    func changeCargo(newCargo: Int){
        self.cargo = newCargo
        print(self.cargo)
    }
}

class sportCar: car{
    
    var brand: String
    
    var color: Color
    
    var door: door
    
    var window: window
    
    var engine: engine
    
    var km: Double
    
    var speed: Double
    
    var seats: Int
    
    var luke: luke
    
    init(brand: String, door: door, window: window, engine: engine, km: Double, speed: Double, color: Color, seats: Int, luke: luke) {
        self.brand = brand
        self.color = color
        self.door = door
        self.window = window
        self.engine = engine
        self.km = km
        self.speed = speed
        self.seats = seats
        self.luke = luke
    }
}

extension sportCar: CustomStringConvertible{
    var description: String{
        return "\(brand), \(color),\(door),\(window),\(engine),\(km),\(speed),\(seats),\(luke)"
    }
    func changeSeats(newSeats: Int){
        self.seats = newSeats
        print(self.seats)
    }
    func changeLuke(newLuke: luke){
        self.luke = newLuke
        print(self.luke)
    }
}

let volvo = trunkCar(brand: "Газель", door: .close, window: .open, engine: .star, km: 305, speed: 70, color: .green, cargo: 150, carcase: .special)

let chevrolet = sportCar(brand: "Tahoe", door: .close, window: .close, engine: .star, km: 50678, speed: 140, color: .black, seats: 7, luke: .open)

chevrolet.changeLuke(newLuke: .open)
chevrolet.changeSeats(newSeats: 8)
volvo.changeCarcase(newCarcase: .special)
volvo.changeCargo(newCargo: 220)


print(volvo)
print(chevrolet)

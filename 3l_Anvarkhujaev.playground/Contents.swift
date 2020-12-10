import Cocoa

enum engineSwitcher: String{
    case star, stop
}

enum windowSwitcher: String{
    case open, close
}

struct SportCar{
    var brand : String
    var year : Double
    var trunkVolume : Double
    var engine : engineSwitcher
    var window : windowSwitcher

    mutating func startEngine(){
        self.engine = .star
    }
}

struct TrunkCar{
    var brand : String
    var year : Double
    var bodyVolume : Double
    var engine : engineSwitcher
    var window : windowSwitcher
    
    mutating func windowOpen(){
        self.window = .open
    }
}

var bmw = SportCar(brand: "BMW X6", year: 2018, trunkVolume: 4.4, engine: .star, window: .close)

print(bmw)

print(bmw.engine)

var bmw2 = engineSwitcher.star
var bmw3 = bmw2
bmw2 = .stop
print(bmw2)

var man = TrunkCar(brand: "MAN TGS", year: 2020, bodyVolume: 15, engine: .stop, window: .close)

print(man)

print(man.year)














//var chevroletCobalt = SportCar (brand: "Cobalt", year: 2016, trunkVolume: 1485, engine: .on, window: .close)
//print(chevroletCobalt)
//
//
//var chevroletTahoe = TrunkCar (brand: "Tahoe", year: 2020, bodyVolume: 2682, engine: .off, window: .open)
//print(chevroletTahoe)
//
//chevroletCobalt.zavad(zState: .off)
//print(chevroletCobalt.engine)
//
//chevroletCobalt.zavad(zState: .on)
//print(chevroletCobalt.engine)
//
//chevroletTahoe.okno(oState: .close)
//print(chevroletTahoe.window)
//
//chevroletTahoe.okno(oState: .open)
//print(chevroletTahoe.window)

import Cocoa

enum engineSwitcher{
    case on, off
}

enum windowSwitcher{
    case open, close
}

struct SportCar{
    var brand : String
    var year : Double
    var trunkVolume : Double
    var engine : engineSwitcher
    var window : windowSwitcher
    mutating func zavad(zState: engineSwitcher){
        self.engine = zState
    }
}

struct TrunkCar{
    var brand : String
    var year : Double
    var bodyVolume : Double
    var engine : engineSwitcher
    var window : windowSwitcher
    mutating func okno(oState: windowSwitcher){
        self.window = oState
    }
}



var chevroletCobalt = SportCar (brand: "Cobalt", year: 2016, trunkVolume: 1485, engine: .on, window: .close)
print(chevroletCobalt)


var chevroletTahoe = TrunkCar (brand: "Tahoe", year: 2020, bodyVolume: 2682, engine: .off, window: .open)
print(chevroletTahoe)

chevroletCobalt.zavad(zState: .off)
print(chevroletCobalt.engine)

chevroletCobalt.zavad(zState: .on)
print(chevroletCobalt.engine)

chevroletTahoe.okno(oState: .close)
print(chevroletTahoe.window)

chevroletTahoe.okno(oState: .open)
print(chevroletTahoe.window)

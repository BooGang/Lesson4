//
//  main.swift
//  Lesson4
//
//  Created by Air on 16.03.2021.
//

import Foundation

enum Engine {
    case start, over
}
enum Window {
    case open, close
}
enum Luggage: String {
    case fill = "загрузить"
    case upload = "выгрузить"
}
class Car {
    let brand: String
    let year: String
    let baggage: String
    var engine: Engine
    var window: Window
    var fullemptyBaggage: Luggage
    
    init(brand: String, ago: String, bagg: String, enin: Engine, wind: Window, feBaggage: Luggage){
        self.brand = brand
        self.year = ago
        self.baggage = bagg
        self.engine = enin
        self.window = wind
        self.fullemptyBaggage = feBaggage
    }
    func emptyWindow(to: Window) {}
    func emptyEngine(to: Engine) {}
    
    func printDetails() {
        print(self.fullemptyBaggage.rawValue)
    }
    
}

enum AnotherTruck: String {
    case big = "66-дюймовые"
    case small = "40-дюймовые"
}
enum AnotherSport {
    case have, havennot
}

class TruckCar: Car {
    static var carCount = 0
    var otherProperty: AnotherTruck
    init(brand: String, ago: String, bagg: String, enin: Engine, wind: Window, feBaggage: Luggage, otherProperty: AnotherTruck) {
        self.otherProperty = otherProperty
        super.init(brand: brand, ago: ago, bagg: bagg, enin: enin, wind: wind, feBaggage: feBaggage)
        TruckCar.carCount += 1
    }
    func printInfo(Car: TruckCar) {
        print("----------------------------")
        print("Марка: \(Car.brand)")
        print("Год: \(Car.year)")
        print("Вместимость: \(Car.baggage)")
        
        switch Car.engine {
        case.start:
            Swift.print("Двигатель запущен")
        default:
            Swift.print("Двигатель выключен")
        }
        print("Окна \(Car.window == .open ? "открыты" : "закрыты")")
        print("Багажник нужно \(Car.fullemptyBaggage.rawValue)")
        print("Колёса: \(Car.otherProperty.rawValue)")
    }
    func alarmON(){
        engine = .start
        window = .close
    }
    func alarmOFF(){
        engine = .over
        window = .open
    }
   
    override func emptyWindow(to: Window) {
        window = .close
    }
    override func emptyEngine(to: Engine) {
        engine = .start
    }
    
    static func carCountInfo(){
        print("Выпущено внедорожников: \(TruckCar.carCount)")
    }
}
class SportCar: Car {
    static var carCount = 0
    var otherProperty: AnotherSport
     init(brand: String, ago: String, bagg: String, enin: Engine, wind: Window, feBaggage: Luggage, otherProperty: AnotherSport) {
        self.otherProperty = otherProperty
        super.init(brand: brand, ago: ago, bagg: bagg, enin: enin, wind: wind, feBaggage: feBaggage)
        SportCar.carCount += 1
     }
        func printInfo(Car: SportCar) {
            print("----------------------------")
            print("Марка: \(Car.brand)")
            print("Год: \(Car.year)")
            print("Вместимость: \(Car.baggage)")
            
            switch Car.engine {
            case.start:
                Swift.print("Двигатель запущен")
            default:
                Swift.print("Двигатель выключен")
            }
            print("Окна \(Car.window == .open ? "открыты" : "закрыты")")
            print("Багажник нужно \(Car.fullemptyBaggage.rawValue)")
            print("Открывающаяся крыша: \(Car.otherProperty == .have ? "есть" : "нет")")
        }
        
       
        
    func alarmON(){
        engine = .start
        window = .close
    }
    func alarmOFF(){
        engine = .over
        window = .open
    }
   
    override func emptyWindow(to: Window) {
        window = .open
    }
    override func emptyEngine(to: Engine) {
        engine = .over
    }
   
    static func carCountInfo(){
        print("Выпущено спорткаров: \(SportCar.carCount)")
    }
}


var car1 = SportCar(brand: "BMW", ago: "2002 год", bagg: "347 литров", enin: .start, wind: .close, feBaggage: .fill, otherProperty: .have)
var car2 = TruckCar(brand: "Honda", ago: "2000 год", bagg: "400 литров", enin: .over, wind: .open, feBaggage: .upload, otherProperty: .big)
var car3 = TruckCar(brand: "Caddilac", ago: "2020", bagg: "500 литров", enin: .over, wind: .close, feBaggage: .upload, otherProperty: .small)
var car4 = SportCar(brand: "Tesla", ago: "2016", bagg: "200 литров", enin: .start, wind: .close, feBaggage: .fill, otherProperty: .have)
car1.printInfo(Car: car1)
car2.printInfo(Car: car2)
car3.printInfo(Car: car3)
car4.printInfo(Car: car4)
print("______________")
SportCar.carCountInfo()
TruckCar.carCountInfo()
//изменения




import UIKit

var greeting = "Hello, playground"


protocol Car {
    var name : String { get set }
    var wheel : Int {get set}
    var speed : Int {get set}
    func calculateHours(kilometer : Int) -> Int
}

class BMW : Car {
    var speed = 50
    
    var name = "BMW"
    
    var wheel = 4
    
    func calculateHours(kilometer : Int) -> Int {
        return kilometer/speed
    }
}

class Mercedes : Car {
    var name = "Mercedes"
    
    var wheel = 4
    
    var speed = 100
    
    func calculateHours(kilometer: Int) -> Int {
        return kilometer/speed
    }
    
    
}

func returnCarInfo(_ car : Car) {
    print("\(car.name)'s speed is \(car.speed).Wheel count's is \(car.wheel). The \(car.name) travels 600 kilometers in \(car.calculateHours(kilometer: 600)).")
}

let mercedes = Mercedes()
let bmw = BMW()

returnCarInfo(bmw)
returnCarInfo(mercedes)

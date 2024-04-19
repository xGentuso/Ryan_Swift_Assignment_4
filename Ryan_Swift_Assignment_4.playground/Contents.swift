
import Foundation

protocol Trailer {
    var brand: String { get }
    func startEngine()
    func stopEngine()
}


protocol ElectricitySystem {
    var batteryLevel: Double { get }
    func chargeBattery()
    func checkBatteryLevel()
}

class Camper: Trailer, ElectricitySystem {
    var brand: String
    var batteryLevel: Double
    var engineOn: Bool

    init(brand: String, batteryLevel: Double) {
        self.brand = brand
        self.batteryLevel = batteryLevel
        self.engineOn = false
    }

    func startEngine() {
            if !engineOn {
                print("Starting the \(brand) engine.")
                engineOn = true
                batteryLevel -= 1
            } else {
                print("Engine is already on.")
            }
        }

        func stopEngine() {
            if engineOn {
                print("Stopping the \(brand) engine.")
                engineOn = false
            } else {
                print("Engine is already off.")
            }
        }

    func adjustBatteryWhileOn() {
            if batteryLevel > 0 {
                batteryLevel -= 1.5
                print("Battery level decreased. Current level: \(batteryLevel)")
            } else {
                print("Battery is dead.")
            }
        }

    func chargeBattery() {
        batteryLevel += 5
           batteryLevel = min(batteryLevel, 100)
           print("Charging the battery of \(brand). Current level: \(batteryLevel)")
       }
    
    func checkBatteryLevel() {
        print("Checking battery level of \(brand). Current level: \(batteryLevel)")
    }
}

let thisCamper = Camper(brand: "Nomad's Nest", batteryLevel: 100.0)
thisCamper.startEngine()
thisCamper.adjustBatteryWhileOn()
thisCamper.adjustBatteryWhileOn()
thisCamper.adjustBatteryWhileOn()
thisCamper.adjustBatteryWhileOn()
thisCamper.adjustBatteryWhileOn()
thisCamper.checkBatteryLevel()
thisCamper.stopEngine()
thisCamper.chargeBattery()
thisCamper.checkBatteryLevel()
thisCamper.startEngine()
thisCamper.adjustBatteryWhileOn()
thisCamper.adjustBatteryWhileOn()
thisCamper.adjustBatteryWhileOn()
thisCamper.adjustBatteryWhileOn()
thisCamper.adjustBatteryWhileOn()
thisCamper.checkBatteryLevel()
thisCamper.stopEngine()
thisCamper.chargeBattery()
thisCamper.checkBatteryLevel()


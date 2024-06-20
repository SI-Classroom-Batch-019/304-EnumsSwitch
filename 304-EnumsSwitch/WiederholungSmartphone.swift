//
//  WiederholungSmartphone.swift
//  304-EnumsSwitch
//
//  Created by Marianne Leal on 20.06.24.
//

import Foundation

struct Smartphone {
    let brand: String
    let model: String
    var batteryLevel: Int {
        didSet {
            if batteryLevel > 100 {
                batteryLevel = 100
            } else if batteryLevel < 0 {
                batteryLevel = 0
            }
            print("Der Batteriestand von \(brand) \(model) beträgt nun \(batteryLevel)%.")
        }
    }
    
    var batteryStatus: String {
        get {
            if batteryLevel > 80 {
                return "Batterie voll geladen"
            } else if batteryLevel > 20 {
                return "Batteriestand mittel"
            } else {
                return "Batteriestand niedrig"
            }
        }
        set  {
            switch newValue {
            case "Batterie voll geladen":
                batteryLevel = 100
            case "Batteriestand mittel":
                batteryLevel = 50
            case "Batteriestand niedrig":
                batteryLevel = 20
            default:
                print("Unbekannter Status")
            }
        }
    }
    
    var _owner: String
    var owner: String{
        get{
            return _owner
        }
        set{
            print("Nutzer gewechselt zu \(newValue)")
            _owner = newValue
        }
    }

    // Initializer
    init(brand: String, model: String, batteryLevel: Int, owner: String) {
        self.brand = brand
        self.model = model
        self.batteryLevel = min(max(batteryLevel, 0), 100)  // Sicherstellen, dass der initiale Batteriestand zwischen 0 und 100 liegt
        self._owner = owner
    }

    // Methode zum Aufladen des Smartphones
    mutating func chargeBattery(by amount: Int) {
        batteryLevel += amount
    }

    // Methode zum Benutzen des Smartphones, was die Batterie entlädt
    mutating func useBattery(by amount: Int) {
        batteryLevel -= amount
    }
}




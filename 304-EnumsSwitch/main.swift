//
//  main.swift
//  304-EnumsSwitch
//
//  Created by Marianne Leal on 20.06.24.
//

import Foundation
// Verwendung
var myPhone = Smartphone(brand: "Apple", model: "iPhone 14", batteryLevel: 75)
// Wiederholung: Smartphone Struct
print(myPhone.batteryStatus)  // Output: Mittel
myPhone.useBattery(by: 30)  // Output: Der Batteriestand von Apple iPhone 14 beträgt nun 45%.
print(myPhone.batteryStatus)  // Output: Mittel
myPhone.chargeBattery(by: 60)  // Output: Der Batteriestand von Apple iPhone 14 beträgt nun 100%.
print(myPhone.batteryStatus)  // Output: Voll geladen
myPhone.batteryStatus = "niedrig"  // Output: Der Batteriestand von Apple iPhone 14 beträgt nun 20%.
print(myPhone.batteryLevel)  // Output: 20














// Enums
enum Himmelsrichtung {
    case nord
    case ost
    case süd
    case west
}

// anlegen ohne Datentyp: Enum.case
var westRichtung = Himmelsrichtung.nord

// Kurzschreibweise, nachdem es einmal angelegt wurde
westRichtung = .west

// Kurzschreibweise, mit explizit angegebenem Datentyp
var zweiteHimmelsrichtung: Himmelsrichtung = .ost

// Beispiel 2: Ampel
enum Ampel {
    case rot
    case gelb
    case grün
}

var aktuellesLicht = Ampel.rot

// alternative, kurze Schreibweise: nicht einzelne cases, nur 1x case und dann werte durch ein , trennen

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

enum Monat {
    case januar, feb, mar, april, mai, jun, jul, aug, sep, okt, nov, dez
}

var ersterMonat: Monat = .januar

// Enum zB mit if-else benutzen:
func richtungsGeber(richtung: Himmelsrichtung){
    if richtung == .ost {
        print("Gehe nach Osten..")
        // irgendein krasser Funktionsaufruf, der zB die oestliche Seite einer Karte anzeigt
    } else if richtung == .west {
        print("Gehe nach Westen...")
    }
    
}

richtungsGeber(richtung: zweiteHimmelsrichtung)

print(Himmelsrichtung.ost)


// Switch Case mit Variable
let zahl: Int = 3

switch zahl {
case 1:
    print("Die Zahl ist 1")
case 2:
    print("Die Zahl ist 2")
case 3:
    print("Die Zahl ist 3")
default:
    print("Die Zahl ist nicht 1, 2 oder 3")
}


// Switch Case mit Range
// Wiederholung Range: zufällige Zahl

var random: Int = Int.random(in: 1...1000)
print(random)

switch random {
case 1...50:
    print("Du bist mit \(random)in der unteren Hälfte")
case 51...100:
    print("Du bist mit \(random) in der oberen Hälfte")
default:
    print("Du bist nicht zwischen 1 und 100, sondern bei \(random)...")
}



// Switch Case mit Enum

let aktuelleRichtung = Himmelsrichtung.ost

switch aktuelleRichtung {
    case .nord:
        print("Gehe nach Norden")
    case .ost:
        print("Gehe nach Osten")
    // statt alle Fälle abzudecken: default nutzen. geht theoretisch, nicht immer sinnvoll
    default:
        print("Default Fall: Dies ist nicht Nord oder Ost...")
}


